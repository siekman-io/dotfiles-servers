
#!/bin/bash
#####################################################
# .bashrc
#####################################################
#       _      _                            _       
#   ___(_) ___| | ___ __ ___   __ _ _ __   (_) ___  
#  / __| |/ _ \ |/ / '_ ` _ \ / _` | '_ \  | |/ _ \ 
#  \__ \ |  __/   <| | | | | | (_| | | | |_| | (_) |
#  |___/_|\___|_|\_\_| |_| |_|\__,_|_| |_(_)_|\___/ 
#                                                                   
#
#              Created by Jouke Siekman
#             Netherlands 2024 Leerbroek
#                https://siekman.io
#
#####################################################
## .bashrc
#####################################################
## Created at : 18-05-2024 | 14:28:46
#####################################################

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


# Exports
export EDITOR='nano'
export VISUAL='nano'



# Bash Prompt
PS1="\[\e[36m\]#\# \[\e[34m\][\[\e[m\]\\[\e[m\]\[\e[34m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[32m\]:\[\e[m\]\[\e[32m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]"

# Aliasses
source ~/dotfiles-servers/bash_export
source ~/dotfiles-servers/bash_alias
source ~/bash_overide

# Update DotFiles
dotupdate

# Notify server admin of a root login
curl -s -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"$noteadmin\"}" $discordtoken > /dev/null