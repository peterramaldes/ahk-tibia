#Include ..\utils\mouse_get_pos.ahk
; TODO(bug): The hotkey are allowed on medivia website :(
; TODO(feat): Disable if I want to write something on medivia

#HotIf WinActive("Medivia")
LControl & Space::Main

Main() {
  x := 0
  y := 0
  getMousePositions(&x, &y)
  MouseClick "left", 2400, 840
  Sleep 300
  MouseMove x, y
}
