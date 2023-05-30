#include ../utils/timer.ahk

; TODO: Como não ficar relogando o tempo todo aqui

Main() 
{
	CoordMode, Pixel, Screen
	Loop,
	{
		Sleep, 1200
		ImageSearch, x,y, 0, 0, 1920, 1080, C:\Users\odin\repos\ahk-tibia\medivia\assets\battle_list.png ; TODO(Peter): Refactor this into some variable
		if (ErrorLevel = 1)
		{
			Send, {Ctrl Down}
			Sleep, 30
			Send, q
			Sleep, 30
			Send, {Ctrl up}
			Sleep, 100
		}
	}
}

Main()