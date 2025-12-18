# Log-Archive-Tool

A simple Bash script to **archive log directories**, keep a history of archives, and automatically **clean up old archives**.

This tool is useful for system maintenance, log rotation basics, and DevOps practice projects.

---

## ✨ Features

* Archive any log directory from the command line
* Timestamped `.tar.gz` compressed archives
* Stores archives in a dedicated directory
* Maintains an archive activity log
* Automatically deletes archives older than a defined number of days
* Prevents archiving empty or invalid directories

---

## 📂 Archive Location

All archives and logs are stored in:

```
$HOME/log_archives
```

Files created:

* `logs_archive_<timestamp>.tar.gz` – archived logs
* `archive.log` – history of archive actions

---

## 🚀 Usage

Make the script executable:

```bash
chmod +x log-archive.sh
```

Run the script:

```bash
./log-archive.sh <log-directory>
```

Example:

```bash
./log-archive.sh /var/log
```

---

## 🛑 Validations

The script will stop execution if:

* No directory is provided
* The directory does not exist
* The directory is empty

---

## 🧹 Archive Retention Policy

Old archives are automatically deleted based on age:

```bash
DAYS=14
```

This means:

* Archives older than **14 days** are removed before creating a new one
* You can change this value in the script if needed

---

## 📄 Logging

Every archive action is logged in:

```
$HOME/log_archives/archive.log
```

Example log entry:

```
Archived /var/log at 20251218_103045 -> logs_archive_20251218_103045.tar.gz
```

---

## 🛠 Technologies Used

* Bash scripting
* `tar` (gzip compression)
* `find` for cleanup

---

## 🎯 Learning Goals

This project helps practice:

* Bash scripting fundamentals
* Input validation
* File system operations
* Automation and cleanup tasks
* DevOps-style maintenance scripting

---

## 📌 License

This project is open for learning and personal use.

## Project Idea Resources
URL:https://roadmap.sh/projects/log-archive-tool
