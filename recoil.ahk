~LButton::
  
Sleep 200
Loop
If GetKeyState("LButton") {
Sleep, 3
moveAmount := (moveAmount = 2) ? 3 : 0
mouseXY(moveAmount,4.65)
}
else
break
 
Return
 
mouseXY(x,y)
{
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}
 
F2:: Suspend

^!z::  ; Control+Alt+Z hotkey.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position is %color%, %MouseX%, %MouseY%




