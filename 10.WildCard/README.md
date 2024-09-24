# WildCards
## What is wildcard?
Whildcard is a character or string used for pattern matching. Globbing expands the wildcard pattern into a list of files and/or directories (path).  
Wildcards can be used with most ccommands.
- ls
- rm 
- cp
## Two main wild cards
- *- matches zeros or more characters.
    - *.txt
    - a*
    - a*.txt
- ?- matches exactly one character.
    - ?.txt
    - a?
    - 1?.txt
## More Wildcards
### Character class  []
Matches any of the the character included between the brackets. Matches exactly one character.
- [aeiou]
- ca[nt]*
    - can 
    - cat
    - candy
    - catch
Matches any of the character NOT included between the brackets. Matches exactly one character
- [!aeiou]
    - basketball
    - cricket
### More wildcards Ranges
Use two characters seperated by a hyphen to create a range in character class
- [a-g]*
    - matches all files start with a, b, c, d, e, f, g
- [3-6]*
    - matches all files start with 3, 4, 5, 6
### Named Character classes
- [[:alpha:]]
    - alpha maches alphabetic letters both upper and lower case letters.
- [[:alnum:]]
    - alnum matches alpha numeric letters.
- [[:digit:]]
    - represents the numbers in decimal from 0 to 9
- [[:lower:]]
    - lower case letters
- [[:space:]]
    - matches white space including spaces tabs and newline characters.
- [[:upper:]]
    - Upper case letters.
### Matching wildcard patterns
- \- escape character. Use if you want to match a wild card character.
    - Match all files that end with a question mark:
        - *\? find all files ends with ?

## Practice Problems
### Exercise 1:
Write a shell script that renames all files in the current directory that end in ".jpg" to begin with today's date in the following format: YYYY­MM­DD. For example, if a picture of my cat was in the current directory and today was October 31, 2016 it would change name from "mycat.jpg" to "2016­10­31­mycat.jpg".  
Hint: Look at the format options to the date command.  
For "extra credit" make sure to gracefully handle instances where there are no ".jpg" files in the current directory. (Hint: Man bash and read the section on the nullglob option.)
### Exercise 2:
Write a script that renames files based on the file extension. The script should prompt the user for a file extension. Next, it should ask the user what prefix to prepend to the file name(s). By default the prefix should be the current date in YYYY­MM­DD format. So, if the user simply presses enter the date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, it should display the original file name and the new name of the file. Finally, it should rename the file.

### Example output 1:
Please enter a file extension: jpg Please enter a file prefix: (Press ENTER for 2015­08­10). vacation Renaming mycat.jpg to vacation­mycat.jpg.
### Example output 2:
Please enter a file extension: jpg Please enter a file prefix: (Press ENTER for 2015­08­10). Renaming mycat.jpg to 2015­08­10­mycat.jpg.