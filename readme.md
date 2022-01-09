# Talon voice commands 

Custom commands for [Talon Voice](https://talonvoice.com/), a voice dictation software.
Checkout the `adobe_xd.talon` file, it has the most commands so far.


## Helpful links

* https://talonvoice.com/ - Official Talon site
* https://talon.wiki/unofficial_talon_docs/ - More documentation on Talon concepts, `.talon` files, etc.
* https://talonvoice.slack.com/ - Chat room with Talon users and developers
* https://github.com/knausj85/knausj_talon - De facto standard command library (otherwise you only have Talon without commands)
* https://talon-knausj-cheatsheet.netlify.app/ - Cheat sheet for the `knausj_talon` commands
* https://lukassemmler.github.io/mouse-move-tester/ - Movement tester for eye tracking (can jitter a lot)
* https://www.joshwcomeau.com/blog/hands-free-coding/ - Personal experiences coding hands free by Josh Comeau
* https://blakewatson.com/journal/playing-minecraft-by-voice-with-talon/ - Playing Minecraft with Talon voice
* https://www.youtube.com/watch?v=FOJ6OvPf_nM - Example video about programming in vscode with Talon


## Development tips

* Builtin Talon modules directory: `C:\Program Files\Talon\Lib\site-packages\talon`
* User created commands directory: `%APPDATA%\talon\user`
* Talon itself is closed-source, but there are some ways for introspection:
  * Open the `.pyi` files in the builtin Talon modules directory. They show the function definitions (parameters and return type)
  * In the REPL in Talon, run `dir()` or `dir(talon.ctrl)` to show all properties of the object.
  * In the REPL in Talon, run `help(talon.ctrl.mouse_move)` to show the documentaiton for a defined function.
  * Log all Talon events to the REPL by writing `events.trail()`.
  * Lastly, look at https://github.com/knausj85/knausj_talon for inspiration.


## General tips

* Make Tobii 5 work on Windows
  * To use the eye-tracker Tobii 5 with Talon on Windows, you have to stop the Windows services first.
  * After following the installation steps in https://talon.wiki/tobii_5/, do the following:
    1. Press `Win + R` to open run window
    2. Type in `services.msc` and run.
    3. Stop all Tobii services:
       * *Tobii Eye Tracker Generic Service*
       * *Tobii Runtime Service*
       * *Tobii Service*
    4. Restart Talon and eye-tracking should work (also check the logs)
