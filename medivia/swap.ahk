SetDefaultMouseSpeed, 1
SetMouseDelay, 0
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetBatchLines -1
SendMode Input
#SingleInstance Force


#IfWinActive, Medivia
{
	PgUp::
		MouseGetPos, x, y
		Send, {F1}
		Sleep 100
		;MouseClick, left, 1879, 116 ;window_mode
		MouseClick, left, 1873, 46
		Sleep 100
		MouseMove, %x%, %y%
		return
	PgDn::
		MouseGetPos, x, y
		Send, {F2}
		Sleep 100
		Send, {F3}
		Sleep 100
		MouseClick, left, 1873, 80
		Sleep 100
		MouseMove, %x%, %y%
		return
	return
}

