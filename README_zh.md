# WSL 服务自启动脚本
支持在Windows启动时启动WSL中的Linux服务.

[README](README.md) | [中文文档](README_zh.md)

## 目录

* [安装](#安装)
* [使用](#使用)

## 安装

* 使用 git clone 到任意目录 (e.g `C:\wsl-autostart`)
``` shell
git clone https://github.com/troytse/wsl-autostart
```

* 在注册表中加入启动项
![run-regedit](doc/run-regedit.png)

* 在`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run`下新增字符串项目 (e.g `WSLAutostart`)
![regedit-new-item](doc/regedit-new-item.png)

* 设定脚本的路径 (e.g `C:\wsl-autostart\start.vbs`)
![regedit-set-path](doc/regedit-set-path.png)

## 使用
* `start.vbs` 仅在WSL中执行`~/init.sh`命令, 需要在`~/init.sh`中提升权限并执行所有初始任务

* 参考项目中的`init.sh`文件,在WSL中`~/`下创建`init.sh`文件,并赋予执行权限:`chmod +x init.sh`

* 需要程序自动输入用户密码提权. 可自主设置密码存放位置, 测试提权是否成功
```
cat ~/your/password/file | sudo -S cat /etc/hosts | wc -l
```
