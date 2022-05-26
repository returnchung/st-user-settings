# Sublime Text User Settings

Keep my Sublime Text Config and Plugin Setting in `User` up to date.😎
### Setup for crontab

```sh
git clone git@github.com:returnchung/st-user-settings.git;
# Add this example config to your crontab
--
0 */6 * * *  cd /path/to/st-user-settings;git pull origin;sh run.sh;sh autocmt.sh >> /tmp/cron_stdout.log 2>&1"
```

### Recover your User setting
```sh
cd /path/to/st-user-settings
sh recover.sh
```

Please enjoy it!😀
