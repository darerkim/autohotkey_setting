SetKeyDelay, -1
SetMouseDelay, -1
InitialSpeed=12
LimitSpeed=35
CurrentSpeed:=InitialSpeed

LAlt::LCtrl
LWin::LAlt
LCtrl::LWin
#n::Run Notepad
;]
SC01B::SC01A
;
SC02B::SC01B
;[
SC01A::+2
+SC01A::
Send {SC029}
return
;;
+SC027::+SC00D
;:
SC028::+SC027
+SC028::+SC009
!SC028::
Send {SC02B}
return
;_
SC073::+SC00C
;


SC07B & o::
If GetKeyState("LShift", "P")
  Send +{0}
Else If GetKeyState("o", "P")
  Send {Numpad9}
return
SC07B & i::
If GetKeyState("LShift", "P")
  Send +{9}
Else If GetKeyState("i", "P")
  Send {Numpad8}
return
SC07B & u::
If GetKeyState("LShift", "P")
  Send {SC028}
Else If GetKeyState("u", "P")
  Send {Numpad7}
return
SC07B & l::
If GetKeyState("LShift", "P")
  Send +{7}
Else If GetKeyState("l", "P")
  Send {Numpad6}
return
SC07B & k::
If GetKeyState("LShift", "P")
  Send +{5}
Else If GetKeyState("k", "P")
  Send {Numpad5}
return
SC07B & j::
If GetKeyState("LShift", "P")
  Send +{4}
Else If GetKeyState("j", "P")
  Send {Numpad4}
return
SC07B & .::
If GetKeyState("LShift", "P")
  Send +{3}
Else If GetKeyState(".", "P")
  Send {Numpad3}
return
SC07B & ,::
If GetKeyState("LShift", "P")
  Send +{SC028}
Else If GetKeyState(",", "P")
  Send {Numpad2}
return
SC07B & m::
If GetKeyState("LShift", "P")
  Send +{1}
Else If GetKeyState("m", "P")
  Send {Numpad1}
return
SC07B & SC028::
If GetKeyState("LShift", "P")
  Send {SC00D}
Else If GetKeyState("SC028", "P")
  Send {SC00C}
return

SC07B & s::
SC07B & a::
SC07B & d::
SC07B & n::
SC07B & SC035::
If GetKeyState("a", "P")
  Send ^+{SC00A}
Else If GetKeyState("s", "P")
  Send ^+{SC008}
Else If GetKeyState("d", "P")
  Send ^+{SC009}
Else If GetKeyState("SC035", "P")
Send +{SC00D}
Else If GetKeyState("n", "P")
Send {Numpad0}
return


SC079 & i::SC148
SC079 & k::SC150
SC079 & j::SC14B
SC079 & l::SC14D
SC079 & z::LCtrl
SC079 & x::LCtrl
SC079 & c::LAlt
SC079 & o::SC00E
SC079 & u::SC153
SC079 & h::Escape
SC079 & p::Tab

SC079 & w::
send {Blind}{WheelUp 5}
return
SC079 & a::
send {WheelDown 5}
return
SC079 & q::
send {WheelLeft 3}
return
SC079 & r::
send {WheelRight 3}
return
SC079 & SC028::LButton
SC079 & SC02B::RButton
SC079 & d::
SC079 & e::
SC079 & s::
SC079 & f::
SC079 & n::
SC079 & m::
SC079 & ,::
SC079 & .::
UpAndDown=0
LeftAndRight=0
CurrentSpeed:=InitialSpeed
If GetKeyState("n", "P")
  CurrentSpeed := LimitSpeed
Else If GetKeyState("m", "P")
  CurrentSpeed := LimitSpeed
Else If GetKeyState(",", "P")
  CurrentSpeed := 4
Else If GetKeyState(".", "P") 
  CurrentSpeed := 3
If GetKeyState("d", "P")
  UpAndDown := CurrentSpeed
Else If GetKeyState("e", "P")
  UpAndDown := -CurrentSpeed
If GetKeyState("s", "P")
  LeftAndRight := -CurrentSpeed
Else If GetKeyState("f", "P")
  LeftAndRight := CurrentSpeed
MouseMove, %LeftAndRight%, %UpAndDown%,0,Rv
if (UpAndDown) OR (LeftAndRight)
  {
    sleep 1
    goto SC079 & .
  }
return

SC070::
{
    Send, {SC079}
}

CapsLock & q::
CapsLock & w::
CapsLock & e::
CapsLock & r::
CapsLock & t::
CapsLock & a::
CapsLock & s::
CapsLock & d::
CapsLock & f::
CapsLock & g::
CapsLock & z::
CapsLock & x::
CapsLock & c::
CapsLock & v::
CapsLock & 1::
CapsLock & 2::
CapsLock & 3::
CapsLock & 4::
CapsLock & 5::
If GetKeyState("q", "P")
  if WinExist("ahk_exe ApplicationFrameHost.exe")
  {
    WinActivate, C:\Windows\System32\StikyNot.exe
  }
  Else
  {
    RUN ApplicationFrameHost.exe
  }
Else If GetKeyState("w", "P")
  if WinExist("ahk_exe msedge.exe")
  {
    WinActivate, ahk_exe msedge.exe
  }
  Else
  {
    RUN C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe
  }
Else If GetKeyState("e", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("r", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("t", "P")
  if WinExist("ahk_exe powershell.exe")
  {
    WinActivate, ahk_exe powershell.exe
  }
  Else
  {
    RUN powershell.exe
  }
Else If GetKeyState("a", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("s", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("d", "P")
  if WinExist("ahk_exe chrome.exe")
  {
    WinActivate, ahk_exe chrome.exe
  }
  Else
  {
    RUN chrome.exe
  }
Else If GetKeyState("f", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("g", "P")
  if WinExist("ahk_exe Explorer.EXE")
  {
    WinActivate, ahk_exe Explorer.EXE
  }
  Else
  {
    RUN Explorer.EXE
  }
Else If GetKeyState("z", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("x", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("c", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("v", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("b", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }
Else If GetKeyState("1", "P")
  if WinExist("ahk_exe Unity.exe")
  {
    WinActivate, ahk_exe Unity.exe
  }
  Else
  {
    RUN C:\Program Files\Unity\Hub\Editor\2020.3.5f1\Editor\Unity.exe
  }
Else If GetKeyState("2", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }  
Else If GetKeyState("3", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }  
Else If GetKeyState("4", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }  
Else If GetKeyState("5", "P")
  if WinExist("ahk_exe Code.exe")
  {
    WinActivate, ahk_exe Code.exe
  }
  Else
  {
    RUN C:\Users\drago\AppData\Local\Programs\Microsoft VS Code\Code.exe
  }  
return


