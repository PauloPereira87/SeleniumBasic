
' ---------------------------------------------------------------------------------------
' This script works with a browser installed on another station.
'
' Selenium Standalone Server:
'  http://www.seleniumhq.org/download/
'
' Command line to start the server:
'  java -jar selenium-server-standalone-2.47.1.jar
'
' ---------------------------------------------------------------------------------------

Const URI_SERVER = "http://127.0.0.1:4444/wd/hub"

Class Script
    Dim driver

    Sub Class_Initialize
        Set driver = CreateObject("Selenium.WebDriver")
        driver.StartRemotely URI_SERVER, "chrome"
        driver.Wait 1000
    End Sub

    Sub Class_Terminate
        driver.Quit    'Stops the browser
    End Sub
End Class

Set s = New Script
