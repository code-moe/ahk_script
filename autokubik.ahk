#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Numpad0:: 
{
Gui, New,-MaximizeBox -MinimizeBox +AlwaysOnTop,Autofill	; Add Gui, Erase MaxMinClose opt, TitleText 
Gui, Add, Text,, Customer Name			; Add label name
Gui, Add, Edit, vCustName			; Add textbox named CustName v(name of textbox)
Gui, Add, Text,, QtySquare (Fill Meter Cubic)	; Add label qty
Gui, Add, Edit, vQtyInMeter			; Add textbox 
Gui, Add, Text,, Vehicle Plate			; Add label plate
Gui, Add, Edit, vPlate				; Add textbox plate
Gui, Add, Button, x10 y145 Default gSelfPC, Self PC	; Add Button in x,y position, set default
Gui, Add, Button, x80 y145 gDelivery, Delivery		; Add Button in line with above position			
Gui, Show					; Show GUI
return						; exit key

SelfPC:						; What happen if you button SelfPC clicked
Gui, Submit					; Submit Button
StringUpper,Plate,Plate				; Change the plate to uppercase
Check(CustName,QtyInMeter,Plate)		; Func valid_check
return						; exit key

Delivery:					; What happen if you button Delivery clicked
Gui, Submit					; Submit Button
If (!Plate)					; if statement 
{Plate =9460A SYARIL				; change var_plate value
qtyinmeter =3,528				; change var_qty value
} Else 						; else statement
{Plate =9874S MURI				; change var_plate value	
qtyinmeter =3,528				; change var_qty value
}
Check(CustName,QtyInMeter,Plate)		; Func valid_check
return						; exit key

Check(custname,qtyinmeter,plate) {		; Func valid_check
 Send %CustName%{Enter}				; Enter CustName and input
 Click 1295, 145				; Hover mouse to change Invoice Type
 Send {Up}{Enter}{Tab 9}1001{enter 2}%qtyinmeter%{enter 2}%plate% ; SendInput from keyboard
}
 

}