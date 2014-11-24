cd ~/
git add .config
git add .bashrc
git add .vimrc
git add .conkyrc
git add .*

MSG=auto'-'`date +%Y%m%d'-'%H%M%S`
git commit -m "$MSG"

git push
work="[OK] Config.."
echo -e '\E[34m'"\033[1m$work\033[0m"
