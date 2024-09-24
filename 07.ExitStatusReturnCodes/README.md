# Exit Status & Return Codes
In Bash scripting, return codes (also known as exit statuses) are numerical values that indicate the outcome of a command or script. These codes help determine whether a command or script executed successfully or encountered an error. The exit status is crucial for error handling and conditional operations within scripts.
## Understanding Return Codes and Exit Status
- Exit Status:
    - The exit status of a command is a numeric value returned to the shell after a command or script completes.
    - A command's exit status can be checked immediately after execution using the special variable $?.
- Common Exit Status Values:
    - 0: Success. The command or script executed successfully without errors.
    - Non-zero (e.g., 1, 2, 127): Failure. The command or script encountered an error. Different numbers indicate different types of errors.
## Exit Status in Shell Scripts
In shell scripts, you can use the exit command to manually specify the exit status that should be returned when the script ends.

## Using exit in Scripts
The exit command is used to terminate a script or function and provide an exit status.
Syntax: exit [n], where n is an optional integer that specifies the exit status. If omitted, the last command's exit status is used.
## Exit Status Examples for Common Commands
Here are some common commands and their exit statuses:
- ls:
    - 0: Directory listed successfully.
    - 2: Missing arguments or invalid options.
    - 1: Generic error (e.g., directory not found).
- grep:
    - 0: One or more lines matched.
    - 1: No lines matched.
    - 2: Syntax error or file not found.
- cp (copy command):
    - 0: Files copied successfully.
    - Non-zero: An error occurred (e.g., destination is not writable).