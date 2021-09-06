/* exo 8
1.Calculer le nombre d'employés qui sont "Sales Manager"
2.Calculer le nombre de produits de moins de 50 euros
3.Calculer le nombre de produits de catégorie 2 et avec plus de 10 unités en stocks
4.Calculer le nombre de produits de catégorie 1, des fournisseurs 1 et 18
5.Calculer le nombre de pays différents de livraison
6.Calculer le nombre de commandes réalisées le en Aout 2006.*/

select count(distinct Nom) from foody.employe where fontion ='Sales Manager';
select count(distinct Nomprod) from foody.produit where prixUnit<=50;
select count(distinct Nomprod) from foody.produit where (codecateg = 2 and UnitesStock >10);
select count(distinct Nomprod) from foody.produit where (codecateg = 1 and Nofour IN (1,18));
select count(distinct paysLiv) from foody.commande ;
select count(distinct NoCom) from foody.commande where DataCom BETWEEN '2006-08-01 00:00:00' AND '2006-08-31 00:00:00';
select * from foody.commande;