#1)La table DetailsCommande contient l'ensemble des lignes d'achat de chaque commande.

SELECT  prixUnit,remise,Qte, round(prixUnit*remise*Qte, 2) AS montant_remise, Qte*round(prixUnit - prixUnit*remise,2) AS prixFinal FROM foody.detailcommande WHERE Nocom= 10251;


