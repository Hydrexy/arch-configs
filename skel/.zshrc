# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nitro/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update='sudo pacman -Syu'
#Text colors 
RED='%F{#bf0000}'
DARK_RED='%F{#800000}'
BRIGHT_RED='%F{#FF0000}'
GREEN='%F{#00FF00}'
YELLOW='%F{#FFFF00}'
CYAN='%F{#00FFFF}'
DARK_GREEN='%F{#5aa110}'
# User prompt sets colors and detects if user is root or not
if [[ $EUID -eq 0 ]]; then
	PROMPT="${DARK_RED}┌──[${GREEN}%n${YELLOW}@${CYAN}%m${DARK_RED}]-[${DARK_GREEN}%~${DARK_RED}]	
└─╼ ${YELLOW}# %f "
else
	PROMPT="${DARK_RED}┌──[${GREEN}%n${YELLOW}@${CYAN}%m${DARK_RED}]-[${DARK_GREEN}%~${DARK_RED}]	
└─╼ ${YELLOW}%{$%}%f "
fi

zstyle ':completion:*:default' list-colors 'no=0:fi=0:di=01;34:ln=01;36:pi=33;so=01;35:bd=01;33;40:cd=01;33;40:or=01;31:mi=05;37;41:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:' 
