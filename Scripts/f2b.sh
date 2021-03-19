#CONFIGURATION F2B
printf "\033[1;31mInstallation de fail2ban\033[0m"
printf "\n"
sudo apt-get install fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sleep 1

printf "\033[1;34mExecution de fail2ban\033[0m"
printf "\n"
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

printf "\033[1;32mVérification du status\033[0m"
printf "\n"
sudo fail2ban-client status
