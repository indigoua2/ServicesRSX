$ORIGIN wtl2-1.ephec-ti.be.
$TTL 86400
@               IN     SOA      ns.wtl2-1.ephec-ti.be.     wtl2-1.ephec-ti.be. (
                                2001062501 ; serial
                                21600      ; refresh after 6 hours
                                3600       ; retry after 1 hour
                                604800     ; expire after 1 week
                                86400 )    ; minimum TTL of 1 day

@                IN     NS       ns.wtl2-1.ephec-ti.be. 

web     IN      A               172.16.1.1 
ns      IN      A               172.16.1.2 
mail    IN      A               172.16.1.3 
voip    IN      A               172.16.1.4 
