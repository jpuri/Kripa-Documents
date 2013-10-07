@echo off
SET database=kripa
SET backupfilelocation=e:\sl-marine\
SET backupfilename=database.dump
SET username=postgres

FOR /F "TOKENS=1* DELIMS= " %%A IN ('DATE/T') DO SET CDATE=%%B
FOR /F "TOKENS=1,2 eol=/ DELIMS=/ " %%A IN ('DATE/T') DO SET mm=%%B
FOR /F "TOKENS=1,2 DELIMS=/ eol=/" %%A IN ('echo %CDATE%') DO SET dd=%%B
FOR /F "TOKENS=2,3 DELIMS=/ " %%A IN ('echo %CDATE%') DO SET yyyy=%%B
SET date=%dd%%mm%%yyyy%

pg_dump -U%username% -w %database% > %backupfilelocation%%date%%backupfilename%