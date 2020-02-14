SendMode Input
SetTitleMatchMode, 2
#IfWinActive, Lords of Mayhem

~LButton::
    KeyWait, LButton, T0.2
    if ErrorLevel
        Send, {NumpadDiv down}

	while GetKeyState("LButton", "P") {
		Send, {LAlt down}
		Sleep, 20
		Send, {LAlt up}
	}

Return

~LButton up::Send, {NumpadDiv up}

	Loop {
		Send, {LAlt down}
		Sleep, 20
		Send, {LAlt up}
		break
	}

~LShift::Send, {NumpadDiv up}

	Loop {
		Send, {LAlt down}
		Sleep, 20
		Send, {LAlt up}
		break
	}

~LShift up::
    if GetKeyState("LButton","P")
        Send, {NumpadDiv down}

	Loop {
		Send, {LAlt down}
		Sleep, 20
		Send, {LAlt up}
		break
	}
Return