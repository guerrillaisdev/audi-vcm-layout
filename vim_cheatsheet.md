# Vim Cheat Sheet

## Modes
- **Normal Mode**: Default mode for navigation and commands (press `Esc` to return to this mode)
- **Insert Mode**: For typing text (press `i`, `a`, `o`, etc. to enter)
- **Visual Mode**: For selecting text (press `v`, `V`, or `Ctrl+v` to enter)
- **Command Mode**: For executing commands (press `:` to enter)

## Basic Navigation (Normal Mode)
- `h` - Move cursor left
- `j` - Move cursor down
- `k` - Move cursor up
- `l` - Move cursor right
- `w` - Jump to start of next word
- `b` - Jump to start of previous word
- `e` - Jump to end of word
- `0` - Jump to start of line
- `$` - Jump to end of line
- `gg` - Go to first line of document
- `G` - Go to last line of document
- `{` - Jump to previous paragraph
- `}` - Jump to next paragraph
- `Ctrl+f` - Page down
- `Ctrl+b` - Page up
- `Ctrl+d` - Half page down
- `Ctrl+u` - Half page up
- `H` - Move to top of screen
- `M` - Move to middle of screen
- `L` - Move to bottom of screen
- `zz` - Center cursor on screen

## Inserting Text (Insert Mode)
- `i` - Insert before cursor
- `I` - Insert at beginning of line
- `a` - Insert after cursor
- `A` - Insert at end of line
- `o` - Insert new line below
- `O` - Insert new line above
- `Esc` - Exit insert mode

## Editing Text (Normal Mode)
- `x` - Delete character under cursor
- `X` - Delete character before cursor
- `dd` - Delete line
- `dw` - Delete word
- `d$` or `D` - Delete to end of line
- `d0` - Delete to beginning of line
- `yy` - Copy line
- `yw` - Copy word
- `y$` - Copy to end of line
- `p` - Paste after cursor
- `P` - Paste before cursor
- `r` - Replace single character
- `R` - Replace mode (overwrite)
- `u` - Undo
- `Ctrl+r` - Redo
- `J` - Join line below to current line
- `~` - Switch case of character under cursor
- `.` - Repeat last command

## Visual Mode
- `v` - Start visual mode (character-wise)
- `V` - Start visual mode (line-wise)
- `Ctrl+v` - Start visual block mode
- `>` - Indent selection
- `<` - Unindent selection
- `y` - Copy selection
- `d` - Delete selection
- `~` - Switch case of selection

## Search and Replace
- `/pattern` - Search forward for pattern
- `?pattern` - Search backward for pattern
- `n` - Repeat search in same direction
- `N` - Repeat search in opposite direction
- `:%s/old/new/g` - Replace all occurrences of 'old' with 'new' in file
- `:%s/old/new/gc` - Replace all occurrences with confirmation
- `*` - Search for word under cursor (forward)
- `#` - Search for word under cursor (backward)

## Working with Multiple Files
- `:e filename` - Edit a file
- `:split filename` - Split window horizontally and open file
- `:vsplit filename` or `:vsp filename` - Split window vertically and open file
- `Ctrl+w s` - Split window horizontally
- `Ctrl+w v` - Split window vertically
- `Ctrl+w w` - Switch between windows
- `Ctrl+w h/j/k/l` - Navigate to left/down/up/right window
- `Ctrl+w c` - Close window
- `Ctrl+w o` - Close all windows except current one
- `:tabnew filename` - Open file in new tab
- `gt` - Go to next tab
- `gT` - Go to previous tab
- `:tabclose` - Close current tab

## Saving and Exiting
- `:w` - Save file
- `:w filename` - Save as filename
- `:wq` or `:x` or `ZZ` - Save and quit
- `:q` - Quit (fails if unsaved changes)
- `:q!` or `ZQ` - Quit without saving
- `:wqa` - Save all files and quit

## Macros
- `q{register}` - Start recording macro into register (a-z)
- `q` - Stop recording macro
- `@{register}` - Execute macro
- `@@` - Execute last macro again
- `5@a` - Execute macro 'a' 5 times

## Marks
- `m{a-zA-Z}` - Set mark at current position
- `'{a-zA-Z}` - Jump to line of mark
- `` `{a-zA-Z}`` - Jump to position of mark
- `:marks` - List all marks

## Folding
- `zf{motion}` - Create fold
- `zo` - Open fold
- `zc` - Close fold
- `za` - Toggle fold
- `zR` - Open all folds
- `zM` - Close all folds

## Text Objects (use with d, y, v, etc.)
- `iw` - Inner word
- `aw` - A word (includes surrounding space)
- `is` - Inner sentence
- `as` - A sentence
- `ip` - Inner paragraph
- `ap` - A paragraph
- `i"` - Inside double quotes
- `a"` - Around double quotes
- `i'` - Inside single quotes
- `a'` - Around single quotes
- `i(` or `i)` - Inside parentheses
- `a(` or `a)` - Around parentheses
- `i[` or `i]` - Inside brackets
- `a[` or `a]` - Around brackets
- `i{` or `i}` - Inside braces
- `a{` or `a}` - Around braces
- `it` - Inside HTML/XML tag
- `at` - Around HTML/XML tag

## Useful Commands
- `:help keyword` - Open help for keyword
- `:set nu` - Show line numbers
- `:set nonu` - Hide line numbers
- `:set paste` - Enable paste mode (for pasting from clipboard)
- `:set nopaste` - Disable paste mode
- `:set syntax=javascript` - Set syntax highlighting
- `:!command` - Execute external command
- `:r !command` - Insert output of command
- `:r filename` - Insert content of file