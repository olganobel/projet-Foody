/*1.Lister les fournisseurs ne fournissant qu'un seul produit
2.Lister les catégories dont les prix sont en moyenne supérieurs strictement à 50
euros
3.Lister les fournisseurs ne fournissant qu'une seule catégorie de produits
4.Lister le Products le plus cher pour chaque fournisseur, pour les Products de plus
de 50 euro*/

SELECT fournisseur.société, count(produit.refpro) as nbre_produits FROM foody.fournisseur, foody.produit  Where fournisseur.Nofour=produit.Nofour group by produit.Nofour having count(produit.refpro)=1 ;
SELECT codecateg, avg(prixUnit)  FROM foody.produit group by codecateg having avg(prixUnit) > 50;
SELECT fournisseur.société, count(produit.codecateg) as nbre_categproduits FROM foody.fournisseur, foody.produit  Where fournisseur.Nofour=produit.Nofour group by produit.Nofour having count(produit.codecateg)=1 ;
SELECT fournisseur.société, max(produit.prixUnit) as produitlepluscher FROM foody.fournisseur, foody.produit  Where fournisseur.Nofour=produit.Nofour group by produit.Nofour having max(produit.prixUnit)> 50 ;