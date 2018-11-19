#!/bin/bash
# input password to sudo
# password saved in ~/.safe/pwd.conf file
cat ~/.safe/pwd.conf | sudo -S cat /etc/hosts | wc -l

# your init script
sudo /etc/init.d/cron start
sudo /etc/init.d/ssh start
sudo /etc/init.d/mysql start
