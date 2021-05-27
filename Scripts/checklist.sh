#==== DIG ====
ipaddr=$(dig +short $1)
echo $ipaddr
sleep 3
#=== DNS ==== 
echo "DISPONIBILITÉ DU SERVICE DNS EXTERNE"
nmap  $1 &>/dev/null && echo "success" || echo "Indisponible"

DEFAULT_DNS_SERVER=$ipaddr
while true ; do
        while read line
        do
                domain="$(cut -d "," -f 1 <<<"$line")"
                server="$(cut -d "," -f 2 <<<"$line")"
                if [ "X$server" == "X" ]; then
                        export server="$DEFAULT_DNS_SERVER"
                fi
                result="$(dig +short @"$server" "$domain" | wc -l)"
                echo "$domain ==> ${result} DNS ACTIF"
        done < domains.txt
sleep 1
break
done
sleep 3
#==== HTTP ====
url=http://www.l2-1.ephec-ti.be

curl ${url} -I -o headers -s
val=$(cat headers | head -n 1 | cut '-d ' '-f2')

if [ "200" = ${val} ]; then
                echo Page WWW accessible
            else
                echo Page WWW Non accessible
            fi
sleep 3         
url=http://b2b.l2-1.ephec-ti.be

curl ${url} -I -o headers -s
val=$(cat headers | head -n 1 | cut '-d ' '-f2')

if [ "200" = ${val} ]; then
                echo Page B2B accessible
            else
                echo Page B2B Non accessible
            fi
 sleep 3           
#Verification de cetificat pour https
openssl s_client -connect www.l2-1.ephec-ti.be:443
sleep 3
#==== MX ====
nslookup -q=mx $ipaddr
echo "Le service mail est disponible"
sleep 3
#Verification de cetificat pour mail
openssl s_client -connect mail.l2-1.ephec-ti.be:465



