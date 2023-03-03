
#==============================================================#
#               .zshrc                                         #
#==============================================================#

# profile
if [ "$ZSHRC_PROFILE" != "" ]; then
  zmodload zsh/zprof && zprof > /dev/null
fi

#--------------------------------------------------------------#
##          Base Configuration                                ##
#--------------------------------------------------------------#
source-safe() { if [ -f "$1" ]; then source "$1"; fi }
source "$ZRCDIR/base.zsh"


#--------------------------------------------------------------#
##          Options                                           ##
#--------------------------------------------------------------#
source "$ZRCDIR/option.zsh"


#--------------------------------------------------------------#
##          Completion                                        ##
#--------------------------------------------------------------#
source "$ZRCDIR/completion.zsh"


#--------------------------------------------------------------#
##          Prompt Configuration                              ##
#--------------------------------------------------------------#
source "$ZRCDIR/prompt.zsh"


#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#
source "$ZRCDIR/alias.zsh"


#--------------------------------------------------------------#
##          Plugin                                            ##
#--------------------------------------------------------------#
source "$ZRCDIR/pluginlist.zsh"


#--------------------------------------------------------------#
##          Execute Script                                    ##
#--------------------------------------------------------------#
source-safe "$ZHOMEDIR/.zshrc.local"


if [ -n "$ZSHRC_CI_TEST" ]; then
  echo "zshrc load complete"
  exit
fi
