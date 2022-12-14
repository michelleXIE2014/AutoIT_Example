#include <array.au3>
#include <Debug.au3>

#RequireAdmin
#pragma compile(ExecLevel, requireAdministrator)
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator

Local $nextButton = "!n"

Func WriteInNotepad($vInputText)
	Run("notepad.exe")
	WinWaitActive("Untitled - Notepad")
	Send($vInputText)	
	Sleep(5000)
	WinClose("*Untitled - Notepad")
	WinWaitActive("Notepad", "Save")
	Send($nextButton)
EndFunc

