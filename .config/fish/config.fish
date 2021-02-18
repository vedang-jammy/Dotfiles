# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end
set fish_greeting
if test -f /home/jammy/.autojump/share/autojump/autojump.fish; . /home/jammy/.autojump/share/autojump/autojump.fish; end
### RANDOM COLOR SCRIPT ###
pfetch
# /opt/shell-color-scripts/colorscript.sh random
#starship prompt
starship init fish | source

#aliases
#load alias
 # Verbosity and settings that you pretty much just always are going to want.
  alias cp="cp -iv" 
	alias mv="mv -iv" 
	alias rm="rm -v" 
	alias mkd="mkdir -pv" 
	alias yt="youtube-dl --add-metadata -i" 
	alias yta="yt -x -f bestaudio/best" 
	alias ffmpeg="ffmpeg -hide_banner" 
	alias gtop="LANG=en_US.utf8 TERM=xterm-256color gtop" 
  alias mnt1="udisksctl mount -b /dev/sda1" 
  alias umnt1="udisksctl unmount -b /dev/sda1"
	alias gpgimp="gpg --keyserver pool.sks-keyservers.net --recv-keys" 
	alias makedwm="cd /home/jammy/ricing/dwm-new && sudo make clean install"  
	alias makeblocks="cd /home/jammy/ricing/dwmblocks && sudo make clean install"  
# Abbrevation for long Commands
	alias ka="killall" 
	alias g="git" 
	alias YT="straw-viewer" 
	alias sdn="sudo shutdown -h now" 
	alias p="sudo pacman" 
	alias y='yay'	
  alias py='python'
	alias emu="scrcpy -m 1920"
	alias SS="sudo systemctl"
	alias zshrc="nvim ~/.zshrc"
	alias config="nvim /home/jammy/.config/bspwm/bspwmrc"
  alias sxconf="nvim /home/jammy/.config/sxhkd/sxhkdrc"
  alias nvimconf="cd ~/.config/nvim"
  alias vim="nvim"
  alias v="nvim"
  alias doomsync="~/.emacs.d/bin/doom sync"
  # navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

  # Changing "ls" to "exa"
alias l='exa --color=always --group-directories-first'
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#fzf apps serch in the repo(pacman and aur ) and install them
alias s="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S
"
alias sy="yay -Slq | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro  yay -S"
