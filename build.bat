set WSTOOLS_HOME=

IF [%WSTOOLS_HOME%] == [] GOTO :FAIL

ECHO Compilation of WSDLs
@echo on
%WSTOOLS_HOME%\bin\wsimport -d jax-src -keep -Xnocompile -b wsdl27.0.0\bindings\common.ws -b wsdl27.0.0\bindings\common.xjb wsdl27.0.0\CommonServices_OPS_27.0.0.wsdl
%WSTOOLS_HOME%\bin\wsimport -d jax-src -keep -Xnocompile -b wsdl27.0.0\bindings\general.ws -b wsdl27.0.0\bindings\general.xjb -b wsdl27.0.0\bindings\common.xjb wsdl27.0.0\GeneralinformationServices_OPS_27.0.0.wsdl
%WSTOOLS_HOME%\bin\wsimport -d jax-src -keep -Xnocompile -b wsdl27.0.0\bindings\airspace.ws -b wsdl27.0.0\bindings\airspace.xjb -b wsdl27.0.0\bindings\aixm.xjb  -b wsdl27.0.0\bindings\common.xjb -b wsdl27.0.0\bindings\xlink.xjb wsdl27.0.0\AirspaceServices_OPS_27.0.0.wsdl
%WSTOOLS_HOME%\bin\wsimport -d jax-src -keep -Xnocompile -b wsdl27.0.0\bindings\flow.ws -b wsdl27.0.0\bindings\flow.xjb -b wsdl27.0.0\bindings\flight.xjb  -b wsdl27.0.0\bindings\airspace.xjb -b wsdl27.0.0\bindings\aixm.xjb -b wsdl27.0.0\bindings\common.xjb -b wsdl27.0.0\bindings\xlink.xjb -b wsdl27.0.0\bindings\ares.xjb wsdl27.0.0\FlowServices_OPS_27.0.0.wsdl
%WSTOOLS_HOME%\bin\wsimport -d jax-src -keep -Xnocompile -b wsdl27.0.0\bindings\flight.ws -b wsdl27.0.0\bindings\flight.xjb -b wsdl27.0.0\bindings\flow.xjb  -b wsdl27.0.0\bindings\airspace.xjb -b wsdl27.0.0\bindings\aixm.xjb -b wsdl27.0.0\bindings\common.xjb -b wsdl27.0.0\bindings\xlink.xjb -b wsdl27.0.0\bindings\ares.xjb wsdl27.0.0\FlightServices_OPS_27.0.0.wsdl
%WSTOOLS_HOME%\bin\wsimport -d jax-src -keep -Xnocompile -b wsdl27.0.0\bindings\ares.ws -b wsdl27.0.0\bindings\ares.xjb  -b wsdl27.0.0\bindings\airspace.xjb -b wsdl27.0.0\bindings\common.xjb -b wsdl27.0.0\bindings\aixm.xjb  wsdl27.0.0\ARESServices_27.0.0.wsdl

ECHO Success

:FAIL

ECHO WSTOOLS path not defined