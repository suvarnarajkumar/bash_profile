alias ll='ls -llh --group-directories-first'
alias lla='ls -llh --group-directories-first -a'
alias la='ls --group-directories-first -ACF'
alias l='ls --group-directories-first -CF'
alias ..='cd .. && l'
alias ...='cd ../.. && l'
alias ....='cd ../../.. && l'
alias rm='rm -i'
alias cd-='cd -'
alias netstats="netstat -nlpt | grep "
alias murder="echo 'cmd: kill -9 ' && kill -9 "
alias rmrf="echo 'cmd: rm -rf' && rm -rf "
alias g="git "

# size commands
alias size="echo 'dush - current dir size' &&
            echo 'dirszsort - sort dir contents by size' &&
            echo 'disksz - disk size'"
alias dush="echo 'cmd: du -sh' && du -sh"
alias disksz="echo 'cmd: df -h' && df -h"
alias dirszsort="echo 'cmd: du -sh * | sort -k1,1rn | head' && 
du -sh * | sort -k1,1rn | head"

# ruby
alias be="bundle exec "
alias rls="echo 'rails s ' && rails s "
alias rlc="echo 'rails c ' && rails c "
alias serve="echo 'ruby -run -e httpd . -p 3000' && ruby -run -e httpd . -p 3000"
