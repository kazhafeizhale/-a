﻿;需要设置指定攻击为“y”
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.1
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive ahk_class RiotWindowClass

time=30


$~f7::
while(1)
{
SendInput,{c Down}
Sleep,%Time%
SendInput,{c up}
Sleep,200

}
return

$~RButton::

SendInput,{c Down}
Sleep,%Time%
SendInput,{c up}
return
$a::
SendInput,x
sleep,time
SendInput,a
return

Pause::Pause 

~f6::
Pause
Suspend
if(A_IsSuspended==0)
{
    SoundPlay("启动")
}
Else
{
    SoundPlay("暂停")   
}
Return
SoundPlay(sound)
{
        SoundPlay, %A_ScriptDir%\config\music\%sound%.mp3   
}
