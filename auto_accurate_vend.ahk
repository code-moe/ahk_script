;name   : Autopress for accurate
;author : xss from AHK Discord
;date   : Sept 10, 2019

;well basically this is the most optimized version from auto_accurate.ahk
;we'll call this auto_accurate_vend.ahk

#NoEnv   
SendMode Input   
SetWorkingDir %A_ScriptDir%   
CoordMode, Mouse, Screen     

#Numpad1::sendCode("P-001")     
#Numpad2::sendCode("P-002")
#Numpad3::sendCode("P-003")         
#Numpad4::sendCode("P-004")         
#Numpad5::sendCode("P-005")         
#Numpad6::sendCode("P-006")         
#Numpad7::sendCode("P-007")         

NumpadAdd::Click, 1070, 690
NumpadSub::Click, 1200, 690

sendCode(code) {		; 
    Send cas{Enter}{Tab 10}%code%{Enter}{Tab 3}
}


;other version (lazier)
;#NoEnv   
;SendMode Input   
;SetWorkingDir %A_ScriptDir%   
;CoordMode, Mouse, Screen     
;
;Loop 7
;{
;    f := Func("sendCode").Bind("P-00" A_Index)
;    Hotkey % "#Numpad" A_Index, % f
;}
;
;NumpadAdd::Click, 1070, 690
;NumpadSub::Click, 1200, 690
;
;sendCode(code) {
;    Send cas{Enter}{Tab 10}%code%{Enter}{Tab 3}
;}
				