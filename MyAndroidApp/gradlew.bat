@echo off
REM Gradle startup script for Windows

setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

set GRADLE_HOME=%DIRNAME%gradle\wrapper
set GRADLE_WRAPPER_JAR=%GRADLE_HOME%\gradle-wrapper.jar

if not exist "%GRADLE_WRAPPER_JAR%" (
    echo ERROR: Gradle wrapper jar not found at %GRADLE_WRAPPER_JAR%.
    exit /b 1
)

set JAVA_OPTS=%JAVA_OPTS% %DEFAULT_JVM_OPTS%

java -cp "%GRADLE_WRAPPER_JAR%" org.gradle.wrapper.GradleWrapperMain %* 

endlocal