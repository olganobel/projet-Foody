#1.Lister les employés (nom et prénom) étant "Representative" ou étant basé
#au Royaume-Uni (UK)
SELECT nom,prenom
FROM employe
WHERE pays = 'UK'
UNION
SELECT nom,prenom
FROM employe
WHERE fontion LIKE "%Representative%";
 

#2.Lister les clients (société et pays) ayant commandés via un employé situé à
#Londres ("London" pour rappel) ou ayant été livré par "Speedy Express"

SELECT  societe , client.pays 
from client , commande,employe where employe.NoEmp=commande.NoEmp
and commande.codecli = client.codeclient and employe.ville = 'London'
union 
SELECT societe , pays
from client , commande , messager where  commande.NoMess= messager.NoMess
and commande.codecli = client.codeclient 
and messager.NomMess = "Speedy Express";

#Correction

SELECT Cl.societe, Cl.pays 
FROM client Cl, commande C, employe E
WHERE Cl.codeCli = C.codeclient AND E.noEmp = C.noEmp
AND E.ville = 'London'
UNION
SELECT Cl.societe, Cl.pays 
FROM client Cl, commande C, messager M
WHERE Cl.codeCli = C.codeClient AND M.noMess = C.noMess
AND M.nomMess = "Speedy Express";
