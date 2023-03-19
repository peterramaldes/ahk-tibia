toggle := false
#MaxThreadsPerHotkey 2

#IfWinActive, Medivia
{   
    F6::
    toggle := !toggle
    timerSpellAmu := 0
    timerSpellNutri := 0
    timerSpellTrainer := 0
    while toggle {
	    if WinActive("Medivia") {
            Send {Ctrl Right}
            Send {Ctrl Down}
            Sleep 60000
            timerSpellNutri := timerSpellNutri + 1
            timerSpellAmu := timerSpellAmu + 1
            timerSpellTrainer := timerSpellTrainer + 1
            if (timerSpellNutri = 5) {
                timerSpellNutri := 0
                Send {F2}
                MouseClick, right, 1743, 647
            }
            if (timerSpellAmu = 7) {
                timerSpellAmu := 0
                Send {F12}
                Sleep 1000
                Send {F12}
                Sleep 1000
                Send {F12}
                Sleep 1000
                Send {F12}
                MouseClickDrag, left, 1732, 632, 1752, 545
                Sleep 1000
                MouseClickDrag, left, 1732, 632, 1752, 545
                Sleep 1000
                MouseClickDrag, left, 1732, 632, 1752, 545
                Sleep 1000
                MouseClickDrag, left, 1732, 632, 1752, 545
                Sleep 1000
            }
            if(timerSpellTrainer = 26){
                timerSpellTrainer := 0
                Send {F11}
                Sleep 1000
                MouseClickDrag, left, 1732, 632, 1742, 428
                Sleep 1000
            }

        } else {
            toggle := !toggle
        }
    }
    
    return
}