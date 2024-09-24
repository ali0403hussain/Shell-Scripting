# Logging
- Logging are the who, what, when, where and why.
- Output may scroll off the screen.
- Script may run unattended(via cron, etc.)
## Syslog
Linux operating system use Syslog.  
- The syslog standard uses facilities and severities to categorize messages.
    - Facilities:kern, user, mail, daemon, auth, local0, local7
    - Serverities:emerg, alert, crit, err, warning, notice, info, debug
- Logfile locations are configurable:
    - /var/log/messages
    - /var/log/syslog
## Logging with logger
- The logger utility
- By default creates user.notice messages.
```
logger "Message"
logger -p local0.info "Message"
logger -t myscript -p local0.info "Message"
logger -i -t myscript "Message"
```
By default logger uses User facility.  
if need to mention facility and servity then use logger -p followed by facility.servity then message for example
```
logger -p local0.info "Message"
```
- For tagging message use -t.
- If need to use paired or process id then use -i.
- If need to write logg message to file and to display as well so use -s.
## Exercise 1:

Write a shell script that displays one random number to the screen and also generates a syslog message with that random number. Use the "user" facility and the "info" facility for your messages.  
Hint: Use $RANDOM
## Exercise 2:
Modify the previous script so that it uses a logging function. Additionally tag each syslog message with "randomly" and include the process ID. Generate 3 random numbers.