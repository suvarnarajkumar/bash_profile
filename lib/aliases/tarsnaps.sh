alias tshelp="echo TARSNAP aliases: &&
          echo ================ &&
          echo tslist   - list the archived backups &&
          echo tsstats - stats and size of all backups &&
          echo tsbackup - backup files in /opt/backup_here &&
          echo tsrestore - restore any of the archives &&
          echo tsdelete - delete a backup archive from cloud &&
          echo tsdryrun - find how much size the compressed backup of a folder would be if we create a backup"


alias tslist='sudo tarsnap --list-archives | sort'
alias tsstats='sudo tarsnap --print-stats -f "*"'
alias tsbackup='sudo /root/tarsnap-backup.sh'
alias tsrestore='sudo tarsnap -x -f '
alias tsdelete='sudo tarsnap -d -f '
alias tsdryrun='sudo tarsnap --dry-run -v --no-default-config --print-stats --humanize-numbers -c '
