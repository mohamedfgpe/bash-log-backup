# Log Backup Script 🛡️

This is my **first Bash scripting project** — a simple yet powerful automation tool that backs up system log files.

## 🧠 What It Does

- Compresses the `/var/log` directory into a `.tar.gz` archive
- Saves the backup in `/var/backups/logs` with a timestamp
- Logs the backup process and result in `/var/log/backup_logs.log`
- Checks if the backup was successful and prints the status

## 📂 Usage

```bash
chmod +x backup.sh
sudo ./backup.sh
