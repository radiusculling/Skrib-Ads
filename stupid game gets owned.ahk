#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0		
ListLines Off
Process, Priority, %PID%, High
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
q::
start: 
loop, 4
{
sendinput, {tab}
}
sendinput, {enter} 
loop 
{
searchtext:
PixelSearch, Px, Py, 452, 185, 452, 185, 0x877E84, 1, Fast
If ErrorLevel
	goto, searchtext
Else goto, sendtext
}
sendtext:
Click, 1310 716
loop, 3
{
sendinput, youtube(dot)com/watch?v=ybSEyo8F_uI
sendinput, {enter} 
}
Sleep, 100
sendinput, ^l
sendinput, skribbl.io
sendinput, {enter}
loop 
{
searchstart:
PixelSearch, Px, Py, 984, 196, 984, 196, 0xF21628, 1, Fast
If ErrorLevel
	goto, searchstart
Else goto, start
}
return
