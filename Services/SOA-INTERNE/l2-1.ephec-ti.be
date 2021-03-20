$ORIGIN l2-1.ephec-ti.be.
$TTL 86400
@               IN     SOA      ns.l2-1.ephec-ti.be.     l2-1.ephec.be. (
                                2001062501 ; serial
                                21600      ; refresh after 6 hours
                                3600       ; retry after 1 hour
                                604800     ; expire after 1 week
                                86400 )    ; minimum TTL of 1 day

                IN     NS       ns.l2-1.ephec-ti.be. 

erp     IN      A               172.16.0.3 
soa     IN      A               172.16.0.2
resolv  IN      A               172.16.0.1
db	    IN	    A				172.16.0.4
