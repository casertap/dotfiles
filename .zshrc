# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} %T % %{$reset_color%}'

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

## rust
# export PATH="$HOME/.cargo/bin:$PATH"
# DISABLE_AUTO_TITLE=true

## powerline (SLOW)
# if [[ -r /usr/local/lib/python3.6/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#     source /usr/local/lib/python3.6/dist-packages/powerline/bindings/zsh/powerline.zsh
# fi

## editors
alias emacs="emacs -nw"
export EDITOR=/usr/bin/vim

## golang
export GOPATH1="$HOME/golib"
export GOPATH2="$HOME/go"
export GOPATH="$GOPATH1:$GOPATH2"
export PATH=$PATH:$GOPATH1/bin:$GOPATH2/bin
export PATH=$PATH:/usr/local/go/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pc/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/home/pc/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pc/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/pc/Downloads/google-cloud-sdk/completion.zsh.inc'; fi



# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/pc/Documents/workspace/the-urge-reactjs/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/pc/Documents/workspace/the-urge-reactjs/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/pc/Documents/workspace/the-urge-reactjs/node_modules/tabtab/.completions/sls.zsh ]] && . /home/pc/Documents/workspace/the-urge-reactjs/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/pc/go/src/github.com/the-urge-tech/go-search-proxy/node_modules/tabtab/.completions/slss.zsh ]] && . /home/pc/go/src/github.com/the-urge-tech/go-search-proxy/node_modules/tabtab/.completions/slss.zsh
