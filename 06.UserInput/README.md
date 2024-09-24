# User Input
The read command reads a line of input from the user and stores it in a variable.
## Syntax 
`read variable_name`
### Additional Options for read
The read command has several options that can modify its behavior:
- -p: Display a prompt without a newline.
- -s: Silent mode (hides user input, useful for passwords).
- -n N: Reads N characters from input.
- -t N: Waits for N seconds and then times out.
- -a: Reads input into an array.
- -r: Prevents backslash escapes from being interpreted.