# WSL Autostart
Support for starting the Linux services in Windows Subsystem for Linux (WSL) on Windows startup.

[README](README.md) | [中文文档](README_zh.md)

## Table of Contents

* [Installation](#installation)
* [Usage](#usage)

## Installation

* Clone to any directory using the git command: (e.g `C:\wsl-autostart`)
``` shell
git clone https://github.com/troytse/wsl-autostart
```

* Add a startup item to the registry.
![run-regedit](doc/run-regedit.png)

* Add a string item under `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run` (e.g `WSLAutostart`)
![regedit-new-item](doc/regedit-new-item.png)

* Set the path to the script (e.g `C:\wsl-autostart\start.vbs`)
![regedit-set-path](doc/regedit-set-path.png)

## Usage

* `start.vbs` only exec `~/init.sh` in WSL.

* copy init.sh to ~/ of WSL

* echo yourpassword > ~/.safe/pwd.conf
