# system-info-dashboard
  A simple **Bash script** that displays key system information such as OS, kernel, CPU, memory, disk usage, and top processes.
Useful for system administrators, DevOps engineers, and students who want a quick overview of system health without installing extra tools.
_**FEATURES**_.................
  1. Displays system date & time of execution
  2. Shows Operating System, Kernel version, Hostname
  3. Provides CPU details (cores, model name)
  4. Monitors Memory usage (total, used, free)
  5. Displays Disk usage summary
  6. Lists Top 7 memory-consuming processes
  7. Supports **crontab scheduling** to run the script automatically
_**HOW TO RUN**_............
  1. Clone this Repository:
     ```bash
      git clone git@github.com:NavanishReddy/system-info-dashboard.git
      cd system-info-dashboard
  2. Make script Executable
     ```bash
     chmod +x sys_info.sh
  3. Run the Script
     ```bash
     ./sys_info.sh
_**AUTOMATE WITH CRONTAB**_......
TO sechdule this script to run every hour

    
    crontab -e

Then add:
     
    0 * * * * /path/to/system-info-dashboard/sys_info.sh >> /path/to/logfile.log 2>&1
    
_**LOGGING**_........

The script appends output to a log file if scheduled via crontab, allowing historical review of system status.

_**SAMPLE OUTPUT**_....
<img width="851" height="366" alt="image" src="https://github.com/user-attachments/assets/6f7fc67d-7c64-4a32-9d3a-f660c7688acb" />
