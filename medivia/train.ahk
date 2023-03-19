#IfWinActive, Medivia
{
  ^+p::
  Move()
  Fishing()
  return
}

Move() 
{
  Send ^{Right}
  Send ^{Left}
}

Fishing()
{
  Send +{F2}
  Click 369, 151
}
