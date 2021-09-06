SELECT * FROM foody.fournisseur;
#.Récupérer les informations des fournisseurs pour chaque produit
SELECT Nofour, Nomprod,société
from produit natural join fournisseur;
#2.Afficher les informations des commandes du client "Lazy K Kountry Store"
SELECT commande.* FROM  commande natural join client WHERE societe= "Lazy K Kountry Store";

#3.Afficher le nombre de commande pour chaque messager (en indiquant son nom)
SELECT NomMess,count(Nocom) from commande natural join messager GROUP BY NoMess;