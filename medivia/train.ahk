#IfWinActive, Medivia
{
  ^+p::
  ;Move()
  ;Fishing()
  ;RenewSpear()
  return
}

Move() 
{
  Send ^{Right}
  Send ^{Left}
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
