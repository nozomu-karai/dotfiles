
#==============================================================#
## Setup zinit                                                ##
#==============================================================#
# cSpell:disable
if [ -z "$ZPLG_HOME" ]; then
	ZPLG_HOME="$ZDATADIR/zinit"
fi

if ! test -d "$ZPLG_HOME"; then
	mkdir -p "$ZPLG_HOME"
	chmod g-rwX "$ZPLG_HOME"
	git clone --depth 10 https://github.com/zdharma-continuum/zinit.git ${ZPLG_HOME}/bin
fi

typeset -gAH ZPLGM
ZPLGM[HOME_DIR]="${ZPLG_HOME}"
source "$ZPLG_HOME/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


#==============================================================#
## Plugin load                                                ##
#==============================================================#

#--------------------------------#
# zinit extension
#--------------------------------#
zinit light-mode for \
	@zdharma-continuum/zinit-annex-readurl
#@zinit-zsh/z-a-bin-gem-node
#@zinit-zsh/z-a-patch-dl \
	#@zinit-zsh/z-a-unscope \
	#@zinit-zsh/z-a-default-ice \
	#@zinit-zsh/z-a-submods
#@zinit-zsh/z-a-man # -> require gem


#--------------------------------#
# completion
#--------------------------------#
zinit wait'0b' lucid \
  light-mode for @zsh-users/zsh-autosuggestions


#--------------------------------#
# prompt
#--------------------------------#
# -> gitstatus(powerlevel10k)
# git_version=$(git --version | head -n1 | cut -d" " -f3)
# if [[ "$(version3 "$git_version")" -ge "$(version3 "2.11.0")" ]]; then
#   zinit ice lucid atload"source $ZHOMEDIR/rc/pluginconfig/git-prompt_atload.zsh"
#   zinit light woefe/git-prompt.zsh
# else
#   zinit ice lucid atload"source $ZHOMEDIR/rc/pluginconfig/zsh-git-prompt_atload.zsh"
#   zinit light olivierverdier/zsh-git-prompt
# fi

zinit wait'0a' lucid \
  if"(( ${ZSH_VERSION%%.*} > 4.4))" \
  atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
  light-mode for @zdharma-continuum/fast-syntax-highlighting

PROMPT="%~"$'\n'"> "
zinit wait'!0b' lucid depth=1 \
  atload"source $ZHOMEDIR/rc/pluginconfig/powerlevel10k_atload.zsh" \
  light-mode for @romkatv/powerlevel10k


#--------------------------------#
# improve cd
#--------------------------------#
zinit wait'1' lucid \
	from"gh-r" as"program" pick"zoxide-*/zoxide" \
	atload"source $ZHOMEDIR/rc/pluginconfig/zoxide_atload.zsh" \
	light-mode for @ajeetdsouza/zoxide

zinit wait'1' lucid \
	light-mode for @Tarrasch/zsh-bd


#--------------------------------#
# fzf
#--------------------------------#
zinit wait'0b' lucid \
	from"gh-r" as"program" \
	atload"source $ZHOMEDIR/rc/pluginconfig/fzf_atload.zsh" \
	for @junegunn/fzf
zinit ice wait'0a' lucid
zinit snippet https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh
zinit ice wait'1a' lucid 
zinit snippet https://github.com/junegunn/fzf/blob/master/shell/completion.zsh
zinit ice wait'0a' lucid as"program"
zinit snippet https://github.com/junegunn/fzf/blob/master/bin/fzf-tmux

zinit wait'1' lucid blockf nocompletions \
	from"gh-r" as'program' cp"fd-*/autocomplete/_fd -> _fd" pick'fd*/fd' \
	atclone'chown -R $(id -nu):$(id -ng) .; zinit creinstall -q sharkdp/fd' \
	atpull'%atclone' \
	light-mode for @sharkdp/fd

zinit wait'1' lucid \
	from"gh-r" as"program" cp"bat/autocomplete/bat.zsh -> _bat" pick"bat*/bat" \
	atload"export BAT_THEME='Nord'; alias cat=bat" \
	light-mode for @sharkdp/bat
