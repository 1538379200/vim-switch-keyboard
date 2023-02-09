function! SwitchInput(lang)
python << EOF
import win32api
import win32gui
from win32con import WM_INPUTLANGCHANGEREQUEST

if vim.eval("a:lang") == "EN":
    language = 0x0409
else:
    language = 0x0804
hwnd = win32gui.GetForegroundWindow()
win32api.SendMessage(
    hwnd,
    WM_INPUTLANGCHANGEREQUEST,
    0,
    language
)
EOF
endfunction

autocmd InsertLeave * :call SwitchInput("EN")
autocmd InsertEnter * :call SwitchInput("ZH")
