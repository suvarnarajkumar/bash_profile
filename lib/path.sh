export PATH=$PATH:~/bin

# re
export PATH=$PATH:~/bin/cnp_helpers/bin

if [ $(uname) == 'Darwin' ]
then
  export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
  export PATH="$(brew --prefix coreutils)/libexec/gnuman:$PATH"
fi

# NVM
export NVM_DIR="/Users/prasanna/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
