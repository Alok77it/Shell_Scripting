#!/bin/bash
# LogAnalyzer.sh - A simple log analyzer script

# Prompt for the log file name
echo "Enter the log file name:"
read logfile

# Check if the file exists
if [ ! -f "$logfile" ]; then
    echo "File not found!"
    exit 1
fi

# Count the number of occurrences of a specific error
echo "Enter the error keyword to search for:"
read keyword
error_count=$(grep -c "$keyword" "$logfile")
echo "Number of occurrences of '$keyword': $error_count"

# Extract and display log entries for a specific date
echo "Enter the date to filter log entries (YYYY-MM-DD):"
read date
echo "Log entries for $date:"
grep "$date" "$logfile"

# Summarize log entries by severity level
echo "Summary of log entries by severity level:"
grep -oE "INFO|WARNING|ERROR" "$logfile" | sort | uniq -c

# Generate a report of the top 10 most frequent log entries
echo "Top 10 most frequent log entries:"
awk '{print $0}' "$logfile" | sort | uniq -c | sort -nr | head -10