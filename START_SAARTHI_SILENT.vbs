Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Get the directory where this script is located
strScriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)

' Start the server in a hidden window
strServerBat = strScriptPath & "\RUN_SAARTHI.bat"
objShell.Run """" & strServerBat & """", 0, False

' Wait 3 seconds for server to start
WScript.Sleep 3000

' Open the HTML file in default browser
strHtmlFile = strScriptPath & "\Saarthi.html"
objShell.Run """" & strHtmlFile & """", 1, False
