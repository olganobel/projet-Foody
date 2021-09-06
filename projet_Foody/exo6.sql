/* EXO 6
Dans une même requête, sur la table Client :
* Concaténer les champs Adresse, Ville, CodePostal et Pays dans un nouveau
champ nommé Adresse_complète, pour avoir : Adresse, CodePostal, Ville, Pays
* Extraire les deux derniers caractères des codes clients
* Mettre en minuscule le nom des sociétés
* Remplacer le terme "Owner" par "Freelance" dans Fonction
* Indiquer la présence du terme "Manager" dans Fonction*/

SELECT codeclient, codepostal,ville,  pays , concat(adresse, ville, codepostal, pays) as Adresse_complète, substring(codeclient,length(codeclient)-2) as modcodeclient, lower(societe) as minsociete,  fonction,
REPLACE (fonction, "Owner", "Freelance") AS new_fonction,
CASE 
 when fonction LIKE '%Manager%' then 'Présence'
 else "Absence"
end as Fonction_Manager

FROM foody.client;

