# Test
In Bash scripting, the test command (or its shorthand [ and ]) is used to evaluate expressions and check conditions, such as whether a file exists, a string is empty, or a numerical comparison. The test command is commonly used in conjunction with if statements to control the flow of a script based on certain conditions.
## Syntax
- `test CONDITION`
- `[ CONDITION ]`
## Common Test Conditions
Here are some commonly used test conditions in Bash:
- File Conditions:
    - -e FILE: True if the file exists.
    - -f FILE: True if the file exists and is a regular file.
    - -d FILE: True if the file exists and is a directory.
    - -r FILE: True if the file exists and is readable.
    - -w FILE: True if the file exists and is writable.
    - -x FILE: True if the file exists and is executable.
- String Conditions:
    - -z STRING: True if the string is empty.
    - -n STRING: True if the string is not empty.
    - STRING1 = STRING2: True if the strings are equal.
    - STRING1 != STRING2: True if the strings are not equal.
- Integer Conditions:
    - INTEGER1 -eq INTEGER2: True if the integers are equal.
    - INTEGER1 -ne INTEGER2: True if the integers are not equal.
    - INTEGER1 -gt INTEGER2: True if INTEGER1 is greater than INTEGER2.
    - INTEGER1 -lt INTEGER2: True if INTEGER1 is less than INTEGER2.
    - INTEGER1 -ge INTEGER2: True if INTEGER1 is greater than or equal to INTEGER2.
    - INTEGER1 -le INTEGER2: True if INTEGER1 is less than or equal to INTEGER2.
## Using test with Logical Operators
You can combine conditions using logical operators:
- AND (&&): [ CONDITION1 ] && [ CONDITION2 ]
- OR (||): [ CONDITION1 ] || [ CONDITION2 ]
- NOT (!): ! [ CONDITION ]