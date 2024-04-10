 ************************************************************
 Number of sub-domains in X =    1
 Number of sub-domains in Y =    3
 Number of sub-domains in Z =    2
 Index of current sub-domain in X =    1
 Index of current sub-domain in Y =    1
 Index of current sub-domain in Z =    1
 ************************************************************
 Initial estimated storage requirement is                  10000000
 Information about material properties
 
 Total number of SPEDATs is                    38
 number of materials specified by SPEDATs is                      2
 solprp = 100 porprp = 198 vacprp = 199
 !!!! The properties file is PROPS
 Properties being read from  *props
 Properties have been read from  PROPS
 
 PRPS is stored with initial value=
 =-1.
 Material properties used for phase 1 are
 density
 laminar viscosity
 turbulent viscosity
 mixing length
 >>>   End of property-related data   <<<
 ************************************************************
 
 Number of F-array locations available is                  10000000
 Number used before BFC allowance is                        1087371
 Number used after BFC allowance is                         1087371
 ************************************************************
 
  Chen-Kim k-e turbulence model constants
 
 AK =0.41 EWAL =8.6
 CMU =0.5478 CD =0.1643 CMUCD =0.090004
 C1E =1.15 C2E =1.9
 
 The foregoing constants may be changed
 from the Q1 file by setting:
 SPEDAT(KECONST,name of constant,R,value)
 
 ************************************************************
 biggest cell volume divided by average is     6.584233      at:
 ix = 19 iy = 1 iz = 13
 xg =0.953199 yg =0.026695 zg =0.106825
 smallest cell volume divided by average is   1.9232510E-02  at:
 ix = 23 iy = 16 iz = 1
 xg =1.262202 yg =0.415939 zg =5.1786E-04
 ratio of smallest to biggest is   2.9209943E-03
 ************************************************************
 
 -------- Recommended settings -------
 CONWIZ=T activates settings based on
 refrho =1. refvel =10.
 reflen =1. reftemp =50.
 rlxdu1 =0.5 rlxdv1 =0.5 rlxdw1 =0.5
 Maximum change of U1   per sweep=   100.0000    
 Maximum change of V1   per sweep=   100.0000    
 Maximum change of W1   per sweep=   100.0000    
 Maximum change of KE   per sweep=  0.9999999    
 Maximum change of EP   per sweep=   1000.000    
 relaxation and min/max values left at
 defaults may have been changed
 
 ************************************************************
 XParsol activated
 SESAME2 activated
Total number of cells =      54720
Number of cells on this processor =      12096
Total number of equations for scalars =      54716
Number of equations for scalars on this processor =       9576
Total number of equations for U1/U2 =      53192
Number of equations for U1/U2 on this processor =       9310
Number of equations for V1/V2 =      53331
Number of equations for V1/V2 on this processor =       9576
Number of equations for W1/W2 =      53274
Number of equations for W1/W2 on this processor =       9576
 Solvers for variables:
