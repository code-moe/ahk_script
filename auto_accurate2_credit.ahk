;name   : Autopress for accurate
;author : codemoe
;date   : Sept 10, 2019

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.
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
}

SelfPC:						; What happen if you button SelfPC clicked
Gui, Submit					; Submit Button
SendCode(%Name%,%Qty%,%Plate%)			; Sendcode Func
return						; exit key

Delivery:					; What happen if you button Delivery clicked
Gui, Submit					; Submit Button
SendCode(%Name%,%Qty%,%Plate%)			; Sendcode Func
return						; exit key
	

SendCode(cname,cqty,cplate) {				; Sendcode 
    Send %cname%{Enter}{Tab 7}P-%cqty%{Enter 3}%cplate%
}




