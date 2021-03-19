# CONFIGURATION UFW
printf "Installation ufw\033[1;31m"
printf "\n"
sudo apt-get install ufw // Installation
sudo ufw status // Vérification configuration du pare-feu
sudo ufw default deny incoming
sudo ufw default allow outgoing // Autoriser le trafic sortant suivant les règles par défaut
printf "Finalisation étapes de base\033[1;31m"
printf "\n"
printf "\n"

printf "Permission des ports\033[1;34m" // Autorisations des connexions entrantes
printf "\n"
sudo ufw allow 22
printf "SSH\033[1;32m"
printf "\n"
sudo ufw allow 443
printf "HTTPS\033[1;32m"
printf "\n"
sudo ufw allow 53
printf "DNS\033[1;32m"
printf "\n"
sudo ufw allow 25
printf "SMTP\033[1;32m"
printf "\n"
sudo ufw allow 143
printf "IMAP2\033[1;32m"
printf "\n"
sudo ufw allow 220
printf "IMAP3\033[1;32m"
printf "\n"
sudo ufw allow 993
printf "IMAPS\033[1;32m"
printf "\n"

sleep 1
printf "Installation faite\033[1;32m"
printf "\n"

printf "Interdiction de HTTP\033[1;31m"
printf "\n"
sudo ufw deny http

sleep 1

printf "Autorisation du UFW"
printf "\n"
sudo ufw enable // Autorisation ufw

printf "Affichage du status UFW\033[1;36m"
printf "\n"
sudo ufw status
