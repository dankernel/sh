
sudo netctl stop /etc/netctl/enp2s0f0-ethernet 
work="Network stop"
echo -e '\E[34m'"\033[1m$work\033[0m"

sudo netctl start /etc/netctl/enp2s0f0-ethernet
work="Network start"
echo -e '\E[34m'"\033[1m$work\033[0m"

work="ping..."
echo -e '\E[34m'"\033[1m$work\033[0m"
ping google.com
