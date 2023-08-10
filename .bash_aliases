#####################################################
#        _      _                            _
#    ___(_) ___| | ___ __ ___   __ _ _ __   (_) ___
#   / __| |/ _ \ |/ / '_ ` _ \ / _` | '_ \  | |/ _ \
#   \__ \ |  __/   <| | | | | | (_| | | | |_| | (_) |
#   |___/_|\___|_|\_\_| |_| |_|\__,_|_| |_(_)_|\___/
#                   Alias file
#              Created by Jouke Siekman
#             Netherlands 2023 Leerbroek
#                https://siekman.io
#####################################################
## MY SERVER ALIAS FILE
#####################################################


# Personal Settings
alias sshl='ssh-add -L'
alias key='ssh-add ~/.ssh/js'



######## SYSTEM SETTINGS ########


### VARIABLES ###
DOTFILES=~/dotfiles-servers/

### INFORMATION SCRIPTS###

### Sudo Helpers ###
alias ssu='sudo -E su' #Sudo with key passtrough#

### TERMINAL COMMANDS OPTIMISATIONS ###
alias dotup='cd ~/dotfiles-servers && git pull && source ~/.bashrc'
alias dotinstall='echo "source ~/dotfiles-servers/.bash_aliases" >> ~/.bashrc'

# Programs

# OhMyZSH
#alias plugins='echo $plugins'

# Midnight commander slow start fix
#alias mc="mc --nosubshell"

# Navigation
alias -='cd -'
alias ~='cd ~'
alias log='cd /var/log'
alias home='cd /home'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Quick navigation
#alias ans='cd ~/scripts/ansible'
#alias ant='cd ~/scripts/ansible-tutorials'
#alias scr='cd ~/scripts'
#alias lnx='cd ~/scripts/linux'
#alias dot='cd ~/Icloud/dotfiles'

# Terminal stuff
#alias flushdns='sudo dscacheutil -flushcache'
alias cls='clear'

# Connection helpers
alias ssh="ssh -A"

# Logging
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"

# Editing
#alias edit-alias='nano ~/.config/zsh/zsh.alias'
#alias edit-zsh='nano ~/.zshrc'
#alias edit-config='nano ~/.ssh/config'
#alias edit-ansible="sudo nano /etc/ansible/ansible.cfg"
#alias edit-ssh="nano ~/.ssh/config"
#alias edit-kh="nano ~/.ssh/known_hosts"
#alias edit-inv="$EDITOR ~/.ssh/inventory"
#alias edit-sqlkh="$EDITOR /Users/siekman/Library/Containers/com.sequel-ace.sequel-ace/Data/.keys/ssh_known_hosts_strict"
#alias edit-hotkeys="$EDITOR $DOTFILES/hotkeys"
alias snano='$EDITOR $(fzf)'

# File actions
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rd='rmdir'


# Directory actions
alias mkdir='mkdir -pv'
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'


# Chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 400='chmod -R 400'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# update, upgrade installation and remove
#alias brup='brew update && brew upgrade'
#alias brupd='brew update'
#alias brupg='brew upgrade'
#alias brin='brew install'
#alias brrm='brew remove'

# Wordpress Cli
alias wplist="wp plugin list --allow-root"
alias wpins="wp plugin install --activate --allow-root"
alias wpcore="wp core update --allow-root"
alias wpplug="wp plugin update --allow-root"
alias wppact="wp plugin activate --allow-root"
alias wpsitekit="wp plugin install --activate --allow-root google-site-kit"


# Listing and search
alias l='exa -lah --icons'
alias ls='exa -lah --icons'
alias ll='exa -lah --icons'
alias lr='exa -lah --icons'
alias lr='exa -lRh --icons' # recursive ls
alias cll='exa -1 --icons | wc -l'
alias h="history | grep "
alias f="find . | grep "


# Network commands
alias pubip='curl https://siekman.io/ip.php'
alias as='bgpq3 as'
alias city='curl ifconfig.co/city'
alias county='curl ifconfig.co/county'
alias slurm='slurm -i en0'
alias iftop='sudo iftop -i enp6s0'

# Snmp Commanda
alias snmpwalk='snmpwalk -v2c -c siekman'


# Dig better
alias txt="dig -t txt"

# Git Functions
alias qp=" git add . && git commit -m 'quick push' && git push"
alias ga="git add ."
alias gc="git commit -m 'make changes'"
alias gl="git log"
alias gp="git push"
alias gpull="git pull"

# MAC Desktop
#alias dockspacer="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'; killall Dock" 
#alias dockspacerl="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock"

# Apache actions
alias aen='a2ensite * && systemctl restart apache2'
alias adis='a2dissite * && systemctl restart apache2 && apachectl configtest'

# Ansible
alias ap="ansible-playbook" 
alias listhosts="ansible all --list-hosts"
alias ansupdate="ansible-playbook -l all ~/scripts/ansible/global_update/update.yml"
alias anslist="ansible-inventory --list -y"







