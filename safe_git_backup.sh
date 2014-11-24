
WORK=1
cd ~/code
find -size +70M -not -path "./.git*" | grep -q "\." && WORK=0

if [ $WORK = 1 ]; then
  echo -e '\E[34m'"\033[1m OK \033[0m"
  /home/dkdk/sh/backup.sh
else
  echo -e '\E[34m'"\033[1m FAIL \033[0m"
  find -size +70M -not -path "./.git*"  
  echo -e '\E[34m'"\033[1m FAIL \033[0m"
fi

