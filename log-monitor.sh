#!/bin/bash

# Function to monitor log file
monitor_log() {
    echo "Monitoring log file: $1"
    tail -f "$1" | while read line; do
        echo "$line"
        analyze_log "$line"
    done
}

# Function to analyze log entry
analyze_log() {
    # Count occurrences of specific keywords or patterns
    error_count=$(echo "$1" | grep -c "ERROR")
    warning_count=$(echo "$1" | grep -c "WARNING")

    # Generate summary reports
    echo "Error count: $error_count"
    echo "Warning count: $warning_count"
}

# Main function
main() {
    log_file="$1"

    # Check if log file exists
    if [ ! -f "$log_file" ]; then
        echo "Error: Log file '$log_file' not found."
        exit 1
    fi

    # Start log monitoring
    monitor_log "$log_file"
}

# Check for correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

# Call main function with log file argument
main "$1"
