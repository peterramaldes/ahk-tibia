#include ../utils/timer.ahk

Pause::Pause
F12::Reload
F11::Main()

Main() {
	hotkey_food = "<+{F3}"
	hotkey_runa = "<+{F4}" 
	qtd_tick_runa := 1
	window_char_pid := "6644" 
	pos_x_mana := 380
	pos_y_mana := 417
	cor_sem_mana := 0x1B1B1B

	Loop,
	{
		WinActivate ahk_pid %window_char_pid%
		Sleep, 500

		; Food
		If Timer("Food")
		{
			Loop, 5
			{
				Send, %hotkey_food%
				Sleep, 70
			}
			Timer("Food", 120000)
		}
		
		; Runa
		PixelGetcolor,Pix,%pos_x_mana%,%pos_y_mana%
		IfNotEqual,Pix,%cor_sem_mana%,{
			Loop, %qtd_tick_runa%
			{
				Send, %hotkey_runa%
				Sleep, 300
			}
		}

		Sleep, 2500
	}
}