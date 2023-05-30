#include ../utils/timer.ahk
#include ../utils/find_text.ahk

global mana_pos_x := 1774
global mana_pos_y := 127
global mana_color_blue := 0xD70231
global qtd_rune := 1
global hotkey_food := "<+{F3}"
global hotkey_rune := "<+{F4}"
global WINDOW_CHAR_PID := "7960" ; usar ahk SPY pra pegar o ahk_pid da janela do char

Pause::Pause
F12::Reload
F11::LoginSaveServer()

Main() 
{
	; TANE MEXER
	Char(123987)
	Char(1291)
	Char(19872192)
}

Char(pid) {
	Loop,
	{
		WinActivate ahk_pid %pid%

		Sleep, 500

		EatFood()
		Runa()
		
		Sleep, 2500
	}
}

EatFood() {
	If Timer("Food")
	{
		Loop, 5
		{
			Send, %hotkey_food%
			Sleep, 70
		}
		Timer("Food", 120000)
	}
}

Runa() {
	PixelGetColor, Pix, %mana_pos_x%, %mana_pos_y%
	IfEqual, Pix, %mana_color_blue%, { 
		Loop, %qtd_rune%
		{
			Send, %hotkey_rune% 
			Sleep, 300
		}

		; Gastou Mana?
		IfEqual, Pix, %mana_color_blue%, { 
			Logout()
		}

	}
}

Logout() {
	Send, {Ctrl Down}
	Sleep, 30
	Send, q
	Sleep, 30
	Send, {Ctrl up}
	Sleep, 100
}

; TODO: Logout deve só considerar save server para relogar
; TODO: Fazer tudo isso com mais de um char (considerar o pid aqui)