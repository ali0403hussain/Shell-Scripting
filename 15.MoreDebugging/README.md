# More Debugging Options
## Manual Debugging
- You can create your own debugging code.
- Use a special variable like DEBUG
    - DEBUG=true
    - DEBUG=false

## Syntax Highlighting
- Syntax errors are common.
- Typos, missing brackets, missing quotes, etc.
- Use and editor with syntax highlighting.
    - vi/vim
    - emacs
    - nano
    - gedit
    - kate
    - geany
## PS4
- Controls what is displayed before a line when using the "-x" option
- The default value is "+".
- Bash variables
    - BASH_SOURCE, LINENO etc
```
PS4='+ $BASH_SOURCE : $LINENO '
```
PS4 is expanded and displayed before each command during an execution trace.
