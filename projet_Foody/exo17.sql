#1.Lister les produits n'ayant jamais été commandés, à l'aide de l'opérateur EXISTS
select refpro from produit where not exists (SELECT refpro FROM detailcommande where detailcommande.refpro = produit.refpro) ;

#2.Lister les fournisseurs dont au moins un produit a été livré en France
SELECT distinct société  FROM produit, fournisseur, detailcommande, commande where 
produit.Nofour = fournisseur.Nofour 
and detailcommande.refpro = produit.refpro
and commande.Nocom =detailcommande.Nocom and PaysLiv ='France';

#3.Liste des fournisseurs qui ne proposent que des boissons (drinks)
SELECT société, categorie.codecateg, Nomcateg FROM fournisseur , produit , categorie where fournisseur.Nofour = produit.Nofour 
and produit.codecateg = categorie.codecateg and Nomcateg='drinks' group by société having count(Nomcateg) =1;

#STAN
SELECT noFour, société
FROM fournisseur F
WHERE EXISTS (
    SELECT *
    FROM produit P, categorie CA
    WHERE F.noFour = P.noFour AND P.codeCateg=CA.codeCateg 
    AND CA.nomCateg = 'drinks')
AND NOT EXISTS (
    SELECT *
    FROM produit P, categorie CA
    WHERE F.noFour = P.noFour AND P.codeCateg=CA.codeCateg 
    AND CA.nomCateg != 'drinks');