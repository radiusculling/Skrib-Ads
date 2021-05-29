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
FileRead, var, %A_ScriptDir%\SaveFile.txt
var++
SaveToFile:
{
FileDelete, SaveFile.txt
FileAppend, %var%, SaveFile.txt
}
click, 902 601
loop 
{
searchjoin:
PixelSearch, Px, Py, 853, 433, 853, 433, 0x5CB85C, 1, Fast
If ErrorLevel
	goto, searchjoin
Else goto, sendjoin 
}
sendjoin: 
click, 853 433 
searchtext:
loop 
{
PixelSearch, Px, Py, 452, 185, 452, 185, 0x877E84, 1, Fast
If ErrorLevel
	goto, searcherror
Else goto, sendtext
}

searcherror:
{
PixelSearch, Px, Py, 891, 601, 891, 601, 0xB77A33, 1, Fast
If ErrorLevel
	goto, searchtext
Else goto, error
}

sendtext:
click, 1310 716
sendinput, I've joined %var% lobbies! 
sendinput, {enter} 
loop, 3
{
sendinput, youtube(dot)com/watch?v=ybSEyo8F_uI
sendinput, {enter} 
}
sleep, 1000
sendinput, ^r
loop 
{
searchstart:
PixelSearch, Px, Py, 984, 196, 984, 196, 0xF21628, 1, Fast
If ErrorLevel
	goto, searchstart
Else goto, start
}

error:
click
goto, start
return
