#include <array.au3>
#include <Debug.au3>

#RequireAdmin
#pragma compile(ExecLevel, requireAdministrator)
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator

Local $nextButton = "!n"
Local $tabKey = "+{TAB}"
Local $installPath = "C:\cygwin64"
Local $cygwinExeLocation = "c:\cygwin-setup-x86_64.exe"

Func InstallCygwin()
	Run($cygwinExeLocation)

	Local $expectedTitle = "Cygwin Setup"
	WinWaitActive($expectedTitle)

	Local $actualTitle = WinGetTitle("[ACTIVE]")
	ConsoleWrite ( "$actualTitle =" & $actualTitle)
	_Assert($actualTitle==$expectedTitle)
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Choose Installation Type")
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Choose Installation Directory")
	Send($installPath)
	Send($tabKey)
	Send($tabKey)
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Select Local Package Directory")
	Send($installPath)
	Send($tabKey)
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Select Connection Type")
	Send($tabKey)
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Choose Download Site(s)");
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Select Packages");
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Review and confirm changes");
	Send($nextButton)

	WinWaitActive("Cygwin Setup - Installation Status and Create Icons")
	Send($tabKey)
	Send($tabKey)
	Send($tabKey)
	;Send("Finish")
	ControlClick("Cygwin Setup - Installation Status and Create Icons", "", "Finish")
	;WinKill("Cygwin Setup - Installation Status and Create Icons")
	;WinClose("Cygwin Setup - Installation Status and Create Icons")
	;Send("Yes")
	;Send("Yes")
EndFunc
