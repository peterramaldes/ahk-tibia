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
        Sleep, 500
    } else {
        MouseClick, Right, weaponPosX, weaponPosY
        Sleep, 200
        MouseClick, Left, dummyX, dummyY
        Sleep, 930000 ; 15 minutos e meio cada arma.
    }
}
return
