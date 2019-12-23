weaponPosX = 1777
weaponPosY = 379

dummyX = 1168
dummyY = 384

slots = 51

Esc::
Loop, %slots%
{
    if (Mod(A_Index, 20) == 0) {
        MouseClick, Right, weaponPosX, weaponPosY
    } else {
        MouseClick, Right, weaponPosX, weaponPosY
        MouseClick, Left, dummyX, dummyY
        Sleep, 9300 ; 15 minutos e meio cada arma.
    }
}
return
