﻿/*
try
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	whr.Open("GET", "https://raw.githubusercontent.com/kazhafeizhale/encryption/master/date.txt", true)
	whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
	whr.WaitForResponse()
	version:= whr.ResponseText
	version:=Trim(version," ")
	StringTrimRight, version, version, 1
}

day1:="2019年11月1"
day2:="2018年3月13日"
day3:="2018年3月14日"

if(version==day1 or  version==day2 or  version==day3)
{
	MsgBox,开启成功点击确定,有问题联系qq3261404579！
}
else
{
	MsgBox,error
	exitapp
}
*/

;需要设置指定攻击为“y”
#NoEnv  ;4Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive ahk_class RiotWindowClass
Gui, Add, Text,, 攻击前摇0.75:
Gui, Add, Text,, 攻击前摇2.5:
Gui, Add, Text,, 面板攻速:
Gui, Add, Edit, vhitForwardShakeTime1 ym  ; ym 选项开始一个新的控件列.
Gui, Add, Edit, vhitForwardShakeTime2
Gui, Add, Edit, vAttackSpeedTime
Gui, Add, Button, default, OK  ; ButtonOK(如果存在)会在此按钮被按下时运行.
gui,+AlwaysOnTop  +hWndhMainWnd +Resize
Gui, Show,, Simple Input Example
return


ButtonOK:
Gui, Submit  ; 保存用户的输入到每个控件的关联变量中.

Global a = -0.571* hitForwardShakeTime1 + 0.5714285714285714 *hitForwardShakeTime2
Global b = 1.42857 * hitForwardShakeTime1 - 0.428571 *hitForwardShakeTime2
return

*f7::
if(WinActive("ahk_id" . hMainWnd))
{
	Gui,1: Hide
}
else
{
	Gui,1: Restore        
}
return

#NoEnv
#KeyHistory 0
#MaxThreads 255
#MaxMem 4095
#MaxThreadsBuffer On
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
ListLines Off
Process, Priority, , R
SetTitleMatchMode fast
SetBatchLines, -1
SetKeyDelay, -1, -1, -1
SetMouseDelay, -1
SetWinDelay, -1
SetControlDelay, -1
SetDefaultMouseSpeed, 0

; Generated by AutoGUI 2.5.4
#SingleInstance Force
CoordMode, ToolTip , Screen



Global time=30


;260:0.75
;175:2.5
;y=ax+b  a(-48.57)  b(296.42)
~$*t::
while (1)
{
	/*
		SendInput,a
		realSleepTime:=a * AttackSpeedTime + b
		sleep,% realSleepTime
;BlockInput,off
		starttime:=A_TickCount
		while(A_TickCount-starttime<(1000/AttackSpeedTime-realSleepTime) && GetKeyState("a","P"))
		{   
		;SendInput,{RButton}
			SendInput,x
			sleep,30
		}
	*/
	sleep,% (1000/AttackSpeedTime)
	SoundPlay("开炮")
}
Return


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