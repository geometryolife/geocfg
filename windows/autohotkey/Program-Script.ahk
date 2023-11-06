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

; Win+A 全选
#a::^a

; Ctrl+[ 执行 Esc
^[::Esc

; Alt-Tab hotkey
RAlt & j::AltTab
RAlt & k::ShiftAltTab
RAlt & i::AltTab
RAlt & o::ShiftAltTab

; RAlt-Tab 实现 Windows 中 Win-Tab 的功能
;^a::#Tab

; 让 Win+Shift+Tab 执行原 Win+Tab 的功能
;~#+Tab::#Tab

; 让 Win+Tab 执行 AltTab 的功能
<#Tab::AltTab

; Ctrl+H 执行 Backspace
^h::Backspace

; Emacs style movement
^p::up
^n::down
^b::left
^f::right
^a::home
^e::end
^m::enter