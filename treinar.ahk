dummyX = 909
dummyY = 690

weapons = 40

iterations := weapons * 2

Esc::
Loop, %iterations%
{
    Send, ^{F1}
    Sleep, 200
    MouseClick, Left, dummyX, dummyY
    Sleep, 300000
}
return
