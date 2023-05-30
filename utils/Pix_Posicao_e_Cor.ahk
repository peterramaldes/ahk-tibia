#include Timer.ahk
CoordMode, Pixel, window 

Pause::Reload


F11::
MouseGetPos MouseX, MouseY
PixelGetColor, Color, %MouseX%, %MouseY%, RGB
    MsgBox, Cor: %Color% PosX %MouseX% PosY %MouseY%