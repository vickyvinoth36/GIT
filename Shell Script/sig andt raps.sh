#signals and traps 
#Signals are used to communicate with processes and can be sent by the operating system or by other processes. They can be used to interrupt, terminate, or pause a process, among other things.
# ctrl+c sends the SIGINT signal to the process, which interrupts it.
# ctrl+z sends the SIGTSTP signal to the process, which pauses it.
# ctrl+\ sends the SIGQUIT signal to the process, which terminates it and generates a core dump.
# kill command can be used to send signals to processes. For example, kill -9 <pid> sends the SIGKILL signal to the process with the specified process ID, which terminates it immediately.
#trap is used to catch signals and execute a command when a signal is received
#syntax
#trap command signal    
#signal examples: SIGINT, SIGTERM, SIGKILL, SIGHUP, SIGQUIT, SIGUSR1, SIGUSR2
#$$ shows the process id of the current script
#$? shows the exit status of the last command executed
# $% shows the exit status of the last background command executed
# $! shows the process id of the last background command executed
# $# shows the process id of the last command executed in the background
# $0 shows the name of the script   
# $* shows all the arguments passed to the script
# $@ shows all the arguments passed to the script as separate words
# $1, $2, $3, ... show the first, second, third, ... arguments passed to the script
# $# shows the number of arguments passed to the script

#Trap is used to catch signals and execute a command when a signal is received. It can be used to handle unexpected events, such as a user pressing Ctrl+C to terminate a script, or to clean up resources before exiting a script.
#Example:
#!/bin/bash
trap "echo 'Script interrupted by user'; exit" SIGINT
echo "This script will run until you press Ctrl+C"
while true; do
    sleep 1
done    

# trap cannot catch SIGKILL and SIGSTOP signals, as these signals cannot be caught or ignored by a process. SIGKILL is used to forcefully terminate a process, while SIGSTOP is used to pause a process. These signals are handled by the operating system and cannot be intercepted by a process.

# 0 for exit, 1 for hangup, 2 for interrupt, 3 for quit, 4 for illegal instruction, 5 for trace trap, 6 for abort, 7 for bus error, 8 for floating point exception, 9 for kill, 10 for user defined signal 1, 11 for segmentation fault, 12 for user defined signal 2, 13 for broken pipe, 14 for alarm clock, 15 for termination

file= "example.txt"
trap "rm -f $file; echo 'Temporary file deleted'; exit" 0 2 15
# to remove trap use trap - signal
trap - 0 2 15
