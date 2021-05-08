routage(){
    # Route ENTRE le docker intranet et l'atelier
    sudo iptables -I FORWARD -s 172.16.0.0/24 -d 192.168.1.0/24 -j ACCEPT
    sudo iptables -I FORWARD -d 172.16.0.0/24 -s 192.168.1.0/24 -j ACCEPT

    # Route ENTRE le docker intranet et la direction 
    sudo iptables -I FORWARD -s 172.16.0.0/24 -d 192.168.2.0/24 -j ACCEPT
    sudo iptables -I FORWARD -d 172.16.0.0/24 -s 192.168.2.0/24 -j ACCEPT

    # Route ENTRE le docker intranet et les commerciaux 
    sudo iptables -I FORWARD -s 172.16.0.0/24 -d 192.168.3.0/24 -j ACCEPT
    sudo iptables -I FORWARD -d 172.16.0.0/24 -s 192.168.3.0/24 -j ACCEPT

    # Route ENTRE le docker intranet et les compta 
    sudo iptables -I FORWARD -s 172.16.0.0/24 -d 192.168.4.0/24 -j ACCEPT
    sudo iptables -I FORWARD -d 172.16.0.0/24 -s 192.168.4.0/24 -j ACCEPT

    # Route ENTRE le docker intranet et le secretariat 
    sudo iptables -I FORWARD -s 172.16.0.0/24 -d 192.168.5.0/24 -j ACCEPT
    sudo iptables -I FORWARD -d 172.16.0.0/24 -s 192.168.5.0/24 -j ACCEPT
}

routage
printf "Toutes les routes sont disponibles"
