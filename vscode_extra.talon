#custom vscode commands go here
app: vscode
-
# wraps selection with html tags
encase that: user.vscode("editor.emmet.action.wrapWithAbbreviation")

# Expands selection by one word (left, right) or by line (up, down)
# "pick" sounded to similar to "pit", the default letter P
bombo <user.arrow_keys>: key("shift-ctrl-{arrow_keys}")
window new: user.vscode("workbench.action.newWindow")
garbo: key(shift-ctrl-k)
jump folders: user.vscode("workbench.files.action.showActiveFileInExplorer")
