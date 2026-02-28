# battery-report-batch
# Windows Battery Report Automation

A simple batch script to automatically generate a **Windows battery report** with timestamped filenames.

## Features

- Generates a battery report instantly
- Saves it in the same folder as the script
- Adds current date & time to the filename (`DD-MM-YYYY_HH-MM`)
- Opens the report automatically

## Usage

1. Download or clone this repository
2. Save `battery-report.bat` anywhere you like
3. **Right-click → Run as Administrator**
4. Your battery report will be generated and opened automatically

> Every report is timestamped like `battery-report-28-02-2026_14-35.html`.  
> Running the script multiple times within the same minute will overwrite the previous report.

## How It Works

- Extracts current date and time from your system
- Combines them with the folder path to create a unique filename
- Uses the built-in `powercfg /batteryreport` command to generate the report
- Automatically opens the report in your default browser

## Example Output
