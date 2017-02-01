#!/bin/bash

# Date
Date=`date +%Y%m%d'-'%H%M%S`

# Print
echo -e "\033[31m"=== Git 업데이트 ==="\033[0m"
echo -e -n "\033[32m"=== 커밋 메세지 : "\033[0m"
read message

# Run
git add .
git commit -m $Date'-'"$message"
git push

# End
echo -e "\033[32m"=== [완료] ==="\033[0m"
