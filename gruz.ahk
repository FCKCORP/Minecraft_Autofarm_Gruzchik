Gui  -ToolWindow
Gui, Font, S22 CDefault Bold, Verdana

Gui, Add, Button, x1 y1 w170 h40 , Pause
Gui, Add, Button, x1 y40 w170 h40 , Unpause
Gui, Add, Button, x1 y120 w170 h40 , Restart
Gui, Add, Button, x1 y80 w170 h40 , Start
Gui, Add, Button, x1 y159 w170 h40 , Exit
Gui, Add, Button, x1 y199 w170 h40 , Auto_F3P
Gui, Font, S22 CDefault Bold, Verdana
Gui, Show, w175 h241, GUI


config = gruz_config.txt
FileReadLine, warp1, %config%, 3
FileReadLine, warp2, %config%, 7
return
GuiEscape:
ExitApp
GuiClose:
ExitApp
ButtonPause:
  If not Stop
  {
    Stop := True
    Pause
  }
Return
ButtonUnpause:
  If Stop
  {
    Stop := False
    Pause
  }
Return
ButtonRestart:
Reload
ButtonExit:
ExitApp

ButtonAuto_F3P:
WinGet, minecraftPid, PID, Minecraft 1.12.2
    ControlSend,, {blind}{esc}, ahk_pid %minecraftPID%
    ControlSend,, {blind}{F3 down}, ahk_pid %minecraftPID%
    ControlSend,, {blind}{P}, ahk_pid %minecraftPID%
    ControlSend,, {blind}{F3 up}, ahk_pid %minecraftPID%
return
ButtonStart:
WinGet, minecraftPid, PID, Minecraft 1.12.2
   SetKeyDelay, 60, 60
    SendMessage, 0x50,, 0x4190419,, A 
    ControlSend,, {blind}{t}{/}{v}{enter}, ahk_pid %minecraftPID%
    Sleep 250 ;
loop
{
    ControlSend,, {blind}{t}, ahk_pid %minecraftPID%
    Sleep 180 ;
        ControlSend,, {blind}/warp %warp1% {enter}, ahk_pid %minecraftPID%
    Sleep 660 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA
    Sleep 328 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA 
    Sleep 328 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA
    Sleep 328 ;
        ControlSend,, {blind}{t}, ahk_pid %minecraftPID%
    Sleep 160 ;
        ControlSend,, {blind}/warp tablo {enter}, ahk_pid %minecraftPID%
    Sleep 660 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA 
    Sleep 140 ;
}
Return


Delete::
    WinGetActiveTitle, Title
        MsgBox, 64, , Injection complete on %Title%
            WinGet, minecraftPid, PID, %Title%
                return

:?:/gruz::
    SetKeyDelay, 60, 60
    SendMessage, 0x50,, 0x4190419,, A 
    ControlSend,, {blind}{/}{v}{enter}, ahk_pid %minecraftPID%
    Sleep 250 ;
loop
{
    ControlSend,, {blind}{t}, ahk_pid %minecraftPID%
    Sleep 180 ;
        ControlSend,, {blind}/warp %warp1% {enter}, ahk_pid %minecraftPID%
    Sleep 660 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA
    Sleep 328 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA 
    Sleep 328 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA
    Sleep 328 ;
        ControlSend,, {blind}{t}, ahk_pid %minecraftPID%
    Sleep 160 ;
        ControlSend,, {blind}/warp tablo {enter}, ahk_pid %minecraftPID%
    Sleep 660 ;
        ControlClick,, ahk_pid %minecraftPID%,, Right,, NA 
    Sleep 140 ;
}
Return