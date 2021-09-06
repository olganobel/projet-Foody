#1.Récupérer les informations des fournisseurs pour chaque produit, avec jointure à
#la main
SELECT Nomprod ,fournisseur.*
from fournisseur,produit 
where fournisseur.Nofour=produit.Nofour
group by Nomprod ;

#2.Afficher les informations des commandes du client "Lazy K Kountry Store", avec
#jointure à la main
SELECT commande.*
from commande,client 
where commande.codeCli=client.codeclient
 and societe = "Lazy K Kountry Store";

#3.Afficher le nombre de commande pour chaque messager (en indiquant son nom),
#avec jointure à la main
SELECT NomMess , count(Nocom) from commande natural join messager group by NomMess;
