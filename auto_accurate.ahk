;name   : Autopress for accurate
;author : CodeMoe
;date   : Sept 9, 2019

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;references : 
;https://autohotkey.com/board/topic/69806-help-with-a-script-to-auto-press-keys/
;https://stackoverflow.com/questions/45716861/how-do-i-send-a-key-multiple-times-in-autohotkey
;https://www.autohotkey.com/docs/KeyList.htm


;Here I automate Numpad 1 - Numpad 7 to enter smh :

#Numpad1:: 		; press windows + Numpad 1
{
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-001		; P-001 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

#Numpad2::
{			; press windows + Numpad 2
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-002		; P-002 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

#Numpad3::		; press windows + Numpad 3
{
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-003		; P-003 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

#Numpad4::		; press windows + Numpad 4
{
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-004		; P-004 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

#Numpad5::		; press windows + Numpad 5
{
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-005		; P-005 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

#Numpad6::		; press windows + Numpad 6
{
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-006		; P-006 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

#Numpad7::		; press windows + Numpad 7
{
Send, cas		; cas from Cash
Send, {Enter}		; input cash
Loop,10 {		; loop tab x 10
	Send, {Tab}
}
Send,P-007		; P-007 is code item
Send, {Enter}		; input code item
Loop,3 {		; loop tab x 3
	Send, {Tab}
}
return			; exit key
}

return