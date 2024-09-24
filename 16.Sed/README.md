# Data Manipulation and Text Transformation with Sed
## What is Sed?
- Sed = Stream editor.
- A stream is data that travels from:
    - One process to another through a pipe.
    - One file to another as a redirect.
    - One device to another.
- Standard input = Standard Input Stream, etc.
### Pipe
In bash pipe (|) is used to send the output of one command as input of another command. It allows the changing of multiple commands, enabling the output of one command to be processed by the next command.
#### Syntax
```
command1 | command2
```
## Sed Usage
- Sed performs text transformation on streams.
    - Examples:
        - Substitute some test for other text.
        - Remove lines.
        - Append text after given lines.
        - Insert text before certain lines.
- Sed is used programmatically, not interactively.
