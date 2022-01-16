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
* Use `events.tail()` to get the process name of apps
  * Talon files only activate, if the requirements in the context header are met (like app name or operating system)
  * So open the REPL in Talon and type in `events.tail()`
  * Example output: 
    ```
    >>> events.tail()
    user\knausj_talon\code\switcher.py | context.refresh user.knausj_talon.code.switcher (lists)
    main | win.focus app=Windows-Befehlsprozessor exe=C:\Windows\system32\cmd.exe title='Talon - REPL'
    user\knausj_talon\draft_editor\draft_editor.py | context.refresh user.knausj_talon.draft_editor.draft_editor (tags)
    main | win.focus app=MSYS2 terminal exe=C:\Program Files\Git\usr\bin\mintty.exe title='MINGW64:/c/Users/Lukas/Documents/Webentwicklung/portfolio-uxd-handlebars'
    user\knausj_talon\draft_editor\draft_editor.py | context.refresh user.knausj_talon.draft_editor.draft_editor (tags)
    main | win.focus app=Windows-Befehlsprozessor exe=C:\Windows\system32\cmd.exe title='Talon - REPL'
    user\knausj_talon\draft_editor\draft_editor.py | context.refresh user.knausj_talon.draft_editor.draft_editor (tags)
    ```
* Get name of currently running app
  * Run `actions.user.talon_get_active_context()` in REPL
    * Example: 
      ```
      >>> actions.user.talon_get_active_context()
      'Name: Windows-Befehlsprozessor\nExecutable: C:\\Windows\\system32\\cmd.exe\nBundle: \nTitle: Talon - REPL'
      ```
  * Run `ui.active_app()` in REPL
    * Example:
      ```
      >>> ui.active_app()
      App(pid=752, "Windows-Befehlsprozessor")
      ```
* Talon has a storage system, an internal sqlite3 database at `C:\Users\Lukas\AppData\Roaming\talon\.sys\user.db` 
  * You can access it via `C:\Program Files\Talon\Lib\site-packages\talon\scripting\storage.pyi` (in REPL: `storage`)
  * Currently not very well documented
  * Example script where storage is used: https://github.com/AndrewDant/screen-spots/blob/main/screen-spots.py
  * General usage: 
    * Get from storage: `anything_from_storage = storage.get("user.some_key_name")`
    * Set to storage: `storage.set("user.some_key_name", anything_to_storage)` 
* List all actions with `actions.list()` or `actions.find('')` in REPL
  * Example:
    ```
    >>> actions.list()
    app.bundle() -> str
      Get active app's bundle identifier
    app.executable() -> str
      Get active app's executable name
    app.name() -> str
      Get active app's name
    app.notify(body: str = '', title: str = '', subtitle: str = '', sound: bool = False)
      Show a desktop notification
    ...
    ```
* Difference between *Modes* and *Tags*: (excerpt from https://talonvoice.slack.com/ in Channel `#talon-scripting` at 2021-12-16)
  > wen  13:36 Uhr  
  > What is functionally the difference between modes and tags?  
  > You can turn both on and off. You can match on either in contexts. You can have multiple active of either. Is there some deep difference that I am missing?  
  >
  > aegis:talon:  17:03 Uhr  (creator of Talon Voice)
  > Philosophical  
  > Tags are meant to be contextual plumbing  
  > Modes are meant to be rare and toggled manually by the user  


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
