# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt histignorealldups
setopt prompt_subst

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

# custom prompt start #

line1=%F{cyan}$(echo -e '\u250C')%F{reset}
line2=%F{cyan}$(echo -e '\u251C\u2500')%F{reset}
line3=%F{cyan}$(echo -e '\u2514\u2500')%F{reset}
divider=%F{cyan}$(printf '%.s\u2500' {2..$(tput cols)})%F{reset}
newline=$'\n'
input=%F{cyan}$(echo -e '\u25C9 ')%F{reset}
user="%F{cyan}[%F{green}%n%F{reset}%F{cyan}]-%F{reset}"
dir="%F{cyan}[%F{red}%~%b%F{reset}%F{cyan}]%F{reset}"

function precmd() { divider=%F{cyan}$(printf '%.s\u2500' {2..$(tput cols)})%F{reset} }

PROMPT='${line1}${divider}${newline}${line2}${user}${dir}${newline}${line3}${input}'

# custom prompt end #

alias ls='ls --color=auto'

# key bindings
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "^[[3~" delete-char

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
