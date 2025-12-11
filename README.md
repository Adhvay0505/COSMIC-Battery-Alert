# COSMIC-Battery-Alert

A lightweight battery notification script.  
Since COSMIC’s built-in battery notifications are incomplete in Fedora 43, this script runs in the background and alerts you when your battery is low or critical.

---

## Features

- Alerts at **low battery** (default 15%)  
- Alerts at **critical battery** (default 5%)  
- Uses native desktop notifications via `notify-send`  
- Runs automatically in the background (via Startup Applications or systemd user service)  
- Configurable check interval  

---

## Requirements

- Linux system with:
  - `bash`
  - `upower`
  - `notify-send` (usually comes with `libnotify` package)  
- COSMIC DE (or any Linux DE with notifications)  

---

## Installation

1. **Download the script:**
   ```bash
   
