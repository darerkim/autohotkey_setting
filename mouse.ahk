
SetKeyDelay, -1
SetMouseDelay, -1

InitialSpeed=5
Accel=1
LimitSpeed=12
CurrentSpeed:=InitialSpeed

SC07B & d::
UpAndDown=0
LeftAndRight=0
if (CurrentSpeed<=LimitSpeed)
  CurrentSpeed+=Accel
If GetKeyState("d", "P")
  UpAndDown := CurrentSpeed
Else If GetKeyState("e", "P")
  UpAndDown := -CurrentSpeed
If GetKeyState("s", "P")
  LeftAndRight := -CurrentSpeed
Else If GetKeyState("f", "P")
  LeftAndRight := CurrentSpeed
MouseMove, %LeftAndRight%, %UpAndDown%,0,R
if (UpAndDown) OR (LeftAndRight)
  {
  sleep 1
  goto SC07B & d
  }
CurrentSpeed:=InitialSpeed
return