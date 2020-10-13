@echo off
setlocal
cd ..
set GCBase=%CD%
set PATH_ANT=%GCBase%\prog\apache-ant-1.9.6
set GCBsax=%GCBase%\prog\saxon6-5-5
set GCButil=%GCBase%\prog\utils
set GCBsaxjava=..\\prog\\saxon6-5-5\\saxon.jar
set GCBruby=%GCBase%\prog\ruby-2.2.2-i386-mingw32\bin
set GCBxsldir=%GCBase%\prog\docbook-xsl-ns-1.78.1
set GCBxsl=%GCBxsldir%\htmlhelp\htmlhelp.xsl
set GCBweb=%GCBxsldir%\webhelp\webhelp.xsl
rem set PATH=%JAVA_HOME%;%PATH_ANT%\bin;%GCBruby%;%PATH%;%GCBsax%;%GCButil%
set PATH=%PATH_ANT%\bin;%GCBruby%;%PATH%;%GCBsax%;%GCButil%
cd .\source

if -%1-==-- goto :ERR1
if -%2-==-- goto :ERR2
if not exist %1.adoc goto :ERR3

call asciidoctor -v 2> NUL
if NOT ERRORLEVEL 1 goto :TEST1
cd %GCBruby%
echo Installing asciidoctor...
call gem install -N asciidoctor
cd %GCBase%\source
:TEST1
call asciidoctor-pdf -v 2> NUL
if NOT ERRORLEVEL 1 goto :TEST2
cd %GCBruby%
echo Installing asciidoctor-pdf...
call gem install --pre -N asciidoctor-pdf
cd %GCBase%\source
:TEST2
call coderay -v 2> NUL
if NOT ERRORLEVEL 1 goto :GOAHEAD
cd %GCBruby%
echo Installing coderay...
call gem install -N coderay
cd %GCBase%\source
:GOAHEAD
if /I %2 == pdf   goto  :pdf
if /I %2 == chm   goto  :chm
if /I %2 == xml   goto  :xml
if /I %2 == html  goto  :html
if /I %2 == html5 goto  :html5
if /I %2 == all   goto  :all
if /I %2 == web   goto  :web
echo ERROR  Invalid %2 argument for %0 conversion_type. Should be pdf, chm, xml, html, html5, web or all.
echo SYNTAX gcbdoc filename conversion_type
goto :END

:CHM
echo .
echo Generating chm file...
call asciidoctor -b docbook  %1.adoc
xcopy .\images %GCBase%\output\chm\images /I /Y > NUL
cd ..\output\chm
if ERRORLEVEL 1 goto :ERROR
set CLASSPATH=%GCBsax%\saxon.jar;%GCBxsl%\extensions\saxon65.jar
call java com.icl.saxon.StyleSheet ..\..\source\%1.xml %GCBxsl% ^
 chunk.separate.lots=0 chunk.section.depth=6 htmlhelp.remember.window.position=1 use.id.as.filename=1 ^
 htmlhelp.hhp="%1.hhp" htmlhelp.hhc="%1.hhc" htmlhelp.chm="%1.chm" generate.toc=" " ^
 generate.section.toc.level=6 chunk.first.sections=1 htmlhelp.hhc.show.root=0 ^
 htmlhelp.default.topic="_introducing_pickit_autowatch.html" ^
 html.stylesheet="gcbdoc.css" generate.book.toc=0 htmlhelp.title="PICkit: AutoWatch Help"
if %1 == gcbasic call ..\..\source\cleanhhc.bat
copy %GCBase%\source\gcbdoc.css .
rem copy %GCBase%\source\images\logo.png .\images
call %GCBase%\prog\utils\hhc %1.hhp
del *.htm*
del *.hh*
del *.css
rmdir .\images /s /q
cd %GCBase%\source
del %1.xml
set CLASSPATH=
if /I %2 == chm goto :END

:XML
echo .
echo Generating xml file...
call asciidoctor -b docbook -D ..\output\xml\ %1.adoc
if ERRORLEVEL 1 goto :ERROR
if /I %2 == xml goto :END

:HTML
echo .
echo Generating html file...
xcopy .\images ..\output\html\images /I /Y > NUL
call asciidoctor -D ..\output\html\ %1.adoc
if ERRORLEVEL 1 goto :ERROR
if /I %2 == html goto :END

:HTML5
echo .
echo Generating html5 file...
xcopy .\images ..\output\html5\images /I /Y > NUL
call asciidoctor -b html5 -a toc2 -a theme=flask -D ..\output\html5\ %1.adoc
if ERRORLEVEL 1 goto :ERROR
if /I %2 == html5 goto :END

:WEB
echo .
echo Generating webhelp file...
call asciidoctor -b docbook %1.adoc
if ERRORLEVEL 1 goto :ERROR
rem
echo create webhelp build.xml file
rem
echo ^<project^>                                    >  build.xml
echo   ^<property name="input-xml" value="%1.xml"/^>                  >> build.xml
echo   ^<property name="input-images-dirs" value="images/** figures/** graphics/**"/^>  >> build.xml
echo   ^<property name="output-dir" value="../output/web/%1"/^>               >> build.xml
echo   ^<import file="%GCBxsldir%\webhelp\build.xml"/^>                 >> build.xml
echo ^</project^>                                   >> build.xml
rem
echo calling ant...
call ant webhelp
if ERRORLEVEL 1 goto :ERROR
del %1.xml
del build.xml
if /I %2 == web goto :END

:PDF
echo .
echo Generating pdf file...
call asciidoctor-pdf -D ..\output\pdf\ %1.adoc
if ERRORLEVEL 1 goto :ERROR
goto :END

:ALL
echo .
echo Generating all files...
goto :CHM

:ERR1
echo ERROR first parameter missing
echo SYNTAX gcbdoc filename conversion_type
goto :END

:ERR2
echo ERROR second parameter missing
echo SYNTAX gcbdoc filename conversion_type
goto :END

:ERR3
echo ERROR file %1.adoc does not exists
echo SYNTAX gcbdoc filename conversion_type
goto :END

:ERROR
echo ERROR running %0 trying conversion to %2 from %1.adoc file
echo SYNTAX gcbdoc filename conversion_type

:END
endlocal
