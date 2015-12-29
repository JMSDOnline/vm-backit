#!/bin/bash
#
# [VM-Backit System Backup - prep script]
#
# GitHub:   https://github.com/JMSDOnline/vm-backit
# Author:   Jason Matthews
# URL:      https://jmsolodesigns.com/code-projects/vm-backit/system-backup-utility
#
#start
#-----------------------------------------------------------------------

#Script Console Colors
black=$(tput setaf 0); red=$(tput setaf 1); green=$(tput setaf 2); on_green=$(tput setab 2); bold=$(tput bold); standout=$(tput smso); normal=$(tput sgr0); underline=$(tput smul); sub_title=${bold}${yellow}; repo_title=${black}${on_green};

PROGNAME="VM-Backit"
VERSION="1.0.1"

cat <<EOF
  $PROGNAME ver. $VERSION

  The primary use of this script is for running 
  manual backups on user specified directories 
  and databases. 

  This script will also package your directories
  and databases into one archive and perform a 
  backup cleanup.

  Please review the following scripts and make the 
  necessary changes to ensure successful backups.

  ${underline}Directory Backup:${normal}
  /root/vm-backit/directory-backup.sh

  ${underline}Database Backup:${normal}
  /root/vm-backit/database-backup.sh
EOF

# Create vm-backit & backup directory strucutre
mkdir -p ~/vm-backit /backup/{directories,databases}
cd ~/vm-backit

# Download the needed scripts for VM-Backit
curl -LO https://raw.githubusercontent.com/JMSDOnline/vm-backit/master/directory-backup.sh >/dev/null 2>&1;
curl -LO https://raw.githubusercontent.com/JMSDOnline/vm-backit/master/database-backup.sh >/dev/null 2>&1;
curl -LO https://raw.githubusercontent.com/JMSDOnline/vm-backit/master/package-backups.sh >/dev/null 2>&1;
curl -LO https://raw.githubusercontent.com/JMSDOnline/vm-backit/master/backup-cleanup.sh >/dev/null 2>&1;

# Convert all shell scripts to executable
chmod +x *.sh
cd

# Download VM-Backit System Backup Executable
curl -LO https://raw.githubusercontent.com/JMSDOnline/vm-backit/master/vm-backit >/dev/null 2>&1;
chmod +x vm-backit
mv vm-backit /usr/local/bin

###############################################################################
echo
echo
echo "VM-Backit is now installed. Please make the needed changes in";
echo "the required files.";
echo
echo "Once changes are perform, you can run the script by simply typing:";
echo "${bold}${green}vm-backit${normal}";
echo
echo
###############################################################################

#-----------------------------------------------------------------------
#end