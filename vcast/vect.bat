rem store directory this script is saved in
SET VCAST_PRJ_DIR=%~dp0
rem remove tailing \
SET VCAST_PRJ_DIR=%VCAST_PRJ_DIR:~0,-1%


set PATH=%PATH%;C:\sysgcc\arm-eabi\bin
set LM_APP_DISABLE_CACHE_READ=1

set v_WORKDIR=%SystemDrive%\workarea
set SRC_DIR=%v_WORKDIR%\src\wtb

::  set VECTOR_LICENSE_FILE=@localhost
set VECTOR_LICENSE_FILE=27000@RD-BUILDSERVER

::  lic itself
:: set v_LIC=vector-DEMO.lic
:: set v_LIC=vector-RD-BUILDSERVER.lic
:: set VECTOR_LICENSE_FILE=%v_WORKDIR%\cfg\VectorCAST\%v_LIC%

::  vector-RD-BUILDSERVER.lic
::  start

set VECTORCAST_DIR=%SystemDrive%\VCAST
start %VECTORCAST_DIR%\vcastqt -lc
