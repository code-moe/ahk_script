;name   : Autopress for accurate
;author : codemoe
;date   : Sept 10, 2019

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Numpad8::
{
Gui, New,-MaximizeBox -MinimizeBox +AlwaysOnTop,Autofill	; Add Gui, Erase MaxMinClose opt, TitleText 
Gui, Add, Text,, Costumer Name			; Add label name
Gui, Add, Edit, vName				; Add textbox named name v(name of textbox)
Gui, Add, Text,, QtyCode (Fill 001 - 007)	; Add label qty
Gui, Add, Edit, vQty				; Add textbox 
Gui, Add, Text,, Vehicle Plate			; Add label plate
Gui, Add, Edit, vPlate				; Add textbox plate
Gui, Add, Button, x10 y145 Default gSelfPC, Self PC	; Add Button in x,y position, set default
Gui, Add, Button, x80 y145 gDelivery, Delivery		; Add Button in line with above position
Gui, Show					; Show GUI
return						; exit key

SelfPC:						; What happen if you button OK clicked
Gui, Submit					; Submit Button
MsgBox %Name%					; Show MsgBox
return	

Delivery:
Gui, Submit					; Submit Button
MsgBox %Name% + 75000				; Show MsgBox
return						; 

sendCode(code) {		; 
    Send %Name%{Enter}{Tab 10}%code%{Enter}{Tab 3}
}



}

;InputBox, UserInput, Auto Fill, Masukkan Nama Pelanggan., , 200, 125
;if ErrorLevel
;    return
;else
;    MsgBox, You entered "%UserInput%"

Message(code) {
	MsgBox, 4,, Would you like to continue? (press Yes or No)
	IfMsgBox Yes
	    MsgBox You pressed Yes, code is
	else
   	    MsgBox You pressed No, code is 
}
