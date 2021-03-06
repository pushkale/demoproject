@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  demoproject startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and DEMOPROJECT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\demoproject.jar;%APP_HOME%\lib\spring-boot-starter-web-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-data-mongodb-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-config-1.4.2.RELEASE.jar;%APP_HOME%\lib\groovy-all-2.4.5.jar;%APP_HOME%\lib\mongodb-driver-3.2.0.jar;%APP_HOME%\lib\jackson-modules-java8-2.8.5.pom;%APP_HOME%\lib\springfox-swagger2-2.4.0.jar;%APP_HOME%\lib\springfox-swagger-ui-2.4.0.jar;%APP_HOME%\lib\spring-cloud-starter-1.3.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.5.10.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.3.6.Final.jar;%APP_HOME%\lib\spring-boot-actuator-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-cloud-config-client-1.4.2.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.8.10.jar;%APP_HOME%\lib\spring-webmvc-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-web-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-data-mongodb-1.10.10.RELEASE.jar;%APP_HOME%\lib\mongodb-driver-core-3.2.0.jar;%APP_HOME%\lib\bson-3.2.0.jar;%APP_HOME%\lib\springfox-swagger-common-2.4.0.jar;%APP_HOME%\lib\swagger-models-1.5.6.jar;%APP_HOME%\lib\swagger-annotations-1.5.6.jar;%APP_HOME%\lib\springfox-spring-web-2.4.0.jar;%APP_HOME%\lib\springfox-schema-2.4.0.jar;%APP_HOME%\lib\springfox-spi-2.4.0.jar;%APP_HOME%\lib\springfox-core-2.4.0.jar;%APP_HOME%\lib\guava-18.0.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\spring-plugin-metadata-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-plugin-core-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-1.13.10.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.5.10.RELEASE.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.25.jar;%APP_HOME%\lib\logback-classic-1.1.11.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.25.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-boot-1.5.10.RELEASE.jar;%APP_HOME%\lib\spring-context-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.3.14.RELEASE.jar;%APP_HOME%\lib\spring-core-4.3.14.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.27.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.27.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.27.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.1.Final.jar;%APP_HOME%\lib\jackson-annotations-2.8.0.jar;%APP_HOME%\lib\jackson-core-2.8.10.jar;%APP_HOME%\lib\spring-cloud-context-1.3.2.RELEASE.jar;%APP_HOME%\lib\spring-cloud-commons-1.3.2.RELEASE.jar;%APP_HOME%\lib\spring-security-rsa-1.0.3.RELEASE.jar;%APP_HOME%\lib\tomcat-annotations-api-8.5.27.jar;%APP_HOME%\lib\spring-security-crypto-4.2.4.RELEASE.jar;%APP_HOME%\lib\httpclient-4.5.5.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.55.jar;%APP_HOME%\lib\logback-core-1.1.11.jar;%APP_HOME%\lib\httpcore-4.4.9.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\bcprov-jdk15on-1.55.jar

@rem Execute demoproject
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %DEMOPROJECT_OPTS%  -classpath "%CLASSPATH%" com.ibm.customer.Demo1Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable DEMOPROJECT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%DEMOPROJECT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
