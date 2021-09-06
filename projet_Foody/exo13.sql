#.Récupérer les informations des fournisseurs pour chaque produit, avec une
#jointure interne
SELECT * FROM fournisseur INNER join  produit  on produit.Nofour= fournisseur.Nofour; 

#2.Afficher les informations des commandes du client "Lazy K Kountry Store", avec
#une jointure interne
SELECT * FROM commande inner join client on Commande.Codecli = Client.Codeclient  WHERE societe ="Lazy K Kountry Store";

#3.Afficher le nombre de commande pour chaque messager (en indiquant son nom),
#avec une jointure interne
SELECT NomMess, count( distinct Nocom )  FROM commande inner join messager on commande.NoMess=messager.NoMess group by NomMess;