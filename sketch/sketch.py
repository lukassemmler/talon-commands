from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
mod = Module()
apps = mod.apps
apps.sketch = "app.name: Sketch"
apps.sketch = """
os: mac
and app.bundle: com.bohemiancoding.sketch3
"""

ctx.matches = r"""
app: sketch
"""
