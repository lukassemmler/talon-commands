os: windows
#mode: command
#app.exe: XD.exe
#and app: /Adobe XD/i
and title: /Adobe XD/i
-
# Shortcuts in Adobe XD: https://helpx.adobe.com/de/xd/help/keyboard-shortcuts.html
hello world: insert("hello world")

# Zoom
zoom all: key(ctrl-0)
zoom reset: key(ctrl-1)
zoom big: key(ctrl-2)
zoom select: key(ctrl-3)
zoom small: 
    key(ctrl-1)
    key(ctrl--:2)
zoom target:
    key(ctrl-3)
    user.press_key_with_delay("2", "ctrl", 50)

# pan commands depend on https://github.com/knausj85/knausj_talon/blob/master/code/mouse.py
# vertical scrolling moves further than horizontal scrolling
pan up: user.mouse_scroll_up(5)
pan down: user.mouse_scroll_down(5)
pan left: user.mouse_scroll_left(10)
pan right: user.mouse_scroll_right(10)

# Changes size of selected object by 1 pixel.
wider: key(alt-right)
tighter: key(alt-left)
taller: key(alt-down)
shorter: key(alt-up)

# If artboard grid is visible, changes size to next grid line. Otherwise changes size by 10 pixels.
wide: key(shift-alt-right)
tight: key(shift-alt-left)
tall: key(shift-alt-down)
short: key(shift-alt-up)

# If artboard grid is visible, moves object to next grid line. Otherwise moves object by 10 pixels.
move right: key(shift-right)
move left: key(shift-left)
move down: key(shift-down)
move up: key(shift-up)

# General editing
undo: key(ctrl-z)
redo: key(shift-ctrl-z)
# "copy that" is defined in knausj_talon
# "paste that" is defined in knausj_talon
# "cut that" is defined in knausj_talon
clone: key(ctrl-d)

# Group commands
group create: key(ctrl-g)
group delete: key(shift-ctrl-g)
group col: key(shift-ctrl-v)
group row: key(shift-ctrl-h)
component: key(ctrl-k)
mask: key(shift-ctrl-m)
multiple: key(ctrl-r)
lock: key(ctrl-l)

# Sort commands
sort up: key(ctrl-ä)
sort down: key(ctrl-ö)
sort top: key(shift-ctrl-ä)
sort bottom: key(shift-ctrl-ö)

# Alignment commands
align left: key(shift-ctrl-left)
align right: key(shift-ctrl-right)
align top: key(shift-ctrl-up)
align bottom: key(shift-ctrl-down)
align center: key(shift-c)
align middle: key(shift-m)

guide line show: key(shift-ctrl-,)
guide line lock: key(shift-ctrl-.)
guide grid: key(ctrl-ü)

# Open preview window
preview: key(ctrl-enter)

# Mouse commands
mouse center: user.mouse_center_window()
mouse layers: user.mouse_move_in_window(130,144)

# Show commands
show layers: key(ctrl-y)
show symbols: key(shift-ctrl-y)

# Font commands
font fat: key(ctrl-b)
font italic: key(ctrl-i)
font underline: key(ctrl-u)
# "Increse font size" shortcut "shift-ctrl-." doesnt work in XD
# "Decrese font size" shortcut "shift-ctrl-," doesnt work in XD

# Tool commands
select: key(v)
rect: key(r)
ellipse: key(e)
polygon: key(y)
line: key(l)
pen: key(p)
text: key(t)
artboard: key(a)
zoom: key(z)
probe: key(i)

# File commands
file create: key(ctrl-n)
file open: key(shift-ctrl-o)
file save: key(ctrl-s)
file sibling: key(shift-ctrl-s)
file export select: key(ctrl-e)
file export mark: key(shift-ctrl-e)
file import: key(shift-ctrl-i)

#new e-mail: key(ctrl-n)
#calendar: key(ctrl-2)
#inbox: key(ctrl-1)
#Reply: key(ctrl-r)
#Reply all: key(ctrl-shift-r)
#Forward: key(ctrl-f)
#accept: key(shift-f10 c c enter)