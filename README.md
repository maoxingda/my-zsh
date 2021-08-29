# my-zsh

daily backup ~/.zshrc

# .-------- minute (0 - 59)
# | .------ hour (0 - 23)
# | | .---- day of month (1 - 31)
# | | | .-- month (1 - 12) OR jan,feb,mar,apr ...
# | | | | . day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# | | | | |
# * * * * * user-name command or shell to be executed

# 每天12点定时备份zsh shell的配置文件~/.zshrc到git://github.com/maoxingda/my-zsh.git
0 12 * * * /bin/zsh ~/open-source/my-zsh/cron-backup-zshrc.sh >>/tmp/cron.log 2>&1

# 每隔30分钟拷贝一次配置文件
*/30 * * * * /bin/cp -f ~/.zshrc ~/open-source/my-zsh/
