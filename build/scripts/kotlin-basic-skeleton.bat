@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem
@rem SPDX-License-Identifier: Apache-2.0
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  kotlin-basic-skeleton startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and KOTLIN_BASIC_SKELETON_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\kotlin-basic-skeleton-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\kotlin-reflect-1.9.10.jar;%APP_HOME%\lib\spotless-plugin-gradle-6.22.0.jar;%APP_HOME%\lib\spotless-lib-extra-2.42.0.jar;%APP_HOME%\lib\solstice-1.7.3.jar;%APP_HOME%\lib\okhttp-4.11.0.jar;%APP_HOME%\lib\okio-jvm-3.2.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.9.10.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.9.10.jar;%APP_HOME%\lib\kotlin-stdlib-1.9.10.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.9.10.jar;%APP_HOME%\lib\durian-io-1.2.0.jar;%APP_HOME%\lib\durian-collect-1.2.0.jar;%APP_HOME%\lib\durian-core-1.2.0.jar;%APP_HOME%\lib\org.eclipse.jgit-6.7.0.202309050840-r.jar;%APP_HOME%\lib\spotless-lib-2.42.0.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\JavaEWAH-1.2.3.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\commons-codec-1.16.0.jar;%APP_HOME%\lib\concurrent-trees-2.6.1.jar;%APP_HOME%\lib\xz-1.9.jar;%APP_HOME%\lib\durian-swt.os-4.2.1.jar;%APP_HOME%\lib\org.eclipse.osgi-3.18.300.jar


@rem Execute kotlin-basic-skeleton
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %KOTLIN_BASIC_SKELETON_OPTS%  -classpath "%CLASSPATH%" com.codely.demo.CodelyberKt %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable KOTLIN_BASIC_SKELETON_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%KOTLIN_BASIC_SKELETON_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
