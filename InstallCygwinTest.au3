#include <array.au3>
#include <Debug.au3>
#include <WriteInNotepad.au3>
#include <InstallCygwin.au3>

#RequireAdmin
#pragma compile(ExecLevel, requireAdministrator)
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator

Local $inputText = "Hello, I am Michelle....Let's Install a cygwin~~~"

WriteInNotepad($inputText)
InstallCygwin()
