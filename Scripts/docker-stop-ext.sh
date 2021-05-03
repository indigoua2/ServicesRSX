printf "\033[1;31mDOCKER CONTAINERS\033[0m"

printf "\n"

docker ps -a

printf "\n"
printf "\n"
printf "\n"

printf "\033[1;31mSTOP CONTAINER\033[0m"
printf "\n"
docker stop soa-ext
docker stop web
docker stop mail
docker stop voip

printf "\n"
printf "\n"

docker images

printf "\033[1;31mEFFACE IMAGES\033[0m"
printf "\n"

docker rmi servicesrsx_web-dmz
docker rmi servicesrsx_voip
docker rmi servicesrsx_soa-ext
docker rmi servicesrsx_mail


printf "\n"
printf "\n"

printf "\033[1;31mDOCKER IMAGES\033[0m"
printf "\n"
docker images

printf "\033[1;31mDOCKER CONTAINERS\033[0m"
printf "\n"
docker ps -a
