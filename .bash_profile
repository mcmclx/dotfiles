alias ll='ls -lah'
alias vi='/usr/local/bin/vim'
alias edwin='mit-scheme --edit'
alias emacs='emacs -nw'
alias ssh='ssh -A -X'
alias macvim='mvim'
alias ipython='/usr/local/bin/ipython --classic --no-confirm-exit'
alias grep='grep --color=auto'
alias scp='scp -c arcfour -C'
alias identify='identify -verbose'
alias locate='mdfind -name'

export EDITOR=/usr/local/bin/vim
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

n() {
       $EDITOR ~/notes/"$*"-`date +%Y-%m-%d`.md
}

nls() {
        ls -c ~/notes/ | grep "$*"
}
