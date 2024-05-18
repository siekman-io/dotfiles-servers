# !/bin/bash
#####################################################
# Siekman Personal dotfiles installer
#####################################################
#        _      _                            _
#    ___(_) ___| | ___ __ ___   __ _ _ __   (_) ___
#   / __| |/ _ \ |/ / '_ ` _ \ / _` | '_ \  | |/ _ \
#   \__ \ |  __/   <| | | | | | (_| | | | |_| | (_) |
#   |___/_|\___|_|\_\_| |_| |_|\__,_|_| |_(_)_|\___/
#
#              Created by Jouke Siekman
#             Netherlands 2023 Leerbroek
#                https://siekman.io
#
#####################################################
## My personal Dotfiles for Servers
#####################################################

rm ~/.bashrc 

ln -s ~/dotfiles-servers/.bashrc .bashrc

# Install crontab
0 23 * * * /usr/bin/sh /opt/scripts/dyndns/dyndns.sh

crontab /root/dotfiles-servers/cronjob/fwupdate