os: windows
and title: /Minecraft/i
-
go fort: user.minecraft_hold_key("w", 1000)
go left: user.minecraft_hold_key("a", 1000)
go back: user.minecraft_hold_key("s", 1000)
go right: user.minecraft_hold_key("d", 1000)

go mini fort: user.minecraft_hold_key("w", 100)
go mini left: user.minecraft_hold_key("a", 100)
go mini back: user.minecraft_hold_key("s", 100)
go mini right: user.minecraft_hold_key("d", 100)

# In order for these commands to work, you have to turn off 'Raw Input' in the Minecraft settings. 
# [Esc -> Options... -> Controls... -> Mouse Settings... -> Raw input: OFF]
# https://stackoverflow.com/a/58043888/how-to-control-the-mouse-in-minecraft-using-python
cut left: user.minecraft_move_mouse(-500, 0)
cut right: user.minecraft_move_mouse(500, 0)
cut up: user.minecraft_move_mouse(0, -500)
cut down: user.minecraft_move_mouse(0, 500)

attack [<number>]: user.minecraft_hold_mouse(0, number or 1)
