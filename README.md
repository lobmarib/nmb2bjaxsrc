This project contains a build.bat file to help generating jax src for EEC B2B Wsdls contained in the wsdl27.0.0 folder

It can be adapted for newer versions.

Before using it, edit the build.bat file to include the path to your WS Tools folder (where the wsimport lives)

Then just run the build.bat file

The default target directory will be jax-src, it can be changed in each call to wsimport - it is the -d parameter.

Developed by Marco Ribeiro (marco.ribeiro.ext@eurocontrol.int)
