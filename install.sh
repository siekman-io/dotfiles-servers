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

# prompt user 
printf " Install programs [y/n] : "
read yn

if [ "$yn" == "y" ] ; then
echo " We started to install some stuff"
apt update -y  && apt upgrade -y
apt install -y  net-tools sudo git curl wget mc btop chattr


fi

echo " setting up dotfiles "


cd ~
git clone https://github.com/siekman-io/dotfiles-servers.git
sleep 2
rm ~/.bashrc
sleep 2
ln -s ~/dotfiles-servers/.bashrc ~/.bashrc
touch ~/bash_overide


timedatectl set-timezone Europe/Amsterdam

mkdir ~/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEAx5KpALOv1wxAvglhhIHOr+VZqVofFy4J0X/mfOYjtcAjfYlOkU0OYeyg35yyP743CYkuJwCiE2SCn9hvhVCZG3p9Vi5B6hoNvvzVW05dHaUku4lm9bSut55ovNE2MC0U32ZdIa1CWMIykSIhQrpGXzDDb9EcvcmIPvxgC+Q/oP5cSR86mRksS1FsM+lagFrkluQrn3/z2DpC3kMZu8lfVIvxj4+4qHL4VvXLnE2PtFjgBSLV3CC5nOcDvIHCO5y77PO6PLBl1w/11lula5Jm83dFeleg4ipAUENUbRPGKJdr4EwtQfc9s5NHivXYk0IuicYHxpVlorFnxa2Mtww8f6O4JXziD5FbsR1khev0ervyM9lYyfS6WdgmTCd9drG7yoNcww7dYQ3oVAV2QNeU0AvIxaBknroFF99ahFiDuqxCJac+/Xpo/ecAmsl7H4x98Pg7z9o4DSaUZW2XzDE2B7lDAIIp9G3WvAXje6SaSgyhwZi0dqsRe7n06j3a7d/sTzuQOrcJhntVvdcYyFRIiUvPLDNuvw9TVn1wyL5deqDzOlcaAwZs61fldNMoGhfSC25cZsdniBz50I2zuM5dpQ556lj6dnwJ+KKf3bEb6dNooWi+f7fmwSu6CWU2tlhUV5VzGABMrLCLcdaeMN7CQVwTiSQumgQrtEkn4TNFmJU= Jouke Siekman" > ~/.ssh/authorized_keys


