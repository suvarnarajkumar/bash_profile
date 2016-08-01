# create a directory and enter it
take() {
  mkdir $1
  cd $1
}

# cd into a dir with part of name given
cdp() {
  echo 'cmd: cd *$1*'
  cd *$1*
}

psgrep() {
  echo 'cmd: ps -ef | grep -i '
  ps -ef | grep -i $1
}

clock() {
  while true;do clear;echo "===========";date +"%r";echo "===========";sleep 1;done
}

extract() {
  if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
  else
    if [ -f $1 ] ; then
      case $1 in
      *.tar.bz2)
        echo "cmd: tar xvjf $1"
        tar xvjf $1
        ;;
      *.tar.gz)
        echo "cmd: tar xvzf $1"
        tar xvzf $1
        ;;
      *.tar.xz)
        echo "cmd: tar xvJf $1"
        tar xvJf $1
        ;;
      *.lzma)
        echo "cmd: unlzma $1"
        unlzma $1
        ;;
      *.bz2)
        echo "cmd: bunzip2 $1"
        bunzip2 $1
        ;;
      *.rar)
        echo "cmd: unrar x -ad $1"
        unrar x -ad $1
        ;;
      *.gz)
        echo "cmd: gunzip $1"
        gunzip $1
        ;;
      *.tar)
        echo "cmd: tar xvf $1"
        tar xvf $1
        ;;
      *.tbz2)
        echo "cmd: tar xvjf $1"
        tar xvjf $1
        ;;
      *.tgz)
        echo "cmd: tar xvzf $1"
        tar xvzf $1
        ;;
      *.zip)
        echo "cmd: unzip $1"
        unzip $1
        ;;
      *.Z)
        echo "cmd: uncompress $1"
        uncompress $1
        ;;
      *.7z)
        echo "cmd: 7z x $1"
        7z x $1
        ;;
      *.xz)
        echo "cmd: unxz $1"
        unxz $1
        ;;
      *.exe)
        echo "cmd: cabextract $1"
        cabextract $1
        ;;
      *)
        echo "extract: '$1' - unknown archive method"
        ;;
      esac
    else
      echo "$1 - file does not exist"
    fi
  fi
}
