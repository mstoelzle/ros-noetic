:: Generated by vinca http://github.com/RoboStack/vinca.
:: DO NOT EDIT!
setlocal

set "PYTHONPATH=%LIBRARY_PREFIX%\lib\site-packages;%SP_DIR%"

pushd %SRC_DIR%\%PKG_NAME%\src\work

mkdir %LIBRARY_PREFIX%\lib\site-packages

for /f "usebackq tokens=*" %%a in ('%LIBRARY_PREFIX%') do (
  set _LIBRARY_PREFIX_PATH=%%~pna
  set _LIBRARY_PREFIX_ROOT=%%~da\
)

%PYTHON% setup.py install ^
    --prefix=%_LIBRARY_PREFIX_PATH% ^
    --install-scripts=%_LIBRARY_PREFIX_PATH%\bin ^
    --root=%_LIBRARY_PREFIX_ROOT%
if errorlevel 1 exit 1
