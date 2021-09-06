#1.Lister les employés n'ayant jamais effectué une commande, via une sous-requête
SELECT Nom FROM employe left outer join commande 
on commande.NoEmp = employe.NoEmp
group by Nom  having count(Nocom) = 0;

 #deuxieme methode
 
 SELECT Nom from employe
where not exists ( select *
from commande
where commande.NoEmp =  employe.NoEmp);
	#3ieme methodes
    SELECT noEmp, nom, prenom
FROM employe
WHERE noEmp NOT IN (SELECT noEmp FROM commande);
    
#2.Nombre de produits proposés par la société fournisseur "Ma Maison", via une
#sous-requête
SELECT count( refpro) from fournisseur, produit where  fournisseur.Nofour = produit.Nofour
and société = "Ma Maison"; 
#2ieme methodes

SELECT count(noFour) AS 'Nb produits proposés'
FROM produit
WHERE noFour IN (SELECT noFour FROM fournisseur WHERE société ='Ma Maison');

#3.Nombre de commandes passées par des employés sous la responsabilité
#de "Buchanan Steven"

SELECT count(Nocom) from commande, employe where commande.NoEmp= employe.NoEmp 
and RendcompteA in (SELECT  NoEmp from employe where Nom ="Buchanan" and prenom= "Steven");