from talon import Module

# --- App definition ---
mod = Module()
mod.apps.mintty = """
os: windows
and app.exe: mintty.exe
"""
# TODO: mac context and implementation
