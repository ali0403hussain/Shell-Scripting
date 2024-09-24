# Loops
In Bash scripting, loops are used to repeat a block of code multiple times. Bash supports several types of loops, including for, while, and until loops. Each type of loop has its own use cases and syntax.
## for loop
The for loop iterates over a list of items (like words, filenames, numbers, etc.) and executes a block of code for each item.
### Syntax
```
for variable in list
do
  # Commands to execute for each item in the list
done
```
## while Loop
The while loop executes a block of code as long as the given condition is true. It is often used when the number of iterations is not known beforehand.
### Syntax
```
while [ condition ]
do
  # Commands to execute as long as the condition is true
done
```
## until Loop
The until loop is similar to the while loop but with the condition reversed. It executes a block of code until the specified condition becomes true.
### Syntax
```
until [ condition ]
do
  # Commands to execute until the condition becomes true
done
```