from talon import Module, actions, speech_system

mod = Module()

@mod.action_class
class Actions:
    def speech_toggle():
        """Toggles speech on and off."""
        # see https://github.com/joshwcomeau/talon-commands/blob/master/code/delayed_speech_off.py
        # see https://github.com/talonhub/community/blob/main/plugin/command_history/command_history.py
        # see https://github.com/dwighthouse/unofficial-talonvoice-docs/blob/master/docs/KeysList.md
        if not actions.speech.enabled():
            actions.speech.enable()
            return
        actions.speech.disable()

    speech_system.register("user.speech_toggle", speech_toggle)
