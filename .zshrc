# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="candy"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode fzf zsh-autosuggestions)
VI_MODE_SET_CURSOR=true

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# bindkey -v
# bindkey ^R history-incremental-search-backward
# bindkey ^S history-incremental-search-forward
#
# # Change cursor shape for different vi modes.
# function zle-keymap-select {
# 	if [[ ${KEYMAP} == vicmd ]] ||
# 		[[ $1 = 'block' ]]; then
# 		echo -ne '\e[1 q'
#
# 	elif [[ ${KEYMAP} == main ]] ||
# 		[[ ${KEYMAP} == viins ]] ||
# 		[[ ${KEYMAP} = '' ]] ||
# 		[[ $1 = 'beam' ]]; then
# 		echo -ne '\e[5 q'
# 	fi
# }
# zle -N zle-keymap-select
#
# _fix_cursor() {
# 	echo -ne '\e[5 q'
# }
#
# precmd_functions+=(_fix_cursor)

alias termbin="nc termbin.com 9999"
alias pacs="sudo pacman -S --needed"
alias pacss="pacman -Ss"
alias pacr="sudo pacman -Rns"
alias pacu='echo "last updated: $(cat ~/last-update-time)" && paru -Syu && date "+%a %Y/%m/%d %T" > ~/last-update-time'
alias pacrc='sudo paccache -ruk0 && sudo paccache -r && sudo paccache -rk1 -i linux,linux-firmware,nvidia,xorg-server,xorg-xrandr,xorg-server-common,xorg-xinput,xorg-xinit,archlinux-keyring,openssl,nvidia-utils,lib32-nvidia-utils'
alias jc="sudo journalctl"
alias vim="nvim"
alias x="exit"
alias fok="(qterminal &)"
# alias cls="tput reset"
alias diskusage="du -h --max-depth=1 --exclude ./home --exclude ./sys --exclude ./proc --exclude ./old-home --exclude ./run 2> /dev/null | sort -h"
alias diskusage-txt="diskusage > diskusage.txt && less diskusage.txt"
alias tw="sudo dmesg -Tw"
alias bt="sudo systemctl start bluetooth"
alias suser="systemctl --user"
alias git-uncommit="git reset HEAD~"
alias rsync-git="rsync -rvhuP --filter=':- .gitignore' --filter='- .git'"
alias sussy="sudo systemctl"
alias ip="ip --color=auto"
alias pa="ping -c 3 8.8.8.8"
alias power_now="cat /sys/class/power_supply/BAT0/power_now"
alias prime-run="switcherooctl launch -g 0"
alias bt="sudo systemctl start bluetooth"
alias em="emacsclient -nc"
alias l="ls -lah --sort=time --color=always | less"
alias shaktimaan="cd ~/btp/shaktimaan"
alias datenow="date \"+%Y-%m-%d_%H%M%S\""
