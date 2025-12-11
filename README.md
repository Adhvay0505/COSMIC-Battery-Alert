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
   git clone https://github.com/Adhvay0505/COSMIC-Battery-Alert.git
   cd COSMIC-Battery-Alert
   chmod +x battery_alert.sh
   ./battery_alert.sh
2. **Run Automatically**
   
### Option 1: Add to COSMIC Startup Applications

- Open COSMIC Settings → Startup Applications

- Click Add Program and select battery-alert.sh

- The script will start automatically on login

### Option 2: Run as systemd user service

- Create the service file ~/.config/systemd/user/battery-alert.service:
```bash
[Unit]
Description=Battery Alert Script

[Service]
ExecStart=/home/YOURUSERNAME/.local/bin/battery-alert.sh
Restart=always

[Install]
WantedBy=default.target
```

- Enable and start the service:

```systemctl --user enable --now battery-alert.service```


- The script will now run in the background automatically.

## Configuration

- Check interval: Change the sleep 60 in the script to another number of seconds if you want more/less frequent checks.

- Battery thresholds: Adjust the 15 and 5 in the script for low and critical notifications.
   
