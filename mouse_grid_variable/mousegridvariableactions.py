from talon import Module, Context, actions, app, canvas, screen, settings, ui, ctrl, cron
from .mousegridvariable import MouseGridVariable
from typing import Union

import typing

mod = Module()
mod.tag("mouse_grid_variable_showing", desc="Tag indicates whether the mouse grid is showing")
ctx = Context()

mouse_grid = MouseGridVariable()

@mod.action_class
class GridVariableActions:
    def grid_variable_activate():
        """Show mouse grid"""
        if not mouse_grid.mcanvas:
            mouse_grid.setup()
        mouse_grid.show()
        ctx.tags = ["user.mouse_grid_variable_showing"]

    def grid_variable_place_window():
        """Places the grid on the currently active window"""
        mouse_grid.setup(rect=ui.active_window().rect)

    def grid_variable_reset():
        """Resets the grid to fill the whole screen again"""
        if mouse_grid.active:
            mouse_grid.setup()

    def grid_variable_select_screen(screen: int):
        """Brings up mouse grid"""
        mouse_grid.setup(screen_num=screen - 1)
        mouse_grid.show()

    def grid_variable_narrow_list(digit_list: typing.List[str]):
        """Choose fields multiple times in a row"""
        for d in digit_list:
            actions.self.grid_narrow(int(d))

    def grid_variable_narrow(digit: Union[int, str]):
        """Choose a field of the grid and narrow the selection down"""
        mouse_grid.narrow(int(digit))

    def grid_variable_go_back():
        """Sets the grid state back to what it was before the last command"""
        mouse_grid.go_back()

    def grid_variable_close():
        """Close the active grid"""
        ctx.tags = []
        mouse_grid.close()
