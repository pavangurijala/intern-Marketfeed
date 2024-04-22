# Log File Monitoring Script

## Description

This bash script (`log-monitor.sh`) is designed to automate the analysis and monitoring of log files. It continuously monitors a specified log file for new entries, displays them in real-time, and performs basic log analysis by counting occurrences of specific keywords (such as "ERROR" and "WARNING") within each log entry. Additionally, it generates summary reports for error and warning counts.

## Features

- Monitors a specified log file for new entries.
- Displays new log entries in real-time.
- Performs basic log analysis by counting occurrences of specific keywords (e.g., "ERROR", "WARNING").
- Generates summary reports for error and warning counts.

## Requirements

- Bash shell environment

## Usage

1. Save the script as `log-monitor.sh`.
2. Make the script executable using the command: `chmod +x log-monitor.sh`.
3. Run the script with the path to your log file as an argument: `./log-monitor.sh /path/to/logfile.log`.
 
