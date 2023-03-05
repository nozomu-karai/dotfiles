
#==============================================================#
##          Aliases                                           ##
#==============================================================#

## common ##
alias del='rm -rf'
alias cp='cp -irf'
alias mv='mv -i'
alias ..='cd ..'
alias zcompile_zshrc='zcompile ~/.zshrc'
alias rez='exec zsh'
alias cl='clear'
alias quit='exit'

# history
alias history-mem='fc -rl'
alias history-import='fc -RI'

# ls
alias la='ls -aF --color=auto'
alias lla='ls -alF --color=auto'
alias lal='ls -alF --color=auto'
alias ls='ls -GF --color=auto'
alias ll='ls -l --color=auto'
alias l.='ls -d .[a-zA-Z]* --color=auto'

# chmod
alias 644='chmod 644'
alias 755='chmod 755'
alias 777='chmod 777'

# grep display filename, display line count, do not process binary files
alias gre='grep -H -n -I --color=auto'

## application ##
# vi
alias vi="$EDITOR"
alias sv="sudo $EDITOR"

## development ##
alias py='python'
alias gdb='gdb -silent -nh -x "$XDG_CONFIG_HOME"/gdb/init'

# Easily trace my history
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"' # AUTO_PUSHD is required

# man
alias man-ascii-color-code="man 4 console_codes"

# tmux
alias t='\tmux -2'
alias tmux='\tmux -2'
alias ta='\tmux -2 attach -d'

# git
alias g='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin'
