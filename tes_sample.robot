*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}      http://localhost:4723/wd/hub
${PLATFORM_NAME}   Android
${DEVICE_NAME}     092243731T001512
${APP_PACKAGE}     com.example.flutter_test_app
${APP_ACTIVITY}    com.example.flutter_test_app.MainActivity

*** Test Cases ***
Buka Aplikasi Flutter Dan Klik Tombol
    Open Application    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    deviceName=${DEVICE_NAME}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}    
    ...    automationName=UiAutomator2
    Sleep    5s
    [Teardown]    Close Application

