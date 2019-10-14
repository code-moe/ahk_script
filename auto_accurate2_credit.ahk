;name   : Autopress for accurate
;author : codemoe
;date   : Sept 10, 2019

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;references : https://www.autohotkey.com/docs/commands/Gui.htm
;https://autohotkey.com/board/topic/59034-buttons-side-by-side/
;https://autohotkey.com/board/topic/65262-remove-minimizemaximize-buttons-from-gui/
;https://autohotkey.com/board/topic/121608-create-gui-ask-for-input-store-variable/
;https://www.autohotkey.com/boards/viewtopic.php?t=5080 ;detect var empty/blank
;https://www.autohotkey.com/docs/commands/IfExpression.htm
;https://www.autohotkey.com/docs/commands/Else.htm

#Numpad8::
{
Gui, New,-MaximizeBox -MinimizeBox +AlwaysOnTop,Autofill	; Add Gui, Erase MaxMinClose opt, TitleText 
Gui, Add, Text,, Costumer Name			; Add label name
Gui, Add, Edit, vName				; Add textbox named name v(name of textbox)
Gui, Add, Text,, QtyCode (Fill 1 - 7)		; Add label qty
Gui, Add, Edit, vQty				; Add textbox 
Gui, Add, Text,, Vehicle Plate			; Add label plate
Gui, Add, Edit, vPlate				; Add textbox plate
Gui, Add, Button, x10 y145 Default gSelfPC, Self PC	; Add Button in x,y position, set default
Gui, Add, Button, x80 y145 gDelivery, Delivery		; Add Button in line with above position			
Gui, Show					; Show GUI
return						; exit key

SelfPC:						; What happen if you button SelfPC clicked
Gui, Submit					; Submit Button
StringUpper, Plate, Plate			; Default all plate become uppercase
Check(Name,Qty,Plate)				; Func valid_check
return						; exit key

Delivery:					; What happen if you button Delivery clicked
Gui, Submit					; Submit Button
If (!Plate)					; if statement 
Plate =9460A SYARIL				; change variable value
Else 						; else statement
Plate =9874S MURI				; change variable value	
Check(Name,Qty,Plate)				; Func valid_check
return						; exit key

Check(name,qty,plate) {				; Func valid_check
 If (!Qty)					; Check if Qty is blank or zero
 Qty =4						; if it is, change the value to 4	
 Send %Name%{Enter}{Tab 7}P-00%Qty%{Enter 3}%Plate%	; SendInput from keyboard
}
				
}

#Numpad9::Send {Tab 5}{Down 6}