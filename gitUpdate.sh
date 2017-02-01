echo -e "\033[31m"=== Git 업데이트 ==="\033[0m"

echo -e -n "\033[32m"=== 커밋 메세지 : "\033[0m"
read message

git add .
git commit -m "$message"
git push

echo -e "\033[32m"=== [완료] ==="\033[0m"
