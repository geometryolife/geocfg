#z::Run "https://www.autohotkey.com"  ; Win+Z

^!n::  ; Ctrl+Alt+N
{
    if WinExist("Untitled - Notepad")
        WinActivate
    else
        Run "Notepad"
}

; Win+C 复制
#c::^c

; Win+V 粘贴
#v::^v

; Ctrl+[ 执行 Esc
^[::Esc

; Alt-Tab hotkey
RAlt & j::AltTab
RAlt & k::ShiftAltTab
RAlt & i::AltTab
RAlt & o::ShiftAltTab

; Ctrl+H 执行 Backspace
^h::Backspace