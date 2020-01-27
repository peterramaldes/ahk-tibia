dummyX = 956
dummyY = 463

weapons = 5

iterations := weapons * 50

Esc::
Loop, %iterations%
{
    Send, ^{F1}
    Sleep, 200
    MouseClick, Left, dummyX, dummyY
    Sleep, 120000
}
return
