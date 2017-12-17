#NoEnv
#SingleInstance force
#MaxThreadsPerHotkey 2
SendMode Input
SetControlDelay, 120
SetTitleMatchMode, 2

global varUdi := 250
global varLes := 250

+CapsLock::suspend
+PgDn::reload
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

`::
	varDelay :=  0
	varHold :=  1000
	tooltip, d%varDelay% h%varHold%
	SetTimer, RemoveToolTip, 500
	return
1::
	toggle := !toggle
	varDelay :=  250
	varHold := 250
	send {space}
	sleep  200
	Loop {
		if !toggle
			break
		else {
			tooltip, %A_Index% d%varDelay% h%varHold% %toggle%
			SetTimer, RemoveToolTip,  1000
			send {g down}
			If
			sleep %varHold%
			send {g up}
			sleep %varDelay%
			send {h down}
			sleep %varHold%
			send {h up}
			sleep %varDelay%
		}
	}
	return
2::
	varDelay +=  25
	tooltip, d%varDelay% h%varHold%
	SetTimer, RemoveToolTip,  1000
	return
3::
	varDelay -= 25
	tooltip, d%varDelay% h%varHold%
	SetTimer, RemoveToolTip,  1000
	return
4::
	varDelay += 5
	tooltip, d%varDelay% h%varHold%
	SetTimer, RemoveToolTip,  1000
	return
5::
	varDelay -= 5
	tooltip, d%varDelay% h%varHold%
	SetTimer, RemoveToolTip,  1000
	return