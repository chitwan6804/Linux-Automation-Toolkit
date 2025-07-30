# Linux System Automation Toolkit

A toolkit of Bash scripts to automate everyday system maintenance tasks on a Linux system (tested on Lubuntu).

## 🔧 Features
- 📁 Auto-backup of the `Documents/` directory with timestamped archives
- 📉 System resource logging (CPU and memory usage)
- 🧹 Cleanup of old `.log` files (older than 7 days)
- 📋 User disk usage reporting
- ⏰ Task scheduling using `cron`

## 🚀 Usage

Give executable permission and run the scripts:

```bash
chmod +x scriptname.sh
./scriptname.sh
````

Example:

```bash
./backup_script.sh
./system_monitor.sh
./cleanup_script.sh
./user_report.sh
```

## ⏰ Cron Setup

To schedule system tasks (like system monitoring):

1. Open crontab:

```bash
crontab -e
```

2. Paste the line from `crontab_instructions.txt`, e.g.:

```bash
0 9 * * * /bin/bash $HOME/linux-automation-toolkit/system_monitor.sh >> $HOME/linux-automation-toolkit/cron.log 2>&1
```

This runs the system monitor every day at 9 AM.

## 📁 File Structure

```
linux-automation-toolkit/
├── backup_script.sh
├── system_monitor.sh
├── cleanup_script.sh
├── user_report.sh
├── crontab_instructions.txt
└── README.md
```

## ✅ Tested On

* Lubuntu 22.04 LTS (VirtualBox)
* Bash 5.x

## 📌 Notes

* Make sure your `Documents/` directory exists or update the path in `backup_script.sh` accordingly.
* All outputs are stored locally inside the project folder under `logs/`, `backups/`, and `cron.log`.

---

This toolkit was created for system automation practice and learning. Contributions and suggestions are welcome!
