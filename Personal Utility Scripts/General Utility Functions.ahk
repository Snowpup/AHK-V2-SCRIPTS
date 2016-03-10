
/*  ("`-''-/").___..--''"`-._ 		Please scroll and change, edit and remove keys and functions		("`-''-/").___..--''"`-._ 	
     `6_ 6  )   `-.  (     ).`-.__.`) 	to your need. Feel free to utilize as example code as well. Note	`6_ 6  )   `-.  (     ).`-.__.`) 
     (_Y_.)'  ._   )  `._ `. ``-..-`  	that my keybinds are created with a Corsair Scimitar and Strafe	(_Y_.)'  ._   )  `._ `. ``-..-`
    _..`--'_..-_/  /--'_.' ,'  			Keyboard utilizing W10 Pro. Script will be (slowly) updated to 	 _..`--'_..-_/  /--'_.' ,'  	
  (il),-''  (li),'  ((!.-' 					latest AHK Version.																		(il),-''  (li),'  ((!.-' 
  
											Version 1.0.0
											03/10/2016 @ 12:23 A.M. Central
											
											If formatting above is broken, run script and hit F12
  */
Version:= "1.0.0"
F12:: 
MsgBox, 32,About ~~  V. %Version%, Please scroll and change, edit and remove keys and functions to your need. Feel free to utilize as example code as well. Note that my keybinds are created with a Corsair Scimitar and Strafe Keyboard utilizing W10 Pro. Script will be (slowly) updated to latest AHK Version.









#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
SendMode Input
SetTitleMatchMode, 2
#InstallMouseHook
#InstallKeybdHook

text:= "Default"
time:=1.5





/*
///////******************************HOTSTRINGS BELOW******************************\\\\\\\
*/



;Esc::Suspend
F1::Suspend










/*
///////******************************GLOBAL HOTKEYS BELOW******************************\\\\\\\



#IfWinNotActiveActive ahk_class ApplicationFrameWindow
~LButton::
    While GetKeyState("RButton", "P")       ; while Rbutton is held down
        if GetKeyState("WheelUp", "P") {        ; if Lbutton is pressed
            Send {Volume_Up}
            Return
        }
		else if GetKeyState("WheelDown", "P") {
			Send {Volume_Down}
			Return
		}
return
#IfWinActive


#IfWinNotActiveActive ahk_class ApplicationFrameWindow
if GetKeyState("RButton", "P")
	LButton & 1:: while 
	{

		global 
		WinSet, AlwaysOnTop, 
}
*/


~LButton::
    While GetKeyState("LButton", "P")       ; while Lbutton is held down
        if GetKeyState("4", "P") {        ; if Lbutton is pressed
            Send {Media_Prev}
			Message := MessageCreator("Previous", 750 )
        }
		else if GetKeyState("5", "P") {
			Send {Media_Play_Pause}
			Message := MessageCreator("Play/Pause", 750 )
		}
		
		else if GetKeyState("6", "P") {
			Send {Media_Next}
			Message := MessageCreator("Next", 750 )
		}
return
#IfWinActive










/*
///////******************************Limited Scopes/Program Rebinds******************************\\\\\\\
*/



/*
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-Chrome-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
*/

#IfWinActive Chrome ahk_class ApplicationFrameWindow
~LButton::
    While GetKeyState("LButton", "P")       ; while Lbutton is held down
        if GetKeyState("1", "P") {        ; if Lbutton is pressed
            Send ^+Tab
            Return
        }
		else if GetKeyState("2", "P") {
			Send ^+Tab
			Return
		}
return
#IfWinActive



/*
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-Edge-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-
*/

#IfWinActive Edge ahk_class ApplicationFrameWindow
~LButton::
    While GetKeyState("LButton", "P")       ; while Rbutton is held down
        if GetKeyState("1", "P") {        ; if Lbutton is pressed
            Send {F11}
            Return
        }
		else if GetKeyState("2", "P") {
			Send +{F11}
			Return
		}
return
#IfWinActive

	
	
	
	
	
	
	
	
	
	/*
///////******************************SHARED FUNCTIONS BELOW******************************\\\\\\\
*/



MessageCreator(text, time){
	SplashImage, Off
	SplashImage,, x0 y0 b fs12, %text% 
	Sleep, %time%
	SplashImage, Off
	return
}
	