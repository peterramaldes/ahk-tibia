dummyX = 1134
dummyY = 349

weapons = 37

Esc::
Loop, %weapons%
{
    Send, ^{F1}
    Sleep, 200
    MouseClick, Left, dummyX, dummyY
    Sleep, 930000 ; 15 minutos e meio cada arma.
}
return
