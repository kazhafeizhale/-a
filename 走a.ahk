﻿;需要设置指定攻击为“y”
#NoEnv  ;4Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive ahk_class RiotWindowClass

time=30
$a::
SendInput,x
sleep,time
SendInput,a
return
~f5::
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