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

#b::

Send, cas
Send, {Enter}
Loop,10 {
	Send, {Tab}
}
return

