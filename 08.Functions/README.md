# Functions
Functions in Bash are reusable blocks of code that can be defined and called multiple times within a script. They help organize code, make it more modular, and avoid repetition. A function in Bash is similar to functions in other programming languages, where you define a series of commands once and can execute them anywhere in the script by calling the function's name.
## Syntax
There are two ways for defining functions in bash.
```
function_name() {
  # Commands to execute
}
```
Alternatively, you can use the function keyword:
```
function function_name {
  # Commands to execute
}
```
## Calling a function
```
function_name
```
## Passing Arguments to a Function
You can pass arguments to a function in Bash, similar to how you pass arguments to a script. Inside the function, arguments are accessed using $1, $2, $3, etc., where $1 is the first argument, $2 is the second, and so on.

## Returning Values from a Function
Functions in Bash do not have a specific return keyword to return values like in other languages. Instead, you can use echo to output a value, and then capture that output using command substitution.  
You can also use the return keyword to return an exit status (an integer) from a function. By convention, 0 indicates success, while any non-zero value indicates failure or error.
## Function Scope and Variables
- Global Variables: By default, variables declared in a Bash function are global and can be accessed outside the function.
- Local Variables: Use the local keyword to declare a variable within a function scope. This variable will not affect or be affected by variables of the same name outside the function.