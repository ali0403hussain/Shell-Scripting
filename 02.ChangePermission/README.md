# Change Permission
chmod 755 is a command used in Linux to change the permissions of a file or directory. This command sets specific permissions that control who can read, write, and execute the file or directory.
## Breakdown of chmod 755
- chmod: Stands for "change mode," and it is the command used to change the permissions of files or directories.
- 755: This is the numeric representation of the permissions being set.
### Understanding the Numeric Permissions (755)
The permission 755 is represented in octal (base-8) format, where each digit controls different permissions:
- 7: Permissions for the owner of the file or directory.
- 5: Permissions for the group associated with the file or directory.
- 5: Permissions for others (all other users).
### Each digit represents a combination of the following permissions:

| Permission | Numeric Value | Symbol |
|------------|---------------|--------|
| Read       | 4             | r      |
| Write      | 2             | w      |
| Execute    | 1             | x      |

The digits are added together to get the final value for each category.
#### Breaking Down 755
- Owner (7)
    - 7 = 4 (read) + 2 (write) + 1 (execute) = rwx
    - The owner has read, write, and execute permissions.
- Group (5)
    - 5 = 4 (read) + 0 (no write) + 1 (execute) = r-x
    - The group has read and execute permissions but no write permission.
- Others (5)
    - 5 = 4 (read) + 0 (no write) + 1 (execute) = r-x
    - All other users (others) have read and execute permissions but no write permission.

#### Summary of Permissions for chmod 755
- Owner: rwx (read, write, execute)
- Group: r-x (read, execute)
- Others: r-x (read, execute)

## Practical Example
- run run_test_script.sh
