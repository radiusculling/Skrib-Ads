SetBatchLines, 100
#NoEnv
#SingleInstance, Force
DetectHiddenWindows, On
SetTitleMatchMode, 2

q::
start: 
ControlFocus,, skrib 1
ControlSend,, {f5}, skrib 1
ControlFocus,, skrib 2
ControlSend,, {f5}, skrib 2
ControlFocus,, skrib 3
ControlSend,, {f5}, skrib 3
ControlFocus,, skrib 4
ControlSend,, {f5}, skrib 4
ControlFocus,, skrib 5
ControlSend,, {f5}, skrib 5
sleep, 5000
loop, 4
{
	ControlFocus,, skrib 1
	ControlSend,, {tab}, skrib 1
	ControlFocus,, skrib 2
	ControlSend,, {tab}, skrib 2
	ControlFocus,, skrib 3
	ControlSend,, {tab}, skrib 3
	ControlFocus,, skrib 4
	ControlSend,, {tab}, skrib 4
	ControlFocus,, skrib 5
	ControlSend,, {tab}, skrib 5
}

ControlFocus,, skrib 1
ControlSend,, {enter}, skrib 1
ControlFocus,, skrib 2
ControlSend,, {enter}, skrib 2
ControlFocus,, skrib 3
ControlSend,, {enter}, skrib 3
ControlFocus,, skrib 4
ControlSend,, {enter}, skrib 4
ControlFocus,, skrib 5
ControlSend,, {enter}, skrib 5

Sleep, 10000
loop, 2
{
	ControlFocus,, skrib 1
	ControlSend,, {tab}, skrib 1
	ControlFocus,, skrib 2
	ControlSend,, {tab}, skrib 2
	ControlFocus,, skrib 3
	ControlSend,, {tab}, skrib 3
	ControlFocus,, skrib 4
	ControlSend,, {tab}, skrib 4
	ControlFocus,, skrib 5
	ControlSend,, {tab}, skrib 5		
}

loop, 3
{
	ControlFocus,, skrib 1
	ControlSend,, ^v, skrib 1 
	ControlSend,, {enter}, skrib 1
	ControlFocus,, skrib 2
	ControlSend,, ^v, skrib 2 
	ControlSend,, {enter}, skrib 2
	ControlFocus,, skrib 3
	ControlSend,, ^v, skrib 3 
	ControlSend,, {enter}, skrib 3
	ControlFocus,, skrib 4
	ControlSend,, ^v skrib 4
	ControlSend,, {enter}, skrib 4
	ControlFocus,, skrib 5
	ControlSend,, ^v, skrib 5
	ControlSend,, {enter}, skrib 5
} 

Sleep, 1000 

goto, start 
