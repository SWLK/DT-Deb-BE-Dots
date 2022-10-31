# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='<\u: \W >\n \`-> '

# powerline-shell
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

# nnn settings
NNN_FCOLORS='c1e21d6b83b218f7c6d6abb4'
export NNN_FCOLORS
export NNN_OPENER="urxvt"

# Aliases
alias sudo="sudo "
alias wpa="wpa_supplicant -B iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf"
alias xi="xbps-install"
alias rechrony="xbps-reconfigure -f chrony"
alias hdmi-on="xrandr --output HDMI-1 --auto --output DRI-1 --off"
alias hdmi-off="xrandr --output HDMI-1 --off"
alias hide-cursor="unclutter -idle 10 &"
alias tty-clock="tty-clock -c"
alias onefetch="onefetch --show-logo auto"
alias scdl="scdl -c --extract-artist"
alias ytdl="youtube-dl -x --audio-format mp3 --metadata-from-title '%(artist)s - %(title)s'"
alias pd="sudo poweroff"
alias psp="~/Repos/ppsspp/build/PPSSPPSDL"
alias battinfo="cat /sys/class/power_supply/axp20x-battery/uevent"
alias neo="neo -F -f 4"
alias nnn="nnn -de"
alias neofetch="echo && neofetch"
alias cbonsai="cbonsai -li"
alias pblnk='echo -e "\n\n\n\n\n\n\n\n" > /tmp/DEVTERM_PRINTER_IN'
alias ptest='echo -en "\x12\x54" > /tmp/DEVTERM_PRINTER_IN'
alias vvvvvv="/home/sheung/Downloads/vvvvv/data/noarch/start.sh"
alias token="xclip -i /home/sheung/Repos/gh-token -rmlastnl"

# hoard-rs
#source /home/sheung/.cargo/registry/src/github.com-1ecc6299db9ec823/hoard-rs-1.0.1/src/shell/hoard.bash
__hoard_list ()
{
    ## Thanks github.com/ellie/atuin for the inspiration how to get TUI with termion working as a bash Plugin
	tput rmkx
    HOARD_COMMAND="$(RUST_LOG=error hoard --autocomplete list 3>&1 1>&2 2>&3)"
	tput smkx 

    READLINE_LINE=${HOARD_COMMAND}
    READLINE_POINT=${#READLINE_LINE}
}

if [[ -z $HOARD_NOBIND ]]; then
	bind -x '"\e\e": __hoard_list'
fi


# Paths
export PATH="$PATH:/home/sheung/.local/bin"
export PATH="$PATH:/home/sheung/.cargo/bin"
export CMAKE_PREFIX_PATH="/usr/lib64/"
export PATH="$PATH:/home/sheung/.local/lib/python3.10/site-packages/"
export PATH="$PATH:/usr/lib/python3.10/site-packages/"
export PATH="$PATH:/home/sheung/bin"
export PATH="$PATH:/home/sheung/Downloads/sunvox/sunvox/linux_arm64/"

# Exports
#export DISPLAY=":0.0"
export TERM="rxvt-unicode-256color"
export EDITOR="nvim"
export TERMINAL="urxvt"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export LPDEST=devterm_printer

. "$HOME/.cargo/env"

