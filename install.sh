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

cd ~
git clone https://github.com/siekman-io/dotfiles-servers.git
sleep 2
rm ~/.bashrc 
sleep 2
ln -s ~/dotfiles-servers/.bashrc ~/.bashrc
touch ~/bash_overide


timedatectl set-timezone Europe/Amsterdam


