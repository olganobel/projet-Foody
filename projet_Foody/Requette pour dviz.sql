SELECT pays, count(distinct codeclient) as nombre_clients FROM client group by pays;

#nombre de commande en fonction des prix
SELECT produit.prixUnit , count(commande.Nocom) from commande, produit, detailcommande where commande.Nocom =detailcommande.Nocom
and detailcommande.Nocom= produit.refpro;

#presnter la Quantité de produits commandés par categorie
SELECT categorie.Nomcateg, count(produit.QteparUnit) as Qté_produit from produit ,detailcommande, categorie where detailcommande.refpro=produit.refpro
 AND produit.codecateg=categorie.codecateg group by categorie.Nomcateg;