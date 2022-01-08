from talon import Module, ctrl
mod = Module()

class KeyUtil:
    def hold(self, key: str, duration: int = 0):
        """Holds specified key for a duration (duration in micro seconds)"""
        ctrl.key_press(key, hold=duration)

class MouseUtil:
    def move(self, delta_x: int, delta_y: int):
        """Moves mouse from current position by specified distance"""
        (x, y) = ctrl.mouse_pos()
        ctrl.mouse_move(x + delta_x, y + delta_y)
    def hold(self, button: int, duration: int = 0):
        ctrl.mouse_click(button, hold=duration)

keyboard = KeyUtil()
mouse = MouseUtil()

@mod.action_class
class MinecraftActions:
    def minecraft_hold_key(key: str, duration: int = 0):
        """Holds specified key for a duration (duration in milli seconds)"""
        keyboard.hold(key, duration*1000)
    def minecraft_move_mouse(move_x: int, move_y: int):
        """Moves mouse along x axis"""
        mouse.move(move_x, move_y)
    def minecraft_hold_mouse(button: int, duration: int = 0):
        """Holds specified mouse button for a duration (in seconds)"""
        mouse.hold(button, duration*1000000)
