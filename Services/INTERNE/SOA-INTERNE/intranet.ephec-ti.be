$ORIGIN intranet.ephec-ti.be.
$TTL 86400
@               IN     SOA      ns.intranet.ephec-ti.be.     contact.l2-1.ephec.be. (
                                2001062501 ; numéro qui permet au serveur de vérifier que le contenu du fichier est à jour
                                21600      ; temps que le NS esclave doit attendre avant de demander au NS maître si il y a eu des changements dans la zone (ici après 6 heures)
                                3600       ; temps que le NS esclave doit attendre avant d'émettre une autre requête de rafraîchissement, au cas où le NS maître ne répondrait pas (ici après 1 heure)
                                604800     ; si le NS maître n'a pas répondu à une requête de rafraîchissement avant que la durée précisée (ici 1 semaine), le NS esclave ne répond plus en tant qu'autorité pour les requêtes lié à cet espace de nom
                                86400 )    ; demande que d'autres NS mettent en cache les informations pour cette zone pendant au moins la durée (ici 1 jour)

@                IN     NS       ns.intranet.ephec-ti.be. ; représente le serveur dns de la zone

erp     IN      A               172.16.0.3 
ns      IN      A               172.16.0.2
resolv  IN      A               172.16.0.1
db	    IN	    A				        172.16.0.4
