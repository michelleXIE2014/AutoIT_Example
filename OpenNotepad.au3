#include <array.au3>

#RequireAdmin
#pragma compile(ExecLevel, requireAdministrator)
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator

Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Send("Hello, I am Michelle....")
Sleep(5000)
WinClose("Untitled - Notepad")
WinWaitActive("Notepad", "Save")
;WinWaitActive("Notepad", "Do you want to save") ; When running under Windows XP
Send("!n")

