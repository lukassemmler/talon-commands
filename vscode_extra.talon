#custom vscode commands go here
app: vscode
-
# wraps selection with html tags
encase that: user.vscode("editor.emmet.action.wrapWithAbbreviation")

# Expands selection by one word (left, right) or by line (up, down)
# "pick" sounded to similar to "pit", the default letter P
bombo <user.arrow_keys>: key("shift-ctrl-{arrow_keys}")

nuke: key(cmd-shift-k)
copy stuff: key(cmd-c)
cut stuff: key(cmd-x)
remember: key(cmd-v)
expander up: 
    key(shift-up)
    key(shift-cmd-right)
expander down: 
    key(shift-down)
    key(shift-cmd-right)

# JavaScript short codes
const: insert("const ")
throw error: 
    insert("throw new Error(``);")
    key(left:3)
define object:
    insert(" = {{  }};")
    key(left:3)
this: insert("this")
