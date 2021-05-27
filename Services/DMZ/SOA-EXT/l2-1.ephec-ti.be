$ORIGIN l2-1.ephec-ti.be.
$TTL 86400
@               IN     SOA      ns.l2-1.ephec-ti.be.    contact.l2-1.ephec-ti.be. (
                               	2001062501 ; serial
                                21600      ; refresh after 6 hours
                                3600       ; retry after 1 hour
                                604800     ; expire after 1 week
                                86400 )    ; minimum TTL of 1 day
	IN     NS              ns.l2-1.ephec-ti.be.
	IN      MX      10      mail.l2-1.ephec-ti.be.
ns      IN      A              135.125.101.200
ns	IN	AAAA		2001:41d0:404:200::8090

	IN	MX	10	mail
; WEB
b2b     IN      A              135.125.101.200
www	IN      A              135.125.101.200

b2b	IN	AAAA		2001:41d0:404:200::8090
www     IN      AAAA            2001:41d0:404:200::8090

; MAIL
mail	IN	A	       135.125.101.200
mail	IN	AAAA		2001:41d0:404:200::8090
smtp	IN	CNAME	       mail

; VOIP
sip	IN      A              135.125.101.200
sip	IN	AAAA		2001:41d0:404:200::8090
_sip._tcp 	SRV     0       0       5060        sip
_sip._udp	SRV     0       0       5060        sip
