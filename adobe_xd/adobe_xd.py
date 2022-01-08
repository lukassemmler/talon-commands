from talon import Module, Context, actions, app, canvas, screen, settings, ui, ctrl, cron
from typing import Sequence


mod = Module()
ctx = Context()

@mod.action_class
class AdobeXdActions:
    def mouse_center_window():
        """Moves mouse to center of window"""
        window_rect = ui.active_window().rect
        ctrl.mouse_move(*window_rect.center)
    def mouse_move_in_window(offset_x: int, offset_y: int):
        """Moves mouse to the layer menu"""
        window_rect = ui.active_window().rect
        ctrl.mouse_move(window_rect.x + offset_x, window_rect.y + offset_y)
    def press_key_with_delay(key: str, modifiers: str = "", delay: int = 0):
        """Waits a specified number of milli seconds before pressing a key"""
        modifiers_raw = modifiers.split(" ")
        ctrl.key_press(key, mods=modifiers_raw, wait=delay*1000)

    #def mouse_variable_grid_activate():
    #    ctx.tags = ["user.mouse_grid_variable_showing"]
    #    pass
    #def mouse_variable_grid_close():
    #    ctx.tags = []
    #    pass
