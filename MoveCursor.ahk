#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#SingleInstance Force ; if the script is updated, replace the one and only instance

^Left:: ; Ctrl + <- (left arrow key)

; 80 = CM_MONITORS - which basically means - monitor count
SysGet, count, 80
if count !=2 return ; only handle duo, uno - nothing to do

CoordMode, Mouse, Screen    ; this is a must as the mouse coordinate are now relative to the whole screen (both monitors)

SysGet, mon_1, Monitor, 1
SysGet, mon_2, Monitor, 2
MouseGetPos mouse_x,mouse_y

; toggle the mouse to the middle of the left screen
new_x := mon_1Left + (mon_1Right - mon_1Left) // 2
new_y := mon_1Top + (mon_1Bottom - mon_1Top) // 2


MouseMove, %new_x%, %new_y%
Click
return

^Right:: ; Ctrl + -> (right arrow key)
; 80 = CM_MONITORS - which basically means - monitor count
SysGet, count, 80
if count !=2 return ; only handle duo, uno - nothing to do

CoordMode, Mouse, Screen    ; this is a must as the mouse coordinate are now relative to the whole screen (both monitors)

SysGet, mon_1, Monitor, 1
SysGet, mon_2, Monitor, 2
MouseGetPos mouse_x,mouse_y

; toggle the mouse to the middle of the right screen

  new_x := mon_2Left + (mon_2Right - mon_2Left) // 2
  new_y := mon_2Top + (mon_2Bottom - mon_2Top) // 2

MouseMove, %new_x%, %new_y%
Click
return
; Esc::ExitApp  ; Exit script with Escape key
