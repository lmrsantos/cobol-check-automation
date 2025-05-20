//ALPHAJ JOB 1,NOTIFY=&SYSUID
//*******************************************************
//COBRUN EXEC IGYWCL
//COBOL.SYSIN DD DSN=&SYSUID..CBL(ALPHA),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(ALPHA),DISP=SHR
//*******************************************************
// IF RC = 0 THEN
//*******************************************************
//RUN EXEC PGM=ALPHA
//STEPLIB DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC DD DSN=&SYSUID..DATA,DISP=SHR
//PRTLINE DD SYSOUT=*,OUTLIM=15000
//SYSOUT DD SYSOUT=*,OUTLIM=15000
//CEEDUMP DD DUMMY
//SYSUDUMP DD DUMMY
//*******************************************************
// ELSE
// ENDIF 