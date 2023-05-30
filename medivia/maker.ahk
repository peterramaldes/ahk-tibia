#include ../utils/timer.ahk

Pause::Pause
F12::Reload
F11::Main()

Main() {
	hotkey_food = +{F3} 
	hotkey_runa = +{F4} 
	qtd_tick_runa := 1
	window_char_pid := "7960" ; usar ahk SPY pra pegar o ahk_pid da janela do char
	pos_x_mana := 1899
	pos_y_mana := 129
	cor_sem_mana := 0x1A1A1A

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

; TODO: Relogar Save Server
; TODO: Deslogar Player Na Tela
; TODO: Deslogar Quando Acabar Blank Rune
; TODO: Deslogar Quando Acabar Food