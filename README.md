VM-Backit - A Simple System Backup Utility
==========

This project has been forked and modified for single utility use from my LEMP kit projects [VStacklet](https://jmsolodesigns.com/code-projects/vstacklet/varnish-lemp-stack) & [HStacklet](https://jmsolodesigns.com/code-projects/hstacklet/hhvm-lemp-stack).


Script Features
--------
  * Simple to install and configure.
  * Script writes backup output to /root/vm-backit.log for additional observations.
  * Color Coding for emphasis on install processes.
  * Everything you need to get backup your system.
  * Cron job examples are included within the script.


Script Functions
--------

__VM-Backit__ - Installs scripts to help manage and automate server/site backups 
  * Backup your files in key locations (ex: /srv/www /etc /root)
  * Backup your databases
  * Package files & databases to one archive
  * Cleanup remaining individual archives
  * Simply configure and type '__vm-backit__' to backup important directories and databases - cron examples included.

![VM-Backit intro](https://github.com/JMSDOnline/vm-backit/blob/master/images/vm-backit-intro.png "VM-Backit Backup Utility")

![VM-Backit action preview](https://github.com/JMSDOnline/vm-backit/blob/master/images/vm-backit-action-preview.png "VM-Backit Backup Utility - action preview")

Getting Started
----------------
_You should read these scripts before running them so you know what they're
doing._ Changes may be necessary to meet your needs.

Files __requiring__ your attention __before__ running a backup are located in the __~/vm-backit__ directory.
  * directory-backup.sh
  * database-backup.sh

### VM-Backit - Installs needed files for running complete system backups:
```
curl -LO https://raw.github.com/JMSDOnline/vm-backit/master/vm-backit.sh
chmod +x vm-backit.sh
./vm-backit.sh
```

### The TO-DO List
- [ ] Create a inline installer for naming directories from the script
- [ ] Create a inline installer for naming databases/users/passwords to backup from the script
- [ ] Add an option to setup cron jobs automatically


### Additional Notes and honorable mentions

As per any contributions, be it suggestions, critiques, alterations and on and on are all welcome!