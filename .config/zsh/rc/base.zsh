
#==============================================================#
##          Base Configuration                                ##
#==============================================================#

HOSTNAME="$HOST"
HISTFILE="${ZDATADIR}/zsh_history"
HISTSIZE=10000                    # Number of histories in memory
SAVEHIST=100000                   # Number of histories to be saved
HISTORY_IGNORE="(ls|cd|pwd|zsh|exit|cd ..)"
LISTMAX=1000                      # number of completion listings to ask for (1=shut up, 0=ask when window overflows)
KEYTIMEOUT=1

# delete word by word with C-w when typing ls /usr/local/etc etc.
# default : ls /usr/local → ls /usr/ → ls /usr → ls /usr → ls /
# this setting : ls /usr/local → ls /usr/ → ls /usr/ → ls /
WORDCHARS='*?_-[]~&;!#$%^(){}<>|'

export DISABLE_DEVICONS=false
