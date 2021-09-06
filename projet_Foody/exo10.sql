SELECT * FROM foody.fournisseur;
/*exo 10
1.Donner le nombre d'employés par fonction
2.Donner le montant moyen du port par messager(shipper)
3.Donner le nombre de catégories de produits fournis par chaque fournisseur
4.Donner le prix moyen des produits pour chaque fournisseur et chaque catégorie
de produits fournis par celui-ci*/

SELECT fontion,count(distinct NoEmp)  FROM foody.employe group by fontion;
select Nomess, avg(Port) from foody.commande group by NoMess;
select Nofour, codecateg, count(distinct CodeCateg) from foody.produit group by Nofour, codecateg;
select Nomprod,avg(prixUnit) from foody.produit group by Nofour;
