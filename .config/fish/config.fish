if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a termbin nc termbin.com 9999
abbr -a pacs sudo pacman -S --needed
abbr -a pacss pacman -Ss
abbr -a pacr sudo pacman -Rns
abbr -a pacu 'echo "last updated: $(cat ~/last-update-time)" && paru -Syu && date "+%a %Y/%m/%d %T" > ~/last-update-time'
abbr -a pacrc 'sudo paccache -ruk0 && sudo paccache -r && sudo paccache -rk1 -i linux,linux-firmware,nvidia,xorg-server,xorg-xrandr,xorg-server-common,xorg-xinput,xorg-xinit,archlinux-keyring,openssl,nvidia-utils,lib32-nvidia-utils'
abbr -a jc sudo journalctl
abbr -a vim nvim
abbr -a x exit
abbr -a fok "qterminal &; disown"
abbr -a diskusage "du -h --max-depth=1 --exclude ./home --exclude ./sys --exclude ./proc --exclude ./old-home --exclude ./run 2> /dev/null | sort -h"
# abbr -a diskusage-txt "diskusage > diskusage.txt && less diskusage.txt"
abbr -a tw sudo dmesg -Tw
abbr -a bt 'sudo systemctl start bluetooth && blueberry'
abbr -a suser "systemctl --user"
abbr -a git-uncommit "git reset HEAD~"
abbr -a rsync-git "rsync -rvhuP --filter=':- .gitignore' --filter='- .git'"
abbr -a sussy "sudo systemctl"
abbr -a ip "ip --color=auto"
abbr -a pa "ping -c 3 8.8.8.8"
abbr -a --position anywhere power_now cat /sys/class/power_supply/BAT0/power_now
abbr -a prime-run switcherooctl launch -g 0
abbr -a bt "sudo systemctl start bluetooth && blueberry"
abbr -a em emacsclient -nc
abbr -a --set-cursor l "ls -lah --sort=time --color=always % | bat"
abbr -a datenow 'date "+%Y-%m-%d_%H%M%S"'
abbr -a zed amd-run zeditor
abbr -a venv source .venv/bin/activate
abbr -a docker sudo docker
abbr -a cls clear

