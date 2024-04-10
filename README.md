# CFD-Benchmark

## Overview
This repository showcases a performance benchmark between the Dynex Neuromorphic Network and NVIDIA H100 with 80 GB of VRAM, focusing on Computational Fluid Dynamics (CFD) simulations of an F-16 Jet. The Dynex Neuromorphic Network is a decentralized supercomputing platform that leverages GPUs from miners to simulate quantum-based computing within a blockchain environment, using "Dynexchip." Due to its quantum nature, Dynex does not support direct CFD computation, requiring the conversion of the CFD problem into the Harrow-Hassidim-Lloyd (HHL) problem for computation across different timestamps and cell numbers.

## Prerequisites
To use the Dynex platform, follow these steps:
1. Register an account on the Dynex Marketplace: [live.dynexcoin.org](https://live.dynexcoin.org)
2. Download the `dynex.ini` configuration file.
3. Install the DynexSDK in Python:
   ```bash
   pip install dynex
   ```
4. Test your installation:
   ```python
   import dynex
   dynex.test()
   ```
   Ensure you have enough balance to cover the computation fees.

For NVIDIA H100 simulations, no special setup is required beyond having the hardware and necessary software environment.

## Quantum Computational Fluid Dynamics (QCFD)
1. Download QCFD from [Dynexcoin/QCFD](https://github.com/dynexcoin/QCFD) and read the documentation to understand how to proceed.
2. Use the QCFDPlugin (available in the QCFD repository) to convert OpenFOAM cases into the LLH format:
   ```python
   from QCFDPlugin import QCFDPlugin
   import numpy as np
   from QCFD import QCFD

   casePath = "."  # The path to your OpenFOAM case files
   extractor = QCFDPlugin(casePath)
   fieldName = "U"  # The field name, e.g., velocity
   t = "0"  # Timestamp
   A, b = extractor.export(t, fieldName)
   ```
3. Compute the problem on Dynex:
   ```python
   qcfd = QCFD()
   qcfd.compute(A, b, compute='dynex')
   ```
   Note: Post-processing of output should be done using any standard CFD software/platform as Dynex does not support post-processing. Tools like SimFlow can be used for this purpose.

## Running CFD with NVIDIA H100
You can run direct CFD simulations with NVIDIA H100 using SimpleFoam. Additionally, for a quantum approach using GPU acceleration, follow this example:
1. Install CuPy for GPU-accelerated computing:
   ```bash
   pip install cupy
   ```
2. Implement your simulation code. For example:
  ```python
def initFields(matrixSize):
    print("Initializing velocity, pressure, and temperature fields...")
    velocityField = cp.random.rand(matrixSize, matrixSize, 2).astype('float32')
    pressureField = cp.random.rand(matrixSize, matrixSize).astype('float32')
    temperatureField = cp.random.rand(matrixSize, matrixSize).astype('float32')
    return velocityField, pressureField, temperatureField

def calcTKE(velocityField):
    print("Calculating Turbulent Kinetic Energy (TKE)...")
    tke = 0.5 * cp.sum(cp.square(velocityField), axis=2)
    return tke

def updateBoundaryConditions(velocityField, pressureField, temperatureField, matrixSize):
    print("Updating boundary conditions for all fields...")
    velocityField[:, 0, :] = 0  # left wall
    velocityField[:, -1, :] = 0  # right wall
    velocityField[0, :, :] = 0  # top wall
    velocityField[-1, :, :] = 0  # bottom wall
    pressureField[:, 0] = pressureField[:, 1]  # left boundary
    pressureField[:, -1] = pressureField[:, -2]  # right boundary
    pressureField[0, :] = pressureField[1, :]  # top boundary
    pressureField[-1, :] = pressureField[-2, :]  # bottom boundary

    temperatureGradient = (temperatureField.max() - temperatureField.min()) / matrixSize
    temperatureField[:, 0] = temperatureField[:, 1] - temperatureGradient  # left boundary
    temperatureField[:, -1] = temperatureField[:, -2] + temperatureGradient  # right boundary
    temperatureField[0, :] = temperatureField[1, :] - temperatureGradient  # top boundary
    temperatureField[-1, :] = temperatureField[-2, :] + temperatureGradient  # bottom boundary

    return velocityField, pressureField, temperatureField

def laplacian2D(field):
    laplacian = (cp.roll(field, -1, axis=0) + cp.roll(field, 1, axis=0) + cp.roll(field, -1, axis=1) + cp.roll(field, 1, axis=1) - 4 * field)
    return laplacian

def solveNS(velocityField, pressureField, viscosity, dt):
    print("Solving Navier-Stokes equations...")
    gradPressure = cp.gradient(pressureField, axis=(0, 1))
    laplacianVelocityX = laplacian2D(velocityField[:, :, 0])
    laplacianVelocityY = laplacian2D(velocityField[:, :, 1])
    velocityField[:, :, 0] -= dt * (velocityField[:, :, 0] * cp.gradient(velocityField[:, :, 0], axis=0) - viscosity * laplacianVelocityX + gradPressure[0])
    velocityField[:, :, 1] -= dt * (velocityField[:, :, 1] * cp.gradient(velocityField[:, :, 1], axis=1) - viscosity * laplacianVelocityY + gradPressure[1])
    pressureField -= dt * cp.gradient(cp.sum(velocityField, axis=2), axis=0)
    return velocityField, pressureField

def simCD(temperatureField, velocityField, diffusivity, dt):
    print("Simulating convection-diffusion processes...")
    temperatureGradient = cp.gradient(temperatureField)
    convectiveTransferX = velocityField[:, :, 0] * temperatureGradient[0]
    convectiveTransferY = velocityField[:, :, 1] * temperatureGradient[1]
    convectiveTransfer = convectiveTransferX + convectiveTransferY
    laplacianTemperature = laplacian2D(temperatureField)
    temperatureField += dt * (diffusivity * laplacianTemperature - convectiveTransfer)
    return temperatureField


def cfdSimulation(iterations=10, dt=0.001, viscosity=0.0018910, diffusivity=0.00136166):
    startTime = time.time()
    initCells = 10000
    print(f"Starting CFD simulation on the first {initCells} cells...")
    velocityField, pressureField, temperatureField = initFields(initCells)
    for i in range(iterations):
        print(f"Iteration {i}")
        velocityField, pressureField, temperatureField = updateBoundaryConditions(velocityField, pressureField, temperatureField, initCells)
        print(f"Max and Min Velocity after BC: {cp.max(velocityField)}, {cp.min(velocityField)}")
        print(f"Max and Min Pressure after BC: {cp.max(pressureField)}, {cp.min(pressureField)}")
        velocityField, pressureField = solveNS(velocityField, pressureField, viscosity, dt)
        print(f"Max and Min Velocity after NS: {cp.max(velocityField)}, {cp.min(velocityField)}")
        print(f"Max and Min Pressure after NS: {cp.max(pressureField)}, {cp.min(pressureField)}")
        temperatureField = simCD(temperatureField, velocityField, diffusivity, dt)
        print(f"Max and Min Temperature after CD: {cp.max(temperatureField)}, {cp.min(temperatureField)}")
        tke = calcTKE(velocityField)
        print(f"TKE = {tke}")
        if cp.any(cp.isnan(temperatureField)) or cp.any(cp.isnan(velocityField)) or cp.any(cp.isnan(pressureField)):
            print("NaN detected, stopping simulation")
            break
    with open("result", "w") as file:
        cp.savetxt(file, temperatureField.get()) 
    endTime = time.time()
    print(f"CFD simulation process completed. Computed in {endTime - startTime} seconds.")
  cfdSimulation(iterations=1000)
  ```

## Usage
The Dynex platform is used solely for the computational aspect of CFD simulations. Users need to initialize all boundary conditions and fields using a CFD software that supports OpenFOAM before leveraging Dynex for computation. Refer to the provided Python scripts for detailed implementation and usage instructions. Adjust the parameters and functions in these scripts as necessary to match your specific simulation requirements.

## Contact Information
For more information about Dynex and its capabilities, please visit [www.dynexcoin.org](http://www.dynexcoin.org). If you have any questions or require further assistance, feel free to reach out to me via email at sam@samrahmeh.com.
