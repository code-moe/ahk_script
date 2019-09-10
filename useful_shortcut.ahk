;name   : Useful Shortcut
;author : CodeMoe
;date   : Sept 9, 2019

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;sauce
;https://4sysops.com/archives/windows-7-keyboard-shortcuts-the-complete-list/
;list of windows 7 shortcut 

#n::Run Notepad ;press windows+n to run notepad
#c::Run Calc ;press windows+c to run calc
#ScrollLock::
{ ;check ping
Run ping 192.168.1.20 -t  	;ping local server
Run ping 8.8.8.8 -t		;ping google
} 
