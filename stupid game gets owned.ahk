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
Sleep, 5000
text: 
click
sendinput, {tab}
loop, 3
{
sendinput, youtube(dot)com/watch?v=ybSEyo8F_uI
sleep, 1000
sendinput, {enter} 
}
sleep, 1000
sendinput, ^w
sendinput, ^t
sleep, 1000
sendinput, ^l
sendinput, skribbl.io
sendinput, {enter}
sleep, 1000
goto, start
return