P1: CGRS+AMG                                     
U1: CGRS+PBP                                     
V1: CGRS+PBP                                     
W1: CGRS+PBP                                     
KE: CGRS+Euclid                                     
EP: CGRS+Euclid                                     
 ************************************************************
  Group 1. Run Title and Number
 ************************************************************
 ************************************************************
 
 TEXT(                                     6 P)
 
 ************************************************************
 ************************************************************
 
 IRUNN = 1 ;LIBREF = 0
 ************************************************************
  Group 2. Time dependence
 STEADY = T
 ************************************************************
  Group 3. X-Direction Grid Spacing
 CARTES = T
 NX = 36
 XULAST =1.806212
 XFRAC(1)=0.025322 ;XFRAC(8)=0.235042
 XFRAC(15)=0.348266 ;XFRAC(22)=0.693408
 XFRAC(29)=0.790281 ;XFRAC(36)=1.
 ************************************************************
  Group 4. Y-Direction Grid Spacing
 NY = 40
 YVLAST =1.303565
 YFRAC(1)=0.040956 ;YFRAC(9)=0.249313
 YFRAC(17)=0.361578 ;YFRAC(25)=0.685404
 YFRAC(33)=0.780669
 ************************************************************
  Group 5. Z-Direction Grid Spacing
 PARAB = F
 NZ = 38
 ZWLAST =0.42316
 ZFRAC(1)=2.447583E-03 ;ZFRAC(8)=0.121288
 ZFRAC(15)=0.332343 ;ZFRAC(22)=0.476139
 ZFRAC(29)=0.611028 ;ZFRAC(36)=0.88278
 ************************************************************
  Group 6. Body-Fitted Coordinates
 ************************************************************
  Group 7. Variables: STOREd,SOLVEd,NAMEd
 ONEPHS = T
 NAME(1)=P1 ;NAME(3)=U1
 NAME(5)=V1 ;NAME(7)=W1
 NAME(12)=KE ;NAME(13)=EP
 NAME(146)=PRPS ;NAME(147)=EPKE
 NAME(148)=DEN1 ;NAME(149)=EL1
 NAME(150)=ENUT
    * Y in SOLUTN argument list denotes:
    * 1-stored 2-solved 3-whole-field
    * 4-point-by-point 5-explicit 6-harmonic averaging 
 SOLUTN(P1,Y,Y,Y,N,N,Y)
 SOLUTN(U1,Y,Y,Y,N,N,Y)
 SOLUTN(V1,Y,Y,Y,N,N,Y)
 SOLUTN(W1,Y,Y,Y,N,N,Y)
 SOLUTN(KE,Y,Y,Y,N,N,N)
 SOLUTN(EP,Y,Y,Y,N,N,N)
 SOLUTN(PRPS,Y,N,N,N,N,N)
 SOLUTN(EPKE,Y,N,N,N,N,Y)
 SOLUTN(DEN1,Y,N,N,N,N,Y)
 SOLUTN(EL1,Y,N,N,N,N,Y)
 SOLUTN(ENUT,Y,N,N,N,N,Y)
 DEN1 = 148
 VIST = 150
 LEN1 = 149
 PRPS = 146
 ************************************************************
  Group 8. Terms & Devices
    * Y in TERMS argument list denotes:
    * 1-built-in source 2-convection 3-diffusion 4-transient
    * 5-first phase variable 6-interphase transport         
 TERMS(P1,Y,Y,Y,N,Y,N)
 TERMS(U1,Y,Y,Y,N,Y,N)
 TERMS(V1,Y,Y,Y,N,Y,N)
 TERMS(W1,Y,Y,Y,N,Y,N)
 TERMS(KE,N,Y,Y,N,Y,N)
 TERMS(EP,N,Y,Y,N,Y,N)
 DIFCUT =0.5 ;ZDIFAC =1.
 GALA = F ;ADDDIF = T
 NEWENT = T
 ISOLX = -1 ;ISOLY = -1 ;ISOLZ = -1
 DENPCO = T
 ************************************************************
  Group 9. Properties used if PRPS is not
  stored, and where PRPS = -1.0 if it is!
 RHO1 =1.189 ;TMP1 =0. ;EL1 = GRND4
 TSURR =0. ;TEMP0 =273.149994 ;PRESS0 =1.01325E+05
 DVO1DT =3.41E-03 ;DRH1DP =0.
 EMISS =0. ;SCATT =0.
 RADIA =0. ;RADIB =0.
 EL1A =0. ;EL1B =0. ;EL1C =0.
 ENUL =1.544E-05 ;ENUT = GRND3
 ENUTA =0. ;ENUTB =0. ;ENUTC =0.
 IENUTA = 2
 PRNDTL(U1)=1. ;PRNDTL(V1)=1.
 PRNDTL(W1)=1. ;PRNDTL(KE)=1.
 PRNDTL(EP)=1.
 PRT(U1)=1. ;PRT(V1)=1.
 PRT(W1)=1. ;PRT(KE)=0.75
 PRT(EP)=1.15
 CP1 =1005. ;CP2 =1.
 ************************************************************
  Group 10.Inter-Phase Transfer Processes
 ************************************************************
  Group 11.Initial field variables (PHIs)
 FIINIT(P1)=0. ;FIINIT(U1)=1.0E-10
 FIINIT(V1)=1.0E-10 ;FIINIT(W1)=1.0E-10
 FIINIT(KE)=0.0625 ;FIINIT(EP)=0.080371
 FIINIT(PRPS)=-1. ;FIINIT(EPKE)=1.0E-10
 FIINIT(DEN1)=1.189 ;FIINIT(EL1)=1.0E-10
 FIINIT(ENUT)=1.0E-10
 
   Parent VR object for this patch is: SOLID
 PATCH(OB1 ,INIVAL, 15, 22, 17, 24, 2, 24, 1, 1)
 INIT(OB1 ,PRPS,0. ,198. )
 
 INIADD = F
 FSWEEP = 1
 NAMFI =CHAM
 ************************************************************
  Group 12. Patchwise adjustment of terms
  Patches for this group are printed with those
  for Group 13.
  Their names begin either with GP12 or &
 ************************************************************
  Group 13. Boundary & Special Sources
 
 
 
 PATCH(KESOURCE,PHASEM, 1, 36, 1, 40, 1, 38, 1, 1)
 COVAL(KESOURCE,KE , GRND4 , GRND4 )
 COVAL(KESOURCE,EP , GRND4 , GRND4 )
 
 PATCH(KECHEN ,PHASEM, 1, 36, 1, 40, 1, 38, 1, 1)
 COVAL(KECHEN ,EP , FIXFLU , GRND4 )
 
   Parent VR object for this patch is: DOM_XMIN_I
 PATCH(OB2 ,WEST , 1, 1, 1, 40, 1, 38, 1, 1)
 COVAL(OB2 ,P1 , FIXFLU ,59.450001 )
 COVAL(OB2 ,U1 ,0. ,50. )
 COVAL(OB2 ,V1 ,0. ,0. )
 COVAL(OB2 ,W1 ,0. ,0. )
 COVAL(OB2 ,KE ,0. ,0.0625 )
 COVAL(OB2 ,EP ,0. ,0.080371 )
 
   Parent VR object for this patch is: DOM_ZMIN_W
 PATCH(OB3 ,LWALL , 1, 36, 1, 40, 1, 1, 1, 1)
 COVAL(OB3 ,U1 , GRND2 ,50. )
 COVAL(OB3 ,V1 , GRND2 ,0. )
 COVAL(OB3 ,KE , GRND2 , GRND2 )
 COVAL(OB3 ,EP , GRND2 , GRND2 )
 
   Parent VR object for this patch is: DOM_XMAX_O
 PATCH(OB4 ,EAST , 36, 36, 1, 40, 1, 38, 1, 1)
 COVAL(OB4 ,P1 ,1000. ,0. )
 COVAL(OB4 ,U1 ,0. ,0. )
 COVAL(OB4 ,V1 ,0. ,0. )
 COVAL(OB4 ,W1 ,0. ,0. )
 COVAL(OB4 ,KE ,0. , SAME )
 COVAL(OB4 ,EP ,0. , SAME )
 
 XCYCLE = F
 EGWF = T
 WALLCO = GRND2
 ************************************************************
  Group 14. Downstream Pressure For PARAB
 ************************************************************
  Group 15. Terminate Sweeps
 LSWEEP = 1000 ;ISWC1 = 1
 LITHYD = 1 ;LITFLX = 1 ;LITC = 1 ;ITHC1 = 1
 SELREF = T
 RESFAC =1.0E-05
 ************************************************************
  Group 16. Terminate Iterations
 LITER(P1)=100 ;LITER(U1)=50
 LITER(V1)=20 ;LITER(W1)=20
 LITER(KE)=50 ;LITER(EP)=100
 ENDIT(P1)=1.0E-03 ;ENDIT(U1)=1.0E-03
 ENDIT(V1)=1.0E-03 ;ENDIT(W1)=1.0E-03
 ENDIT(KE)=1.0E-03 ;ENDIT(EP)=1.0E-03
 ************************************************************
  Group 17. Relaxation
 RELAX(P1,LINRLX,0.5)
 RELAX(U1,LINRLX,0.1)
 RELAX(V1,LINRLX,0.1)
 RELAX(W1,LINRLX,0.1)
 RELAX(KE,LINRLX,0.4)
 RELAX(EP,LINRLX,0.4)
 RELAX(PRPS,LINRLX,1.)
 RELAX(EPKE,LINRLX,1.)
 RELAX(DEN1,LINRLX,0.5)
 RELAX(EL1,LINRLX,1.)
 RELAX(ENUT,LINRLX,0.5)
 KELIN = 3
 OVRRLX =0.
 EXPERT = F ;NNORSL = F
 ************************************************************
  Group 18. Limits
 VARMAX(P1)=1.0E+10 ;VARMIN(P1)=-1.0E+10
 VARMAX(U1)=1.0E+06 ;VARMIN(U1)=-1.0E+06
 VARMAX(V1)=1.0E+06 ;VARMIN(V1)=-1.0E+06
 VARMAX(W1)=1.0E+06 ;VARMIN(W1)=-1.0E+06
 VARMAX(KE)=1.0E+10 ;VARMIN(KE)=1.0E-10
 VARMAX(EP)=1.0E+10 ;VARMIN(EP)=1.0E-10
 VARMAX(PRPS)=1.0E+10 ;VARMIN(PRPS)=-1.0E+10
 VARMAX(EPKE)=1.0E+10 ;VARMIN(EPKE)=1.0E-10
 VARMAX(DEN1)=1.0E+10 ;VARMIN(DEN1)=1.0E-06
 VARMAX(EL1)=1.0E+10 ;VARMIN(EL1)=1.0E-10
 VARMAX(ENUT)=1.0E+10 ;VARMIN(ENUT)=1.0E-10
 ************************************************************
  Group 19. Data transmitted to GROUND
 GENK = T
 CONWIZ = T
 CALFOR = T
 IENUTA = 2
 GEN1 = 681
 ISG62 = 0
 SPEDAT(SET,DOMAIN,PHASE_1_MAT,I,0)
 SPEDAT(SET,GXMONI,PLOTALL,L,T)
 SPEDAT(SET,OUTPUT,VTK,C,YES)
 SPEDAT(SET,SOLPHI,P1,I,0)
 SPEDAT(SET,PREPHI,P1,I,13)
 SPEDAT(SET,SOLPHI,U1,I,0)
 SPEDAT(SET,PREPHI,U1,I,0)
 SPEDAT(SET,SOLPHI,V1,I,0)
 SPEDAT(SET,PREPHI,V1,I,0)
 SPEDAT(SET,SOLPHI,W1,I,0)
 SPEDAT(SET,PREPHI,W1,I,0)
 SPEDAT(SET,SOLPHI,KE,I,0)
 SPEDAT(SET,PREPHI,KE,I,15)
 SPEDAT(SET,SOLPHI,EP,I,0)
 SPEDAT(SET,PREPHI,EP,I,15)
 SPEDAT(SET,DRAG,CDCALC,C,YES)
 SPEDAT(SET,DRAG,REFDEN,R,1.189)
 SPEDAT(SET,DRAG,REFVEL,R,10.)
 SPEDAT(SET,DRAG,REFARX,R,0.112032)
 SPEDAT(SET,DRAG,REFARY,R,0.300672)
 SPEDAT(SET,DRAG,REFARZ,R,0.406166)
 SPEDAT(SET,DRAG,MOMCENX,R,0.)
 SPEDAT(SET,DRAG,MOMCENY,R,0.)
 SPEDAT(SET,DRAG,MOMCENZ,R,0.)
 SPEDAT(SET,OBJNAM,^OB1,C,SOLID)
 SPEDAT(SET,OBJTYP,^OB1,C,BLOCKAGE)
 SPEDAT(SET,SOLID,MATERIAL,R,198.)
 SPEDAT(SET,OBJNAM,^OB2,C,DOM_XMIN_I)
 SPEDAT(SET,OBJTYP,^OB2,C,INLET)
 SPEDAT(SET,OBJNAM,^OB3,C,DOM_ZMIN_W)
 SPEDAT(SET,OBJTYP,^OB3,C,PLATE)
 SPEDAT(SET,OBJNAM,^OB4,C,DOM_XMAX_O)
 SPEDAT(SET,OBJTYP,^OB4,C,OUTLET)
 SPEDAT(SET,ARATIO,^OB4,R,1.)
 SPEDAT(SET,OBJNAM,^OB5,C,B5)
 SPEDAT(SET,OBJTYP,^OB5,C,NULL)
 SPEDAT(SET,FACETDAT,NUMOBJ,I,5)
 SPEDAT(SET,MATERIAL,198,L,T)
 ************************************************************
  Group 20. Preliminary Printout
 ************************************************************
  Group 21. Print-out of Variables
 INIFLD = F ;SUBWGR = F
    * Y in OUTPUT argument list denotes:
    * 1-field 2-correction-eq. monitor 3-selective dumping      
    * 4-whole-field residual 5-spot-value table 6-residual table
 OUTPUT(P1,N,N,Y,Y,Y,Y)
 OUTPUT(U1,N,N,Y,Y,Y,Y)
 OUTPUT(V1,N,N,Y,Y,Y,Y)
 OUTPUT(W1,N,N,Y,Y,Y,Y)
 OUTPUT(KE,N,N,Y,Y,Y,Y)
 OUTPUT(EP,N,N,Y,Y,Y,Y)
 OUTPUT(PRPS,N,N,Y,N,N,N)
 OUTPUT(EPKE,N,N,Y,N,N,N)
 OUTPUT(DEN1,N,N,Y,N,N,N)
 OUTPUT(EL1,N,N,Y,N,N,N)
 OUTPUT(ENUT,N,N,Y,N,N,N)
 ************************************************************
  Group 22. Monitor Print-Out
 IXMON = 12 ;IYMON = 18 ;IZMON = 38
 NPRMON = 100000 ;NPRMNT = 1 ;TSTSWP = 10001
 UWATCH = F ;USTEER = F
 HIGHLO = F
 ************************************************************
  Group 23.Field Print-Out & Plot Control
 NPRINT = 100 ;NUMCLS = 5
 NXPRIN = 7 ;IXPRF = 1 ;IXPRL = 36
 NYPRIN = 8 ;IYPRF = 1 ;IYPRL = 40
 NZPRIN = 7 ;IZPRF = 1 ;IZPRL = 38
 XZPR = F ;YZPR = F
 IPLTF = 1 ;IPLTL = 1000 ;NPLT = 50
 ISWPRF = 1 ;ISWPRL = 100000
 ITABL = 3 ;IPROF = 1
 ABSIZ =0.5 ;ORSIZ =0.4
 NTZPRF = 1 ;NCOLPF = 50
 ICHR = 2 ;NCOLCO = 45 ;NROWCO = 20
   No PATCHes yet used for this Group
 
 ************************************************************
  Group 24. Dumps For Restarts
 SAVE = T ;NOWIPE = F
 NSAVE =CHAM
 IDISPA = 250 ;IDISPB = 0 ;IDISPC = 0
 CSG1    ='SW'
 
 *** grid-geometry information ***
 X-coordinates of the cell centres
    2.287E-02   4.017E-01   5.914E-01   1.215E+00   1.405E+00
    1.783E+00
 Y-coordinates of the cell centres
    2.669E-02   3.192E-01
 Z-coordinates of the cell centres
    5.179E-04   4.663E-02   1.344E-01
 
 X-coordinates of the (higher) cell faces
    4.574E-02   4.245E-01   6.290E-01   1.252E+00   1.427E+00
    1.806E+00
 Y-coordinates of the (higher) cell faces
    5.339E-02   3.250E-01
 Z-coordinates of the (higher) cell faces
    1.036E-03   5.132E-02   1.406E-01
 
 Total number of F-array elements used is                   1638686
 --- INTEGRATION OF EQUATIONS BEGINS ---
 
 ************************************************************
 *** End of sweep 100
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 100 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   100, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 100 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   100, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 100 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   100, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 100 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   100, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 100 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   100, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 100
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.639E+01   1.952E-04      1.296E-02
     U1     3.448E+03   3.040E-02      1.048E+02
     V1     3.448E+03   8.250E-03      2.844E+01
     W1     3.448E+03   1.355E-02      4.672E+01
     KE     4.790E+01   1.746E-02      8.364E-01
     EP     7.688E+03   1.781E-02      1.369E+02
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     3.539E+00   8.910E+01     -1.923E+02 (   23,   20,    7)
     U1     2.466E+00   5.262E+01      2.536E+01 (   28,   21,   17)
     V1     6.844E-01   3.726E+00     -3.735E+00 (   30,   21,   19)
     W1     1.699E-01   7.254E+00     -4.250E+00 (    9,    7,   10)
     KE     3.172E-01   1.964E+01      1.819E-04 (   23,   21,   10)
     EP     5.908E+01   1.088E+04      2.097E-03 (   25,   21,   23)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.199113E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.323605E+00
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.643618E+03
 pos. sum=1640.997681 neg. sum=-1644.81665
 nett sum=-3.81897
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) =-1.010436E-04
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-1.791458E-03
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) = 1.675819E-01
 pos. sum=0.167582 neg. sum=-1.892501E-03
 nett sum=0.165689
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) =-2.597887E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) = 3.479770E+00
 pos. sum=3.47977 neg. sum=-2.597887E-03
 nett sum=3.477173
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.79348
 nett sum=3.814697E-06
 
 Nett source of KE   at patch named: KESOURCE                =-2.234683E+01
 Non-linearised source for KE    at: KESOURCE                = 1.061118E+01
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-1.658421E-03
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.639319E+01 (Ave Out  5.008146E-01 In  0.000000E+00)
 pos. sum=12.660769 neg. sum=-38.74168
 nett sum=-26.080912
 
 Nett source of EP   at patch named: KESOURCE                =-5.017179E+03
 Non-linearised source for EP    at: KESOURCE                = 9.806490E+02
 Nett source of EP   at patch named: KECHEN                  = 2.595324E+02
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-2.600008E+00
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-8.279717E+02 (Ave Out  2.526011E+01 In  0.000000E+00)
 pos. sum=1242.817017 neg. sum=-5847.750977
 nett sum=-4604.934082
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   100
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  3.814697E-06
       U1       1.640998E+03 -1.644817E+03 -3.818970E+00
       V1       1.675819E-01 -1.892501E-03  1.656893E-01
       W1       3.479770E+00 -2.597887E-03  3.477173E+00
       KE       1.266077E+01 -3.874168E+01 -2.608091E+01
       EP       1.242817E+03 -5.847751E+03 -4.604934E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  1.912007E+00 (Pressure=  7.128941E-01, Friction=  1.199113E+00)
  Fy  =  4.259002E-03 (Pressure=  4.157958E-03, Friction=  1.010436E-04)
  Fz  = -1.028543E+00 (Pressure= -1.031141E+00, Friction=  2.597887E-03)
 Pressure force on West side: -9.700328E-03
 Pressure force on East side:  7.225945E-01
 Pressure force on South side:-1.344042E+00
 Pressure force on North side: 1.348201E+00
 Pressure force on Low side:  -5.878949E+00
 Pressure force on High side:  4.847808E+00
 Force unit vector:   8.806614E-01  1.961676E-03 -4.737420E-01
 Force magnitude:    2.171103E+00
 
  Total moment about X axis =  6.727828E-01
  Total moment about Y axis = -9.670786E-01
  Total moment about Z axis =  4.604997E-01
 
  Moment of Fx about Y axis = -4.089077E-02 at distance Z =  2.138631E-02
  Moment of Fy about X axis =  3.945287E-04 at distance Z =  9.263408E-02
  Moment of Fz about X axis =  6.723880E-01 at distance Y =  6.537287E-01
  Moment of Fx about Z axis =  4.646767E-01 at distance Y =  2.430309E-01
  Moment of Fy about Z axis = -4.176950E-03 at distance X =  9.807345E-01
  Moment of Fz about Y axis = -9.261886E-01 at distance X =  9.004861E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  1.934626E-01
  Ratio area P1> 10.00/Totalarea = 86.22 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  1.912007E+00
  Fy  =  4.259002E-03
  Fz  = -1.028543E+00
  Ftot=  2.171103E+00
 
 Force unit vector:   8.806614E-01  1.961676E-03 -4.737420E-01
 
 The total force acts at (centre of pressure):
  X   =  9.004861E-01
  Y   =  2.430309E-01
  Z   =  2.138631E-02
 
 Moments about origin:
  Total moment about X axis =  6.727828E-01
  Total moment about Y axis = -9.670786E-01
  Total moment about Z axis =  4.604997E-01
 
  Moment of Fx about Y axis = -4.089077E-02 at distance Z =  2.138631E-02
  Moment of Fy about X axis =  3.945287E-04 at distance Z =  2.138631E-02
  Moment of Fz about X axis =  6.723880E-01 at distance Y =  2.430309E-01
  Moment of Fx about Z axis =  4.646767E-01 at distance Y =  2.430309E-01
  Moment of Fy about Z axis = -4.176950E-03 at distance X =  9.004861E-01
  Moment of Fz about Y axis = -9.261886E-01 at distance X =  9.004861E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  2.870751E-01
  Cdy =  2.382665E-04
  Cdz =  4.259582E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  1.934626E-01
  Ratio area P1> 10.00/Totalarea = 86.22 %
 ************************************************************
 *** End of sweep 200
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 200 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   200, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 200 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   200, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 200 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   200, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 200 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   200, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 200 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   200, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 200
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.621E+01   1.520E-04      1.006E-02
     U1     3.429E+03   1.970E-02      6.755E+01
     V1     3.429E+03   3.289E-03      1.128E+01
     W1     3.429E+03   7.915E-03      2.714E+01
     KE     4.711E+01   6.485E-03      3.055E-01
     EP     8.164E+03   6.951E-03      5.675E+01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.020E+00   1.299E+02     -2.081E+02 (   23,   31,    2)
     U1     1.203E+00   5.237E+01      3.427E+01 (   30,   21,    4)
     V1     2.182E-01   4.978E+00     -4.983E+00 (   36,   21,    9)
     W1     8.164E-02   8.305E+00     -4.806E+00 (   25,    1,    9)
     KE     7.336E-02   1.994E+01      1.266E-04 (   36,   21,   11)
     EP     2.841E+01   1.118E+04      1.103E-03 (   21,   21,    2)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.424731E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 4.595599E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.645984E+03
 pos. sum=1640.133667 neg. sum=-1647.408569
 nett sum=-7.274902
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) =-1.487526E-04
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-4.908545E-04
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) =-2.669036E-01
 pos. sum=0. neg. sum=-0.267543
 nett sum=-0.267543
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) =-9.945140E-04
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) =-1.147134E-01
 pos. sum=0. neg. sum=-0.115708
 nett sum=-0.115708
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.793484
 nett sum=0.
 
 Nett source of KE   at patch named: KESOURCE                =-2.420217E+01
 Non-linearised source for KE    at: KESOURCE                = 7.121374E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-5.296008E-04
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.620271E+01 (Ave Out  4.938226E-01 In  0.000000E+00)
 pos. sum=9.170966 neg. sum=-40.405403
 nett sum=-31.234436
 
 Nett source of EP   at patch named: KESOURCE                =-5.830978E+03
 Non-linearised source for EP    at: KESOURCE                = 6.778629E+02
 Nett source of EP   at patch named: KECHEN                  = 1.653141E+02
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-4.812647E-01
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-7.695943E+02 (Ave Out  2.345310E+01 In  0.000000E+00)
 pos. sum=845.812683 neg. sum=-6601.053223
 nett sum=-5755.240723
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   200
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  0.000000E+00
       U1       1.640134E+03 -1.647409E+03 -7.274902E+00
       V1       0.000000E+00 -2.675432E-01 -2.675432E-01
       W1       0.000000E+00 -1.157079E-01 -1.157079E-01
       KE       9.170966E+00 -4.040540E+01 -3.123444E+01
       EP       8.458127E+02 -6.601053E+03 -5.755241E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.260256E+00 (Pressure=  8.355250E-01, Friction=  1.424731E+00)
  Fy  =  3.930852E-03 (Pressure=  3.782100E-03, Friction=  1.487526E-04)
  Fz  = -1.607308E+00 (Pressure= -1.608302E+00, Friction=  9.945140E-04)
 Pressure force on West side:  1.028416E-01
 Pressure force on East side:  7.326835E-01
 Pressure force on South side:-8.815131E-01
 Pressure force on North side: 8.852951E-01
 Pressure force on Low side:  -5.738100E+00
 Pressure force on High side:  4.129797E+00
 Force unit vector:   8.149520E-01  1.417298E-03 -5.795267E-01
 Force magnitude:    2.773483E+00
 
  Total moment about X axis =  1.048739E+00
  Total moment about Y axis = -1.514214E+00
  Total moment about Z axis =  5.403078E-01
 
  Moment of Fx about Y axis = -4.822619E-02 at distance Z =  2.133661E-02
  Moment of Fy about X axis =  4.360334E-04 at distance Z =  1.109259E-01
  Moment of Fz about X axis =  1.048303E+00 at distance Y =  6.522104E-01
  Moment of Fx about Z axis =  5.446018E-01 at distance Y =  2.409470E-01
  Moment of Fy about Z axis = -4.293861E-03 at distance X =  1.092349E+00
  Moment of Fz about Y axis = -1.465987E+00 at distance X =  9.120762E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  1.926230E-01
  Ratio area P1> 10.00/Totalarea = 85.85 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.260256E+00
  Fy  =  3.930852E-03
  Fz  = -1.607308E+00
  Ftot=  2.773483E+00
 
 Force unit vector:   8.149520E-01  1.417298E-03 -5.795267E-01
 
 The total force acts at (centre of pressure):
  X   =  9.120762E-01
  Y   =  2.409470E-01
  Z   =  2.133661E-02
 
 Moments about origin:
  Total moment about X axis =  1.048739E+00
  Total moment about Y axis = -1.514214E+00
  Total moment about Z axis =  5.403078E-01
 
  Moment of Fx about Y axis = -4.822619E-02 at distance Z =  2.133661E-02
  Moment of Fy about X axis =  4.360334E-04 at distance Z =  2.133661E-02
  Moment of Fz about X axis =  1.048303E+00 at distance Y =  2.409470E-01
  Moment of Fx about Z axis =  5.446018E-01 at distance Y =  2.409470E-01
  Moment of Fy about Z axis = -4.293861E-03 at distance X =  9.120762E-01
  Moment of Fz about Y axis = -1.465987E+00 at distance X =  9.120762E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.393623E-01
  Cdy =  2.199084E-04
  Cdz =  6.656463E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  1.926230E-01
  Ratio area P1> 10.00/Totalarea = 85.85 %
 ************************************************************
 *** End of sweep 300
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 300 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   300, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 300 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   300, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 300 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   300, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 300 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   300, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 300 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   300, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 300
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.616E+01   1.911E-04      1.264E-02
     U1     3.414E+03   1.287E-02      4.393E+01
     V1     3.414E+03   1.668E-03      5.693E+00
     W1     3.414E+03   5.099E-03      1.741E+01
     KE     4.369E+01   3.099E-03      1.354E-01
     EP     8.030E+03   2.886E-03      2.317E+01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     9.016E-01   1.313E+02     -2.175E+02 (   23,   27,    1)
     U1     8.514E-01   5.234E+01      3.769E+01 (   35,   20,    7)
     V1     8.134E-02   5.683E+00     -5.692E+00 (   35,   19,    3)
     W1     7.795E-02   8.044E+00     -5.193E+00 (   25,   14,   10)
     KE     4.638E-02   2.001E+01      1.193E-04 (   36,   21,   11)
     EP     1.099E+01   1.170E+04      1.009E-03 (   24,   20,   23)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.475637E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.929294E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.643127E+03
 pos. sum=1639.866943 neg. sum=-1644.602783
 nett sum=-4.73584
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) =-5.906682E-08
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-1.792870E-04
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) =-1.860564E-01
 pos. sum=0. neg. sum=-0.186236
 nett sum=-0.186236
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 2.561925E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) =-8.443161E+00
 pos. sum=2.561925E-03 neg. sum=-8.443161
 nett sum=-8.440599
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279349E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.79348
 nett sum=3.814697E-06
 
 Nett source of KE   at patch named: KESOURCE                =-2.388193E+01
 Non-linearised source for KE    at: KESOURCE                = 3.886195E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-1.451058E-04
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.530214E+01 (Ave Out  4.660372E-01 In  0.000000E+00)
 pos. sum=5.935788 neg. sum=-39.184212
 nett sum=-33.248425
 
 Nett source of EP   at patch named: KESOURCE                =-6.118302E+03
 Non-linearised source for EP    at: KESOURCE                = 3.699288E+02
 Nett source of EP   at patch named: KECHEN                  = 7.558097E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.001210E-01
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.909501E+02 (Ave Out  2.102853E+01 In  0.000000E+00)
 pos. sum=448.145416 neg. sum=-6809.352539
 nett sum=-6361.207031
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   300
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  3.814697E-06
       U1       1.639867E+03 -1.644603E+03 -4.735840E+00
       V1       0.000000E+00 -1.862358E-01 -1.862358E-01
       W1       2.561925E-03 -8.443161E+00 -8.440599E+00
       KE       5.935788E+00 -3.918421E+01 -3.324842E+01
       EP       4.481454E+02 -6.809353E+03 -6.361207E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.355315E+00 (Pressure=  8.796784E-01, Friction=  1.475637E+00)
  Fy  = -9.474292E-04 (Pressure= -9.474882E-04, Friction=  5.906682E-08)
  Fz  = -2.221343E+00 (Pressure= -2.218781E+00, Friction= -2.561925E-03)
 Pressure force on West side:  7.601982E-02
 Pressure force on East side:  8.036584E-01
 Pressure force on South side:-1.126932E+00
 Pressure force on North side: 1.125984E+00
 Pressure force on Low side:  -6.667662E+00
 Pressure force on High side:  4.448882E+00
 Force unit vector:   7.274942E-01 -2.926356E-04 -6.861137E-01
 Force magnitude:    3.237572E+00
 
  Total moment about X axis =  1.446100E+00
  Total moment about Y axis = -2.075746E+00
  Total moment about Z axis =  5.739996E-01
 
  Moment of Fx about Y axis = -5.068257E-02 at distance Z =  2.151838E-02
  Moment of Fy about X axis = -3.747386E-05 at distance Z =  3.955320E-02
  Moment of Fz about X axis =  1.446137E+00 at distance Y =  6.510193E-01
  Moment of Fx about Z axis =  5.733790E-01 at distance Y =  2.434404E-01
  Moment of Fy about Z axis =  6.206040E-04 at distance X =  6.550400E-01
  Moment of Fz about Y axis = -2.025062E+00 at distance X =  9.116387E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.013624E-01
  Ratio area P1> 10.00/Totalarea = 89.74 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.355315E+00
  Fy  = -9.474292E-04
  Fz  = -2.221343E+00
  Ftot=  3.237572E+00
 
 Force unit vector:   7.274942E-01 -2.926356E-04 -6.861137E-01
 
 The total force acts at (centre of pressure):
  X   =  9.116387E-01
  Y   =  2.434404E-01
  Z   =  2.151838E-02
 
 Moments about origin:
  Total moment about X axis =  1.446100E+00
  Total moment about Y axis = -2.075746E+00
  Total moment about Z axis =  5.739996E-01
 
  Moment of Fx about Y axis = -5.068257E-02 at distance Z =  2.151838E-02
  Moment of Fy about X axis = -3.747386E-05 at distance Z =  2.151838E-02
  Moment of Fz about X axis =  1.446137E+00 at distance Y =  2.434404E-01
  Moment of Fx about Z axis =  5.733790E-01 at distance Y =  2.434404E-01
  Moment of Fy about Z axis =  6.206040E-04 at distance X =  9.116387E-01
  Moment of Fz about Y axis = -2.025062E+00 at distance X =  9.116387E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.536349E-01
  Cdy =  5.300318E-05
  Cdz =  9.199414E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.013624E-01
  Ratio area P1> 10.00/Totalarea = 89.74 %
 ************************************************************
 *** End of sweep 400
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 400 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   400, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 400 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   400, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 400 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   400, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 400 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   400, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 400 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   400, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 400
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.596E+01   1.774E-04      1.170E-02
     U1     3.388E+03   3.343E-03      1.133E+01
     V1     3.388E+03   6.175E-04      2.092E+00
     W1     3.388E+03   2.494E-03      8.450E+00
     KE     4.188E+01   9.624E-04      4.031E-02
     EP     7.877E+03   5.286E-04      4.164E+00
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     1.797E-01   1.277E+02     -2.215E+02 (   29,   14,    1)
     U1     5.196E-01   5.238E+01      3.808E+01 (   35,   32,    2)
     V1     5.066E-02   5.753E+00     -5.764E+00 (   36,   22,    8)
     W1     4.259E-02   8.016E+00     -5.201E+00 (   33,   14,   17)
     KE     2.497E-02   2.000E+01      1.177E-04 (   36,   20,   23)
     EP     1.756E+00   1.171E+04      9.886E-04 (   33,   20,   23)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477729E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.113584E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.640099E+03
 pos. sum=1639.7854 neg. sum=-1641.576294
 nett sum=-1.790894
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 1.217276E-05
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-3.047907E-05
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) =-1.692742E-01
 pos. sum=1.217276E-05 neg. sum=-0.169305
 nett sum=-0.169293
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.141312E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) =-7.484996E+00
 pos. sum=3.141312E-03 neg. sum=-7.484996
 nett sum=-7.481855
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.793484
 nett sum=0.
 
 Nett source of KE   at patch named: KESOURCE                =-2.346679E+01
 Non-linearised source for KE    at: KESOURCE                = 2.694366E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-4.220201E-05
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.465352E+01 (Ave Out  4.466584E-01 In  0.000000E+00)
 pos. sum=4.743959 neg. sum=-38.120346
 nett sum=-33.376389
 
 Nett source of EP   at patch named: KESOURCE                =-6.100435E+03
 Non-linearised source for EP    at: KESOURCE                = 2.859951E+02
 Nett source of EP   at patch named: KECHEN                  = 5.389860E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.467470E-02
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.460169E+02 (Ave Out  1.968840E+01 In  0.000000E+00)
 pos. sum=342.529358 neg. sum=-6746.466309
 nett sum=-6403.937012
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   400
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  0.000000E+00
       U1       1.639785E+03 -1.641576E+03 -1.790894E+00
       V1       1.217276E-05 -1.693047E-01 -1.692925E-01
       W1       3.141312E-03 -7.484996E+00 -7.481855E+00
       KE       4.743959E+00 -3.812035E+01 -3.337639E+01
       EP       3.425294E+02 -6.746466E+03 -6.403937E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363552E+00 (Pressure=  8.858227E-01, Friction=  1.477729E+00)
  Fy  = -1.061860E-03 (Pressure= -1.049687E-03, Friction= -1.217276E-05)
  Fz  = -2.304473E+00 (Pressure= -2.301332E+00, Friction= -3.141312E-03)
 Pressure force on West side:  4.976676E-02
 Pressure force on East side:  8.360557E-01
 Pressure force on South side:-1.286586E+00
 Pressure force on North side: 1.285536E+00
 Pressure force on Low side:  -7.046543E+00
 Pressure force on High side:  4.745211E+00
 Force unit vector:   7.159986E-01 -3.216727E-04 -6.981017E-01
 Force magnitude:    3.301057E+00
 
  Total moment about X axis =  1.499900E+00
  Total moment about Y axis = -2.151307E+00
  Total moment about Z axis =  5.781285E-01
 
  Moment of Fx about Y axis = -5.099187E-02 at distance Z =  2.157425E-02
  Moment of Fy about X axis = -5.364709E-05 at distance Z =  5.052182E-02
  Moment of Fz about X axis =  1.499955E+00 at distance Y =  6.508883E-01
  Moment of Fx about Z axis =  5.773844E-01 at distance Y =  2.442867E-01
  Moment of Fy about Z axis =  7.441426E-04 at distance X =  7.007917E-01
  Moment of Fz about Y axis = -2.100315E+00 at distance X =  9.114078E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.053807E-01
  Ratio area P1> 10.00/Totalarea = 91.54 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363552E+00
  Fy  = -1.061860E-03
  Fz  = -2.304473E+00
  Ftot=  3.301057E+00
 
 Force unit vector:   7.159986E-01 -3.216727E-04 -6.981017E-01
 
 The total force acts at (centre of pressure):
  X   =  9.114078E-01
  Y   =  2.442867E-01
  Z   =  2.157425E-02
 
 Moments about origin:
  Total moment about X axis =  1.499900E+00
  Total moment about Y axis = -2.151307E+00
  Total moment about Z axis =  5.781285E-01
 
  Moment of Fx about Y axis = -5.099187E-02 at distance Z =  2.157425E-02
  Moment of Fy about X axis = -5.364709E-05 at distance Z =  2.157425E-02
  Moment of Fz about X axis =  1.499955E+00 at distance Y =  2.442867E-01
  Moment of Fx about Z axis =  5.773844E-01 at distance Y =  2.442867E-01
  Moment of Fy about Z axis =  7.441426E-04 at distance X =  9.114078E-01
  Moment of Fz about Y axis = -2.100315E+00 at distance X =  9.114078E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548716E-01
  Cdy =  5.940491E-05
  Cdz =  9.543689E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.053807E-01
  Ratio area P1> 10.00/Totalarea = 91.54 %
 ************************************************************
 *** End of sweep 500
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 500 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   500, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 500 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   500, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 500 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   500, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 500 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   500, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 500 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   500, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 500
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.589E+01   1.907E-05      1.256E-03
     U1     3.384E+03   2.033E-04      6.878E-01
     V1     3.384E+03   6.338E-05      2.145E-01
     W1     3.384E+03   2.672E-04      9.043E-01
     KE     4.160E+01   1.344E-04      5.591E-03
     EP     7.850E+03   5.856E-05      4.597E-01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     9.684E-03   1.273E+02     -2.219E+02 (   24,   18,   38)
     U1     4.583E-02   5.238E+01      3.809E+01 (   35,   21,   10)
     V1     1.006E-02   5.753E+00     -5.763E+00 (   36,   22,    8)
     W1     1.642E-02   8.017E+00     -5.201E+00 (   36,   10,   15)
     KE     1.654E-02   2.000E+01      1.169E-04 (   24,   20,   24)
     EP     1.356E+00   1.171E+04      9.780E-04 (   24,   20,   24)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477682E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.002183E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.639790E+03
 pos. sum=1639.774292 neg. sum=-1641.268066
 nett sum=-1.493774
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 9.074398E-06
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-1.201595E-06
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) =-2.996601E-03
 pos. sum=9.074398E-06 neg. sum=-2.997803E-03
 nett sum=-2.988728E-03
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.131195E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) =-5.834512E-01
 pos. sum=3.131195E-03 neg. sum=-0.583451
 nett sum=-0.58032
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.79348
 nett sum=3.814697E-06
 
 Nett source of KE   at patch named: KESOURCE                =-2.339182E+01
 Non-linearised source for KE    at: KESOURCE                = 2.550022E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-7.395862E-07
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.455239E+01 (Ave Out  4.437460E-01 In  0.000000E+00)
 pos. sum=4.599614 neg. sum=-37.944221
 nett sum=-33.344608
 
 Nett source of EP   at patch named: KESOURCE                =-6.089984E+03
 Non-linearised source for EP    at: KESOURCE                = 2.763461E+02
 Nett source of EP   at patch named: KECHEN                  = 5.251668E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.084151E-04
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.401668E+02 (Ave Out  1.952033E+01 In  0.000000E+00)
 pos. sum=331.498474 neg. sum=-6730.150879
 nett sum=-6398.652344
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   500
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  3.814697E-06
       U1       1.639774E+03 -1.641268E+03 -1.493774E+00
       V1       9.074398E-06 -2.997803E-03 -2.988728E-03
       W1       3.131195E-03 -5.834512E-01 -5.803199E-01
       KE       4.599614E+00 -3.794422E+01 -3.334461E+01
       EP       3.314985E+02 -6.730151E+03 -6.398652E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363381E+00 (Pressure=  8.856985E-01, Friction=  1.477682E+00)
  Fy  = -9.060392E-04 (Pressure= -8.969648E-04, Friction= -9.074398E-06)
  Fz  = -2.309027E+00 (Pressure= -2.305896E+00, Friction= -3.131195E-03)
 Pressure force on West side:  4.721348E-02
 Pressure force on East side:  8.384850E-01
 Pressure force on South side:-1.299894E+00
 Pressure force on North side: 1.298997E+00
 Pressure force on Low side:  -7.077819E+00
 Pressure force on High side:  4.771923E+00
 Force unit vector:   7.152842E-01 -2.742154E-04 -6.988338E-01
 Force magnitude:    3.304115E+00
 
  Total moment about X axis =  1.502890E+00
  Total moment about Y axis = -2.155432E+00
  Total moment about Z axis =  5.778850E-01
 
  Moment of Fx about Y axis = -5.098548E-02 at distance Z =  2.157311E-02
  Moment of Fy about X axis = -3.813626E-05 at distance Z =  4.209118E-02
  Moment of Fz about X axis =  1.502928E+00 at distance Y =  6.508925E-01
  Moment of Fx about Z axis =  5.773038E-01 at distance Y =  2.442703E-01
  Moment of Fy about Z axis =  5.811080E-04 at distance X =  6.413718E-01
  Moment of Fz about Y axis = -2.104446E+00 at distance X =  9.113995E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.044731E-01
  Ratio area P1> 10.00/Totalarea = 91.13 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363381E+00
  Fy  = -9.060392E-04
  Fz  = -2.309027E+00
  Ftot=  3.304115E+00
 
 Force unit vector:   7.152842E-01 -2.742154E-04 -6.988338E-01
 
 The total force acts at (centre of pressure):
  X   =  9.113995E-01
  Y   =  2.442703E-01
  Z   =  2.157311E-02
 
 Moments about origin:
  Total moment about X axis =  1.502890E+00
  Total moment about Y axis = -2.155432E+00
  Total moment about Z axis =  5.778850E-01
 
  Moment of Fx about Y axis = -5.098548E-02 at distance Z =  2.157311E-02
  Moment of Fy about X axis = -3.813626E-05 at distance Z =  2.157311E-02
  Moment of Fz about X axis =  1.502928E+00 at distance Y =  2.442703E-01
  Moment of Fx about Z axis =  5.773038E-01 at distance Y =  2.442703E-01
  Moment of Fy about Z axis =  5.811080E-04 at distance X =  9.113995E-01
  Moment of Fz about Y axis = -2.104446E+00 at distance X =  9.113995E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548459E-01
  Cdy =  5.068765E-05
  Cdz =  9.562547E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.044731E-01
  Ratio area P1> 10.00/Totalarea = 91.13 %
 ************************************************************
 *** End of sweep 600
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 600 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   600, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 600 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   600, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 600 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   600, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 600 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   600, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 600 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   600, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 600
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.588E+01   2.098E-06      1.382E-04
     U1     3.384E+03   2.054E-05      6.951E-02
     V1     3.384E+03   4.184E-06      1.416E-02
     W1     3.384E+03   1.502E-05      5.082E-02
     KE     4.158E+01   3.184E-05      1.324E-03
     EP     7.849E+03   1.500E-05      1.177E-01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     7.635E-03   1.273E+02     -2.219E+02 (   10,    1,   38)
     U1     1.173E-03   5.238E+01      3.809E+01 (   35,   20,   10)
     V1     4.765E-04   5.753E+00     -5.763E+00 (   36,   18,    7)
     W1     4.364E-04   8.017E+00     -5.201E+00 (   35,    5,   19)
     KE     1.307E-02   2.000E+01      1.161E-04 (   24,   20,   24)
     EP     1.022E+00   1.171E+04      9.678E-04 (   24,   20,   24)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477686E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.000185E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.639782E+03
 pos. sum=1639.774048 neg. sum=-1641.259644
 nett sum=-1.485596
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 9.832083E-06
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-3.806199E-06
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) = 1.153305E-03
 pos. sum=1.163137E-03 neg. sum=-3.806199E-06
 nett sum=1.159331E-03
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.129530E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) = 1.624802E-01
 pos. sum=0.16561 neg. sum=0.
 nett sum=0.16561
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.79348
 nett sum=3.814697E-06
 
 Nett source of KE   at patch named: KESOURCE                =-2.338823E+01
 Non-linearised source for KE    at: KESOURCE                = 2.540479E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-2.841200E-08
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.454454E+01 (Ave Out  4.435207E-01 In  0.000000E+00)
 pos. sum=4.590072 neg. sum=-37.932774
 nett sum=-33.342701
 
 Nett source of EP   at patch named: KESOURCE                =-6.089458E+03
 Non-linearised source for EP    at: KESOURCE                = 2.756188E+02
 Nett source of EP   at patch named: KECHEN                  = 5.245467E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.581542E-06
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.396976E+02 (Ave Out  1.950693E+01 In  0.000000E+00)
 pos. sum=330.709106 neg. sum=-6729.155762
 nett sum=-6398.446777
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   600
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  3.814697E-06
       U1       1.639774E+03 -1.641260E+03 -1.485596E+00
       V1       1.163137E-03 -3.806199E-06  1.159331E-03
       W1       1.656097E-01  0.000000E+00  1.656097E-01
       KE       4.590072E+00 -3.793277E+01 -3.334270E+01
       EP       3.307091E+02 -6.729156E+03 -6.398447E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363398E+00 (Pressure=  8.857120E-01, Friction=  1.477686E+00)
  Fy  = -9.478638E-04 (Pressure= -9.380317E-04, Friction= -9.832083E-06)
  Fz  = -2.309273E+00 (Pressure= -2.306143E+00, Friction= -3.129530E-03)
 Pressure force on West side:  4.710295E-02
 Pressure force on East side:  8.386091E-01
 Pressure force on South side:-1.300587E+00
 Pressure force on North side: 1.299649E+00
 Pressure force on Low side:  -7.079305E+00
 Pressure force on High side:  4.773161E+00
 Force unit vector:   7.152494E-01 -2.868578E-04 -6.988692E-01
 Force magnitude:    3.304299E+00
 
  Total moment about X axis =  1.503047E+00
  Total moment about Y axis = -2.155656E+00
  Total moment about Z axis =  5.779372E-01
 
  Moment of Fx about Y axis = -5.098628E-02 at distance Z =  2.157329E-02
  Moment of Fy about X axis = -4.238624E-05 at distance Z =  4.471764E-02
  Moment of Fz about X axis =  1.503089E+00 at distance Y =  6.508927E-01
  Moment of Fx about Z axis =  5.773126E-01 at distance Y =  2.442723E-01
  Moment of Fy about Z axis =  6.245817E-04 at distance X =  6.589361E-01
  Moment of Fz about Y axis = -2.104671E+00 at distance X =  9.113999E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.036807E-01
  Ratio area P1> 10.00/Totalarea = 90.78 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363398E+00
  Fy  = -9.478638E-04
  Fz  = -2.309273E+00
  Ftot=  3.304299E+00
 
 Force unit vector:   7.152494E-01 -2.868578E-04 -6.988692E-01
 
 The total force acts at (centre of pressure):
  X   =  9.113999E-01
  Y   =  2.442723E-01
  Z   =  2.157329E-02
 
 Moments about origin:
  Total moment about X axis =  1.503047E+00
  Total moment about Y axis = -2.155656E+00
  Total moment about Z axis =  5.779372E-01
 
  Moment of Fx about Y axis = -5.098628E-02 at distance Z =  2.157329E-02
  Moment of Fy about X axis = -4.238624E-05 at distance Z =  2.157329E-02
  Moment of Fz about X axis =  1.503089E+00 at distance Y =  2.442723E-01
  Moment of Fx about Z axis =  5.773126E-01 at distance Y =  2.442723E-01
  Moment of Fy about Z axis =  6.245817E-04 at distance X =  9.113999E-01
  Moment of Fz about Y axis = -2.104671E+00 at distance X =  9.113999E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548484E-01
  Cdy =  5.302749E-05
  Cdz =  9.563565E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.036807E-01
  Ratio area P1> 10.00/Totalarea = 90.78 %
 ************************************************************
 *** End of sweep 700
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 700 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   700, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 700 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   700, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 700 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   700, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 700 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   700, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 700 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   700, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 700
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.588E+01   7.421E-07      4.889E-05
     U1     3.384E+03   3.425E-06      1.159E-02
     V1     3.384E+03   6.897E-07      2.333E-03
     W1     3.384E+03   9.272E-07      3.137E-03
     KE     4.158E+01   2.741E-05      1.140E-03
     EP     7.849E+03   1.250E-05      9.808E-02
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     4.757E-03   1.273E+02     -2.219E+02 (   28,    1,   37)
     U1     7.095E-05   5.238E+01      3.809E+01 (   22,   21,   24)
     V1     6.988E-05   5.753E+00     -5.764E+00 (   22,   21,   24)
     W1     8.111E-05   8.017E+00     -5.201E+00 (   36,   10,   19)
     KE     1.106E-02   2.000E+01      1.151E-04 (   25,   20,   24)
     EP     7.356E-01   1.171E+04      9.563E-04 (   25,   20,   24)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477686E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.000253E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.639782E+03
 pos. sum=1639.774048 neg. sum=-1641.259521
 nett sum=-1.485474
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 9.747702E-06
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-3.582667E-06
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) =-2.934113E-04
 pos. sum=9.747702E-06 neg. sum=-2.96994E-04
 nett sum=-2.872463E-04
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.129631E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) = 1.180283E-01
 pos. sum=0.121158 neg. sum=0.
 nett sum=0.121158
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.79348
 nett sum=3.814697E-06
 
 Nett source of KE   at patch named: KESOURCE                =-2.338845E+01
 Non-linearised source for KE    at: KESOURCE                = 2.540255E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-6.302940E-10
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.454441E+01 (Ave Out  4.435125E-01 In  0.000000E+00)
 pos. sum=4.589848 neg. sum=-37.932865
 nett sum=-33.343018
 
 Nett source of EP   at patch named: KESOURCE                =-6.089525E+03
 Non-linearised source for EP    at: KESOURCE                = 2.756039E+02
 Nett source of EP   at patch named: KECHEN                  = 5.245247E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.129753E-07
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.396848E+02 (Ave Out  1.950631E+01 In  0.000000E+00)
 pos. sum=330.692047 neg. sum=-6729.209961
 nett sum=-6398.518066
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   700
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  3.814697E-06
       U1       1.639774E+03 -1.641260E+03 -1.485474E+00
       V1       9.747702E-06 -2.969940E-04 -2.872463E-04
       W1       1.211579E-01  0.000000E+00  1.211579E-01
       KE       4.589848E+00 -3.793287E+01 -3.334302E+01
       EP       3.306920E+02 -6.729210E+03 -6.398518E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363398E+00 (Pressure=  8.857116E-01, Friction=  1.477686E+00)
  Fy  = -9.454024E-04 (Pressure= -9.356547E-04, Friction= -9.747702E-06)
  Fz  = -2.309214E+00 (Pressure= -2.306084E+00, Friction= -3.129631E-03)
 Pressure force on West side:  4.712072E-02
 Pressure force on East side:  8.385907E-01
 Pressure force on South side:-1.300482E+00
 Pressure force on North side: 1.299547E+00
 Pressure force on Low side:  -7.079048E+00
 Pressure force on High side:  4.772964E+00
 Force unit vector:   7.152583E-01 -2.861164E-04 -6.988600E-01
 Force magnitude:    3.304258E+00
 
  Total moment about X axis =  1.503009E+00
  Total moment about Y axis = -2.155603E+00
  Total moment about Z axis =  5.779338E-01
 
  Moment of Fx about Y axis = -5.098623E-02 at distance Z =  2.157328E-02
  Moment of Fy about X axis = -4.199788E-05 at distance Z =  4.442328E-02
  Moment of Fz about X axis =  1.503050E+00 at distance Y =  6.508925E-01
  Moment of Fx about Z axis =  5.773124E-01 at distance Y =  2.442722E-01
  Moment of Fy about Z axis =  6.215004E-04 at distance X =  6.573924E-01
  Moment of Fz about Y axis = -2.104619E+00 at distance X =  9.114004E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363398E+00
  Fy  = -9.454024E-04
  Fz  = -2.309214E+00
  Ftot=  3.304258E+00
 
 Force unit vector:   7.152583E-01 -2.861164E-04 -6.988600E-01
 
 The total force acts at (centre of pressure):
  X   =  9.114004E-01
  Y   =  2.442722E-01
  Z   =  2.157328E-02
 
 Moments about origin:
  Total moment about X axis =  1.503009E+00
  Total moment about Y axis = -2.155603E+00
  Total moment about Z axis =  5.779338E-01
 
  Moment of Fx about Y axis = -5.098623E-02 at distance Z =  2.157328E-02
  Moment of Fy about X axis = -4.199788E-05 at distance Z =  2.157328E-02
  Moment of Fz about X axis =  1.503050E+00 at distance Y =  2.442722E-01
  Moment of Fx about Z axis =  5.773124E-01 at distance Y =  2.442722E-01
  Moment of Fy about Z axis =  6.215004E-04 at distance X =  9.114004E-01
  Moment of Fz about Y axis = -2.104619E+00 at distance X =  9.114004E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548484E-01
  Cdy =  5.288979E-05
  Cdz =  9.563321E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 ************************************************************
 *** End of sweep 800
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 800 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   800, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 800 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   800, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 800 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   800, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 800 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   800, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 800 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   800, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 800
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.588E+01   6.641E-07      4.375E-05
     U1     3.384E+03   3.232E-06      1.094E-02
     V1     3.384E+03   3.181E-07      1.076E-03
     W1     3.384E+03   4.116E-07      1.393E-03
     KE     4.158E+01   4.246E-05      1.766E-03
     EP     7.849E+03   1.650E-05      1.295E-01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     3.504E-03   1.273E+02     -2.219E+02 (    9,   22,   34)
     U1     4.506E-04   5.238E+01      3.809E+01 (   22,   21,   24)
     V1     9.882E-05   5.753E+00     -5.764E+00 (   22,   21,   24)
     W1     9.396E-06   8.017E+00     -5.201E+00 (    9,    5,    9)
     KE     2.276E-02   2.000E+01      1.144E-04 (   25,   21,   24)
     EP     1.145E+00   1.171E+04      9.465E-04 (   26,   21,   24)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477686E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.000255E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.639782E+03
 pos. sum=1639.774048 neg. sum=-1641.259399
 nett sum=-1.485352
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 9.747532E-06
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-3.549416E-06
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) = 1.041666E-04
 pos. sum=1.139141E-04 neg. sum=-3.549416E-06
 nett sum=1.103647E-04
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.129664E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) = 1.164608E-01
 pos. sum=0.11959 neg. sum=0.
 nett sum=0.11959
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.793484
 nett sum=0.
 
 Nett source of KE   at patch named: KESOURCE                =-2.338846E+01
 Non-linearised source for KE    at: KESOURCE                = 2.540253E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) = 2.052758E-11
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.454436E+01 (Ave Out  4.435098E-01 In  0.000000E+00)
 pos. sum=4.589846 neg. sum=-37.932816
 nett sum=-33.342972
 
 Nett source of EP   at patch named: KESOURCE                =-6.089516E+03
 Non-linearised source for EP    at: KESOURCE                = 2.756041E+02
 Nett source of EP   at patch named: KECHEN                  = 5.245246E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.782229E-08
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.396844E+02 (Ave Out  1.950629E+01 In  0.000000E+00)
 pos. sum=330.692169 neg. sum=-6729.200684
 nett sum=-6398.508301
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   800
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  0.000000E+00
       U1       1.639774E+03 -1.641259E+03 -1.485352E+00
       V1       1.139141E-04 -3.549416E-06  1.103647E-04
       W1       1.195905E-01  0.000000E+00  1.195905E-01
       KE       4.589846E+00 -3.793282E+01 -3.334297E+01
       EP       3.306922E+02 -6.729201E+03 -6.398508E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363399E+00 (Pressure=  8.857127E-01, Friction=  1.477686E+00)
  Fy  = -9.434017E-04 (Pressure= -9.336541E-04, Friction= -9.747532E-06)
  Fz  = -2.309196E+00 (Pressure= -2.306067E+00, Friction= -3.129664E-03)
 Pressure force on West side:  4.712271E-02
 Pressure force on East side:  8.385900E-01
 Pressure force on South side:-1.300475E+00
 Pressure force on North side: 1.299541E+00
 Pressure force on Low side:  -7.079015E+00
 Pressure force on High side:  4.772949E+00
 Force unit vector:   7.152612E-01 -2.855119E-04 -6.988572E-01
 Force magnitude:    3.304246E+00
 
  Total moment about X axis =  1.502997E+00
  Total moment about Y axis = -2.155587E+00
  Total moment about Z axis =  5.779327E-01
 
  Moment of Fx about Y axis = -5.098630E-02 at distance Z =  2.157329E-02
  Moment of Fy about X axis = -4.182861E-05 at distance Z =  4.433807E-02
  Moment of Fz about X axis =  1.503038E+00 at distance Y =  6.508924E-01
  Moment of Fx about Z axis =  5.773128E-01 at distance Y =  2.442723E-01
  Moment of Fy about Z axis =  6.196699E-04 at distance X =  6.568463E-01
  Moment of Fz about Y axis = -2.104602E+00 at distance X =  9.114001E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363399E+00
  Fy  = -9.434017E-04
  Fz  = -2.309196E+00
  Ftot=  3.304246E+00
 
 Force unit vector:   7.152612E-01 -2.855119E-04 -6.988572E-01
 
 The total force acts at (centre of pressure):
  X   =  9.114001E-01
  Y   =  2.442723E-01
  Z   =  2.157329E-02
 
 Moments about origin:
  Total moment about X axis =  1.502997E+00
  Total moment about Y axis = -2.155587E+00
  Total moment about Z axis =  5.779327E-01
 
  Moment of Fx about Y axis = -5.098630E-02 at distance Z =  2.157329E-02
  Moment of Fy about X axis = -4.182861E-05 at distance Z =  2.157329E-02
  Moment of Fz about X axis =  1.503038E+00 at distance Y =  2.442723E-01
  Moment of Fx about Z axis =  5.773128E-01 at distance Y =  2.442723E-01
  Moment of Fy about Z axis =  6.196699E-04 at distance X =  9.114001E-01
  Moment of Fz about Y axis = -2.104602E+00 at distance X =  9.114001E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548486E-01
  Cdy =  5.277786E-05
  Cdz =  9.563248E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 ************************************************************
 *** End of sweep 900
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 900 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=   900, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 900 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=   900, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 900 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=   900, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 900 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=   900, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 900 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=   900, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 900
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.588E+01   6.584E-07      4.338E-05
     U1     3.384E+03   3.195E-06      1.081E-02
     V1     3.384E+03   3.440E-07      1.164E-03
     W1     3.384E+03   4.261E-07      1.442E-03
     KE     4.158E+01   2.803E-05      1.166E-03
     EP     7.849E+03   1.059E-05      8.311E-02
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     3.691E-03   1.273E+02     -2.219E+02 (   27,   38,   38)
     U1     7.273E-05   5.238E+01      3.809E+01 (   22,   21,   24)
     V1     1.136E-05   5.753E+00     -5.764E+00 (   22,   19,   24)
     W1     8.872E-06   8.017E+00     -5.201E+00 (   11,    2,    9)
     KE     9.975E-03   2.000E+01      1.134E-04 (   25,   21,   24)
     EP     7.419E-01   1.171E+04      9.347E-04 (   26,   21,   24)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477686E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.000258E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.639782E+03
 pos. sum=1639.774048 neg. sum=-1641.259277
 nett sum=-1.485229
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 9.748925E-06
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-3.549125E-06
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) = 1.415461E-04
 pos. sum=1.512951E-04 neg. sum=-3.549125E-06
 nett sum=1.477459E-04
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.129698E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) = 1.164054E-01
 pos. sum=0.119535 neg. sum=0.
 nett sum=0.119535
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.793484
 nett sum=0.
 
 Nett source of KE   at patch named: KESOURCE                =-2.338852E+01
 Non-linearised source for KE    at: KESOURCE                = 2.540257E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-1.514577E-10
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.454437E+01 (Ave Out  4.435109E-01 In  0.000000E+00)
 pos. sum=4.589849 neg. sum=-37.932892
 nett sum=-33.34304
 
 Nett source of EP   at patch named: KESOURCE                =-6.089542E+03
 Non-linearised source for EP    at: KESOURCE                = 2.756042E+02
 Nett source of EP   at patch named: KECHEN                  = 5.245245E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-1.857312E-08
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.396849E+02 (Ave Out  1.950629E+01 In  0.000000E+00)
 pos. sum=330.692322 neg. sum=-6729.227539
 nett sum=-6398.535156
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep   900
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  0.000000E+00
       U1       1.639774E+03 -1.641259E+03 -1.485229E+00
       V1       1.512951E-04 -3.549125E-06  1.477459E-04
       W1       1.195351E-01  0.000000E+00  1.195351E-01
       KE       4.589849E+00 -3.793289E+01 -3.334304E+01
       EP       3.306923E+02 -6.729228E+03 -6.398535E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363404E+00 (Pressure=  8.857176E-01, Friction=  1.477686E+00)
  Fy  = -9.429170E-04 (Pressure= -9.331681E-04, Friction= -9.748925E-06)
  Fz  = -2.309188E+00 (Pressure= -2.306058E+00, Friction= -3.129698E-03)
 Pressure force on West side:  4.712272E-02
 Pressure force on East side:  8.385949E-01
 Pressure force on South side:-1.300488E+00
 Pressure force on North side: 1.299555E+00
 Pressure force on Low side:  -7.079032E+00
 Pressure force on High side:  4.772974E+00
 Force unit vector:   7.152631E-01 -2.853654E-04 -6.988552E-01
 Force magnitude:    3.304244E+00
 
  Total moment about X axis =  1.502992E+00
  Total moment about Y axis = -2.155581E+00
  Total moment about Z axis =  5.779356E-01
 
  Moment of Fx about Y axis = -5.098654E-02 at distance Z =  2.157335E-02
  Moment of Fy about X axis = -4.183734E-05 at distance Z =  4.437012E-02
  Moment of Fz about X axis =  1.503033E+00 at distance Y =  6.508924E-01
  Moment of Fx about Z axis =  5.773163E-01 at distance Y =  2.442733E-01
  Moment of Fy about Z axis =  6.193030E-04 at distance X =  6.567948E-01
  Moment of Fz about Y axis = -2.104595E+00 at distance X =  9.114006E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363404E+00
  Fy  = -9.429170E-04
  Fz  = -2.309188E+00
  Ftot=  3.304244E+00
 
 Force unit vector:   7.152631E-01 -2.853654E-04 -6.988552E-01
 
 The total force acts at (centre of pressure):
  X   =  9.114006E-01
  Y   =  2.442733E-01
  Z   =  2.157335E-02
 
 Moments about origin:
  Total moment about X axis =  1.502992E+00
  Total moment about Y axis = -2.155581E+00
  Total moment about Z axis =  5.779356E-01
 
  Moment of Fx about Y axis = -5.098654E-02 at distance Z =  2.157335E-02
  Moment of Fy about X axis = -4.183734E-05 at distance Z =  2.157335E-02
  Moment of Fz about X axis =  1.503033E+00 at distance Y =  2.442733E-01
  Moment of Fx about Z axis =  5.773163E-01 at distance Y =  2.442733E-01
  Moment of Fy about Z axis =  6.193030E-04 at distance X =  9.114006E-01
  Moment of Fz about Y axis = -2.104595E+00 at distance X =  9.114006E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548493E-01
  Cdy =  5.275075E-05
  Cdz =  9.563214E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 ************************************************************
 *** End of sweep 1000
 ************************************************************
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 1000 ZSLAB NO= 7 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=   7, ISWEEP=  1000, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 1000 ZSLAB NO= 14 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  14, ISWEEP=  1000, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 1000 ZSLAB NO= 21 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  21, ISWEEP=  1000, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 1000 ZSLAB NO= 28 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  28, ISWEEP=  1000, ISTEP=    1
 
 ************************************************************
 TIME STP= 1 SWEEP NO= 1000 ZSLAB NO= 35 ITERN NO= 1
 
 
 Flow field at ITHYD=   1, IZ=  35, ISWEEP=  1000, ISTEP=    1
 
 ************************************************************
 Whole-field residuals before solution at sweep 1000
 with resref values determined by EARTH
 & resfac=1.0E-05
  variable   resref  (res sum)/resref  (res sum)
     P1     6.588E+01   6.957E-07      4.584E-05
     U1     3.384E+03   3.334E-06      1.128E-02
     V1     3.384E+03   3.421E-07      1.157E-03
     W1     3.384E+03   4.214E-07      1.426E-03
     KE     4.158E+01   5.388E-05      2.241E-03
     EP     7.849E+03   1.800E-05      1.413E-01
 
 max abs corrections for solved-for variables
 for comparison with maximum & minimum values
  variable   max-cor      high           low     (   IX    IY    IZ)
     P1     4.433E-03   1.273E+02     -2.219E+02 (   11,   17,   38)
     U1     3.071E-04   5.238E+01      3.809E+01 (   22,   20,   24)
     V1     5.641E-05   5.753E+00     -5.764E+00 (   22,   21,   24)
     W1     9.063E-06   8.017E+00     -5.201E+00 (   13,    3,    8)
     KE     1.774E-02   2.000E+01      1.125E-04 (   25,   20,   24)
     EP     1.275E+00   1.171E+04      9.239E-04 (   25,   21,   24)
 
 
 ************************************************************
 Sources and sinks
 !! Zero nett sources are not printed !!!
 
    Nett Sources have units of mass_per_unit_time * variable
    Average values have units of the variable
 
    Typically the units of the sources are:
        U1,V1,W1 - Force  - Newtons
        R1       - Mass   - kg/s
        TEM1,H1  - Energy - Watts
 
 Nett source of U1   at patch named:  OB1     (SOLID       ) =-1.477686E+00
 Nett source of U1   at patch named: OB2      (DOM_XMIN_I  ) = 1.639674E+03
 Nett source of U1   at patch named: OB3      (DOM_ZMIN_W  ) = 1.000262E-01
 Nett source of U1   at patch named: OB4      (DOM_XMAX_O  ) =-1.639781E+03
 pos. sum=1639.774048 neg. sum=-1641.259155
 nett sum=-1.485107
 
 Nett source of V1   at patch named:  OB1     (SOLID       ) = 9.738683E-06
 Nett source of V1   at patch named: OB3      (DOM_ZMIN_W  ) =-3.563415E-06
 Nett source of V1   at patch named: OB4      (DOM_XMAX_O  ) = 1.465455E-04
 pos. sum=1.562841E-04 neg. sum=-3.563415E-06
 nett sum=1.527207E-04
 
 Nett source of W1   at patch named:  OB1     (SOLID       ) = 3.129728E-03
 Nett source of W1   at patch named: OB4      (DOM_XMAX_O  ) = 1.163698E-01
 pos. sum=0.1195 neg. sum=0.
 nett sum=0.1195
 
 Nett source of R1   at patch named: OB2      (DOM_XMIN_I  ) = 3.279348E+01
 Nett source of R1   at patch named: OB4      (DOM_XMAX_O  ) =-3.279348E+01 (Mass Out -3.279348E+01 In 0.000000E+00)
 pos. sum=32.793484 neg. sum=-32.79348
 nett sum=3.814697E-06
 
 Nett source of KE   at patch named: KESOURCE                =-2.338846E+01
 Non-linearised source for KE    at: KESOURCE                = 2.540264E+00
 Nett source of KE   at patch named: OB2      (DOM_XMIN_I  ) = 2.049593E+00 (Average  6.250000E-02)
 Nett source of KE   at patch named: OB3      (DOM_ZMIN_W  ) =-3.650039E-10
 Nett source of KE   at patch named: OB4      (DOM_XMAX_O  ) =-1.454438E+01 (Ave Out  4.435139E-01 In  0.000000E+00)
 pos. sum=4.589857 neg. sum=-37.932838
 nett sum=-33.342979
 
 Nett source of EP   at patch named: KESOURCE                =-6.089530E+03
 Non-linearised source for EP    at: KESOURCE                = 2.756048E+02
 Nett source of EP   at patch named: KECHEN                  = 5.245253E+01
 Nett source of EP   at patch named: OB2      (DOM_XMIN_I  ) = 2.635654E+00 (Average  8.037128E-02)
 Nett source of EP   at patch named: OB3      (DOM_ZMIN_W  ) =-8.105180E-08
 Nett source of EP   at patch named: OB4      (DOM_XMAX_O  ) =-6.396830E+02 (Ave Out  1.950642E+01 In  0.000000E+00)
 pos. sum=330.693024 neg. sum=-6729.213379
 nett sum=-6398.520508
 
 
 ************************************************************
 Summary of sources from all Objects/Patches at sweep  1000
    Variable      Inflow        Outflow       Nett
       P1       3.279348E+01 -3.279348E+01  3.814697E-06
       U1       1.639774E+03 -1.641259E+03 -1.485107E+00
       V1       1.562841E-04 -3.563415E-06  1.527207E-04
       W1       1.194996E-01  0.000000E+00  1.194996E-01
       KE       4.589857E+00 -3.793284E+01 -3.334298E+01
       EP       3.306930E+02 -6.729213E+03 -6.398521E+03
 ************************************************************
 
 
 Integrated force on object: SOLID       
 ------------------------------------
  Fx  =  2.363400E+00 (Pressure=  8.857136E-01, Friction=  1.477686E+00)
  Fy  = -9.461110E-04 (Pressure= -9.363724E-04, Friction= -9.738683E-06)
  Fz  = -2.309212E+00 (Pressure= -2.306082E+00, Friction= -3.129728E-03)
 Pressure force on West side:  4.710376E-02
 Pressure force on East side:  8.386098E-01
 Pressure force on South side:-1.300580E+00
 Pressure force on North side: 1.299644E+00
 Pressure force on Low side:  -7.079223E+00
 Pressure force on High side:  4.773142E+00
 Force unit vector:   7.152589E-01 -2.863309E-04 -6.988596E-01
 Force magnitude:    3.304257E+00
 
  Total moment about X axis =  1.503007E+00
  Total moment about Y axis = -2.155602E+00
  Total moment about Z axis =  5.779365E-01
 
  Moment of Fx about Y axis = -5.098635E-02 at distance Z =  2.157331E-02
  Moment of Fy about X axis = -4.216970E-05 at distance Z =  4.457162E-02
  Moment of Fz about X axis =  1.503049E+00 at distance Y =  6.508924E-01
  Moment of Fx about Z axis =  5.773136E-01 at distance Y =  2.442725E-01
  Moment of Fy about Z axis =  6.229468E-04 at distance X =  6.584288E-01
  Moment of Fz about Y axis = -2.104616E+00 at distance X =  9.114001E-01
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 
 Integrated forces for all included objects
 ------------------------------------------
  Fx  =  2.363400E+00
  Fy  = -9.461110E-04
  Fz  = -2.309212E+00
  Ftot=  3.304257E+00
 
 Force unit vector:   7.152589E-01 -2.863309E-04 -6.988596E-01
 
 The total force acts at (centre of pressure):
  X   =  9.114001E-01
  Y   =  2.442725E-01
  Z   =  2.157331E-02
 
 Moments about origin:
  Total moment about X axis =  1.503007E+00
  Total moment about Y axis = -2.155602E+00
  Total moment about Z axis =  5.779365E-01
 
  Moment of Fx about Y axis = -5.098635E-02 at distance Z =  2.157331E-02
  Moment of Fy about X axis = -4.216970E-05 at distance Z =  2.157331E-02
  Moment of Fz about X axis =  1.503049E+00 at distance Y =  2.442725E-01
  Moment of Fx about Z axis =  5.773136E-01 at distance Y =  2.442725E-01
  Moment of Fy about Z axis =  6.229468E-04 at distance X =  9.114001E-01
  Moment of Fz about Y axis = -2.104616E+00 at distance X =  9.114001E-01
 
 Normalisation areas:
  AREAx =  1.120320E-01
  AREAy =  3.006720E-01
  AREAz =  4.061660E-01
 
 Reference density =  1.189000E+00, Reference velocity =  1.000000E+01
   Free-stream dynamic head =  5.945000E+01
 
 Drag coefficients based on total forces:
   (Cd = Force /(Dynamic head * Normalisation area)
  Cdx =  3.548487E-01
  Cdy =  5.292944E-05
  Cdz =  9.563313E-02
 
  Total exposed area             =  2.243730E-01
  Sum area with P1 > 10.00       =  2.040769E-01
  Ratio area P1> 10.00/Totalarea = 90.95 %
 
 ************************************************************
 spot values vs sweep or iteration number
 IXMON= 12 IYMON= 18 IZMON= 38 TIMESTEP= 1
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           U1           V1           W1           KE  
      1   0.0000E+00   1.0000E-10   1.0000E-10   0.0000E+00   4.9462E-02
     51  -9.6934E+00   5.1613E+01  -1.2699E-01   0.0000E+00   6.4738E-02
    101   9.0758E+00   5.0739E+01  -4.1160E-02   0.0000E+00   6.2692E-02
    151   1.2968E+01   5.0160E+01  -4.1150E-02   0.0000E+00   6.1770E-02
    201   9.0778E+00   5.0043E+01  -5.5375E-02   0.0000E+00   6.1699E-02
    251   7.0994E+00   5.0058E+01  -5.9384E-02   0.0000E+00   6.1702E-02
    301   5.1600E+00   5.0073E+01  -5.9308E-02   0.0000E+00   6.1706E-02
    351   3.1483E+00   5.0077E+01  -5.8935E-02   0.0000E+00   6.1708E-02
    401   2.0550E+00   5.0077E+01  -5.8885E-02   0.0000E+00   6.1708E-02
    451   1.7394E+00   5.0076E+01  -5.8880E-02   0.0000E+00   6.1707E-02
    501   1.6673E+00   5.0076E+01  -5.8829E-02   0.0000E+00   6.1707E-02
    551   1.6473E+00   5.0076E+01  -5.8809E-02   0.0000E+00   6.1707E-02
    601   1.6487E+00   5.0076E+01  -5.8816E-02   0.0000E+00   6.1707E-02
    651   1.6502E+00   5.0076E+01  -5.8815E-02   0.0000E+00   6.1707E-02
    701   1.6524E+00   5.0076E+01  -5.8818E-02   0.0000E+00   6.1707E-02
    751   1.6496E+00   5.0076E+01  -5.8820E-02   0.0000E+00   6.1707E-02
    801   1.6517E+00   5.0076E+01  -5.8817E-02   0.0000E+00   6.1707E-02
    851   1.6479E+00   5.0076E+01  -5.8819E-02   0.0000E+00   6.1707E-02
    901   1.6488E+00   5.0076E+01  -5.8817E-02   0.0000E+00   6.1707E-02
    951   1.6492E+00   5.0076E+01  -5.8818E-02   0.0000E+00   6.1707E-02
   ISWP       EP  
      1   2.0146E+01
     51   9.0276E-02
    101   8.1603E-02
    151   7.8538E-02
    201   7.8417E-02
    251   7.8420E-02
    301   7.8427E-02
    351   7.8429E-02
    401   7.8429E-02
    451   7.8429E-02
    501   7.8429E-02
    551   7.8429E-02
    601   7.8429E-02
    651   7.8429E-02
    701   7.8429E-02
    751   7.8429E-02
    801   7.8429E-02
    851   7.8429E-02
    901   7.8429E-02
    951   7.8429E-02
   Variable    1 = P1     2 = U1     3 = V1     4 = W1     5 = KE  
     Minval= -9.693E+00  1.000E-10 -1.270E-01  0.000E+00  4.946E-02
     Maxval=  1.297E+01  5.161E+01  1.000E-10  0.000E+00  6.474E-02
     Cellav=  2.857E+00  4.768E+01 -5.741E-02  0.000E+00  6.130E-02
   Variable    6 = EP  
     Minval=  7.842E-02
     Maxval=  2.015E+01
     Cellav=  1.083E+00
 1.00 6..5.2..1.+....+....+....+....+....+....+....+....+
      .       2  2 2  2 2  2  2 2  2  2 2  2 2  2  2 2  2
 0.90 +                                                 +
      .    5     1                                      .
 0.80 +       5  5 5  5 5  5  5 5  5  5 5  5 5  5  5 5  5
      .            1                                    .
 0.70 +    3  3                                         +
      .               1                                 .
 0.60 +                                                 +
      .          3 3  3 3  3  3 3  3  3 3  3 3  3  3 3  3
 0.50 +                    1  1 1  1  1 1  1 1  1  1 1  1
      1                                                 .
 0.40 +                                                 +
      .                                                 .
 0.30 +                                                 +
      .                                                 .
 0.20 +                                                 +
      .                                                 .
 0.10 +                                                 +
      .                                                 .
 0.00 5..6.6..6.+6.6.+6.6.+6..6+6..6+.6.6+.6.6+.6..6.6..6
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 
 ************************************************************
 residuals vs sweep or iteration number
 
 Tabulation of abscissa and ordinates...
   ISWP       P1           U1           V1           W1           KE  
      1   1.1000E+00   1.0152E+00   3.0251E-09   1.9974E-12   1.6046E+01
     51   1.5269E-04   3.8604E-02   1.3124E-02   2.0133E-02   4.1231E-02
    101   1.9637E-04   3.0243E-02   8.1790E-03   1.3505E-02   1.7303E-02
    151   2.0476E-04   2.3240E-02   5.7872E-03   1.1805E-02   9.9419E-03
    201   1.5272E-04   1.9636E-02   3.2526E-03   7.8444E-03   6.4284E-03
    251   1.4316E-04   1.6501E-02   2.1615E-03   5.3252E-03   4.2911E-03
    301   1.9245E-04   1.2778E-02   1.6606E-03   5.0890E-03   3.0757E-03
    351   2.2859E-04   7.7926E-03   1.1989E-03   4.0019E-03   1.9277E-03
    401   1.7537E-04   3.2728E-03   6.0708E-04   2.4594E-03   9.5157E-04
    451   7.6096E-05   9.4535E-04   2.2285E-04   9.7980E-04   3.8625E-04
    501   1.7958E-05   1.9691E-04   6.1620E-05   2.5916E-04   1.4265E-04
    551   3.5399E-06   5.7664E-05   1.4223E-05   4.7163E-05   5.5660E-05
    601   2.0992E-06   2.0043E-05   4.1012E-06   1.4780E-05   4.8767E-05
    651   1.1541E-06   5.8552E-06   1.7033E-06   4.7993E-06   4.6728E-05
    701   7.2848E-07   3.3633E-06   6.9218E-07   9.1781E-07   2.2443E-05
    751   6.6718E-07   3.2414E-06   3.6288E-07   4.4719E-07   2.6915E-05
    801   6.5328E-07   3.2383E-06   3.2058E-07   4.0948E-07   3.3730E-05
    851   6.6901E-07   3.2781E-06   3.5223E-07   4.6082E-07   4.4707E-05
    901   6.5640E-07   3.2294E-06   3.4984E-07   4.4926E-07   1.8940E-05
    951   6.4140E-07   3.1869E-06   3.2993E-07   4.1627E-07   2.7028E-05
   ISWP       EP  
      1   3.6241E+01
     51   5.8181E-02
    101   1.7567E-02
    151   9.9540E-03
    201   6.9123E-03
    251   4.9010E-03
    301   2.8486E-03
    351   1.3477E-03
    401   5.1967E-04
    451   1.7952E-04
    501   5.5763E-05
    551   2.0944E-05
    601   1.3332E-05
    651   1.2714E-05
    701   1.0119E-05
    751   1.1897E-05
    801   1.3383E-05
    851   1.8218E-05
    901   6.6418E-06
    951   1.2780E-05
   Variable    1 = P1     2 = U1     3 = V1     4 = W1     5 = KE  
     Minval= -1.426E+01 -1.266E+01 -1.962E+01 -2.694E+01 -1.087E+01
     Maxval=  9.531E-02  1.513E-02 -4.333E+00 -3.905E+00  2.775E+00
   Variable    6 = EP  
     Minval= -1.192E+01
     Maxval=  3.590E+00
 1.00 6..4.4..4.+....+....+....+....+....+....+....+....+
      .    3  3  4 4  4 4                               .
 0.90 +          3 3       4                            +
      .               3 3     4                         .
 0.80 +                    3    4                       +
      .  2                    3    4                    .
 0.70 +    2  2  2                    4                 +
      .            2  2         3       4               .
 0.60 +  6              2                               +
      .  5                 2       3       4 4  4  4 4  4
 0.50 +    6                                            +
      .       6  6 6          2       3                 .
 0.40 +  1 1  1  1 5  6 1  1            3               +
      .               5 6     1 2          3            .
 0.30 +                    6                 3  3  3 3  3
      .                         1  2                    .
 0.20 +                       6                         +
      .                         6     2                 .
 0.10 +                            5  1                 +
      .                            6  6 6  6 6  6  6    6
 0.00 4....+....+....+....+....+....+....+.5.2+.2..2.6..2
      0   .1   .2   .3   .4   .5   .6   .7   .8   .9  1.0
 the abscissa is      ISWP.  min= 1.00E+00 max= 9.51E+02
 
 ************************************************************
 ************************************************************
 
 ************************************************************
 SATLIT RUN NUMBER =   1 ; LIBRARY REF.=    0
 Run started at 03:10:39 on Monday, 08 April 2024                              
 Run completed at 03:14:44 on Monday, 08 April 2024                            
 CPU time of run 245 s
 This includes 245 seconds of user time and 0 seconds of system time.
 TIME/(VARIABLES*CELLS*TSTEPS*SWEEPS*ITS) = 7.462E-07
 ************************************************************
