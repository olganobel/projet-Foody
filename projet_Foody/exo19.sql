#1.Lister les employés (nom et prénom) étant "Representative" et étant basé
#au Royaume-Uni (UK)
SELECT nom,prenom
from employe
where pays = 'UK';

SELECT nom,prenom
from employe
where fontion  like "%Representative%";
#correction
SELECT nom, prenom 
FROM employe 
WHERE fontion LIKE ('%Representative%')
AND (nom, prenom) IN (SELECT nom,prenom FROM employe WHERE pays='UK');

#2.Lister les clients (société et pays) ayant commandés via un employé basé
#à "Seattle" et ayant commandé des "Desserts"

SELECT distinct  societe , pays 
FROM client ,commande where commande.codecli = client.codeclient and ville = "Seattle"
union all
select distinct  societe , pays from client , commande, categorie, produit where commande.codecli = client.codeclient
and categorie.codecateg= produit.codecateg 
and categorie.Nomcateg = "Desserts";

#correction
SELECT Cl.societe, Cl.pays  
FROM client Cl, commande Co, employe E
WHERE Cl.codeclient = Co.codecli AND E.noEmp = Co.noEmp
AND E.ville = 'Seattle'
AND (Cl.societe, Cl.pays) IN (
    SELECT Cl.societe, Cl.pays
    FROM Client Cl, Commande Co, DetailCommande DC,
    Produit P, Categorie Ca
    WHERE Co.NoCom = DC.NoCom AND Cl.Codeclient = Co.Codecli AND P.CodeCateg = Ca.CodeCateg AND DC.refPro = P.refPro
    AND NomCateg = "Desserts")
GROUP BY societe;