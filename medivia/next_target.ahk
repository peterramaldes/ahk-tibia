; TODO(bug): The hotkey are allowed on medivia website :(
; TODO(feat): Disable if I want to write something on medivia

#HotIf WinActive("Medivia")
XButton2::Main

Main() {
  x := 1573
  y := 377

  MouseClick "left", x, y
}
