#IfWinActive, Medivia
{
  ^+p::
  while true {
    Move()
    Sleep 1000
    
    ;RenewSpear()
    ;Sleep 1000

    Sleep 60000 * 5 ; Every 5 minute 
  }
  return
}

Move() 
{
  Send ^{Left}
  Sleep 500
  Send ^{Right}
}

Fishing()
{
  ; x := 369, y := 151
  ; coordinate.x := x
  ; coordinate.y := y
  ; MsgBox %coordinate.x%

  ; Send +{F2}
  ; Click coordinates[0].x, coordinates[0].y */
}

RenewSpear()
{
  Send {F11}
  Sleep 100
  MouseClickDrag, left, 1746, 624, 1751, 454
  Sleep 100
}

MakeArrows(quantity)
{ 
  Loop, %quantity%
  {
    Send {F12}
    Sleep 100
    MouseClickDrag, left, 1747, 633, 1748, 577
    Sleep 100
  }
}
