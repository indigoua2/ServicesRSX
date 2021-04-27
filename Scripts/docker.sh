
printf "\033[1;31mDOCKER CONTAINERS\033[0m"
printf "\n"
docker ps -a
printf "\n"
printf "\n"
printf "\n"
printf "\033[1;31mSTOP CONTAINER\033[0m"
printf "\n"
docker stop $1
printf "\n"
printf "\n"
printf "\n"

printf "\033[1;31mSTART CONTAINER\033[0m"
printf "\n"
docker start $1
printf "\n"
printf "\n"
printf "\n"

printf "\033[1;31mDOCKER CONTAINERS\033[0m"
printf "\n"
docker ps -a
