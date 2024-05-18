
#!/bin/bash
#####################################################
# fwupdate.sh
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
## fwupdate.sh
#####################################################
## Created at : 18-05-2024 | 15:04:29
#####################################################

# Variables
PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
NAMERESOLVER=`cat /etc/resolv.conf |grep -i '^nameserver'|head -n1|cut -d ' ' -f2`
ID=$(hostname)
DATE=$(date +%d-%m-%Y)
TIME=$(date +"%T")
MESSAGEDISCORD="Whitelist update finished on $ID \nDate: $DATE | Time: $TIME "
now=$(date);


# Commands
/usr/bin/nslookup $management |  awk '{print $2}' | grep -Ev "${management}|answer|${NAMERESOLVER}|$^" > $dotfiles/scripts/management.txt


# MANAGEMENT FILE
cat /dev/null > /etc/csf/management.allow
echo ""
echo ""
echo "####################################" >> /etc/csf/management.allow
echo "# Siekman.io management list       #" >> /etc/csf/management.allow
echo "# Created by script Dyndns.sh      #" >> /etc/csf/management.allow
echo "####################################" >> /etc/csf/management.allow
echo ""
echo ""

#write ip addresses to file
for whitelist in `cat $dotfiles/scripts/management.txt` ;
do
        echo ${whitelist}
        echo "${whitelist} # MANAGMENT.SIEKMAN.IO" >> /etc/csf/management.allow
done

# Flush Firewall
csf -r

# Send to Discord channel
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"$MESSAGEDISCORD\"}" $discordtoken

