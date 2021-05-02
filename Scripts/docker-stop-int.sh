
printf "\033[1;31mDOCKER CONTAINERS\033[0m"

printf "\n"

docker ps -a

printf "\n"
printf "\n"
printf "\n"

printf "\033[1;31mSTOP CONTAINER\033[0m"
printf "\n"
docker stop soa-int
docker stop resolver
docker stop database
docker stop erp
docker stop atelier

printf "\n"
printf "\n"

docker images

printf "\033[1;31mEFFACE IMAGES\033[0m"
printf "\n"

docker rmi atelier_atelier
docker rmi services_database
docker rmi services_resolver
docker rmi services_soa-int
docker rmi services_erp

printf "\n"
printf "\n"

printf "\033[1;31mDOCKER IMAGES\033[0m"
printf "\n"
docker images

printf "\033[1;31mDOCKER CONTAINERS\033[0m"
printf "\n"
docker ps -a
