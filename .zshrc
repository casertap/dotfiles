# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/pc/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias emacs="emacs -nw"


export TERM=xterm-256color

## virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

## rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

DISABLE_AUTO_TITLE=true

## powerline (SLOW)
# if [[ -r /usr/local/lib/python3.6/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#     source /usr/local/lib/python3.6/dist-packages/powerline/bindings/zsh/powerline.zsh
# fi

## editors
alias emacs="emacs -nw"
export EDITOR=/usr/bin/vim

## golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/golib:$HOME/go"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pc/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/home/pc/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pc/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/pc/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

