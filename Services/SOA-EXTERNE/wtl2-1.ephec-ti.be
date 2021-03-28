$ORIGIN wtl2-1.ephec-ti.be.
$TTL 86400
@               IN     SOA      ns.wtl2-1.ephec-ti.be.     wtl2-1.ephec-ti.be. (
                               	1 ; serial
                                3600      ; refresh after 6 hours
                                600       ; retry after 1 hour
                                86400     ; expire after 1 week
                                86400)    ; minimum TTL of 1 day

@       IN     NS               ns.wtl2-1.ephec-ti.be. 
ns      IN      A               135.125.101.200

;WEB
b2b     IN      A               135.125.101.200
www	    IN      A               135.125.101.200

;MAIL
mail    IN      A               135.125.101.200

;VOIP (mettre sip udp et tcp)
sip    IN      A               135.125.101.200
