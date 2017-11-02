
:: build my doc together
rmdir /S /Q source\
mkdir source\
copy /Y ..\README.rst source\
copy /Y ..\README-CN.rst source\
xcopy /Y /T ..\doc source\doc\
xcopy /Y /S /E ..\doc source\doc\

:: exclude undoc members
SET SPHINX_APIDOC_OPTIONS=members,show-inheritance
sphinx-apidoc -Me -o source/ ../poco ../poco/utils/simplerpc
sphinx-build -b html . ../doc-auto
