
#z::Run "https://www.autohotkey.com"  ; Win+Z
#^g::Run "https://github.com"

; 交换 Ctrl 和 CapsLock
; 这种改键位方式基于软件，相比于修改注册表，会出现间歇性停止工作的问题，无法达到无缝交换
; CapsLock::Ctrl
; Ctrl::CapsLock

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

; Win + Tab：打开任务视图
; Win + Ctrl + D：新建虚拟桌面
; Win + Ctrl + F4：关闭虚拟桌面
; Win + Ctrl + 右方向键：下一个虚拟桌面
; Win + Ctrl + 左方向键：上一个虚拟桌面
; 切换上一个/下一个虚拟桌面
#+h::#^left
#+l::#^right

; 让 Win+\ 执行原 Win+Tab 的功能
#\::#Tab

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

; Powershell using Linux keymaps
#HotIf WinActive("Windows PowerShell")
^u::^home
^k::^end
^w::^BS
#HotIf