# birthday-mailer
A system to email "Happy birthday!" to desired recipients

Meant to be scheduled for daily runs in system crontab on Linux or Mac OSX. To do this:
In terminal run "env EDITOR=vim crontab -e" to edit the system crontab,
then enter the line "0 8 * * * bash ~/path/to/mailer.sh" to schedule this script to run daily at 8am,
then save the file and exit. To verify the scheduling enter "crontab -l" and see if this job appears in the output.
