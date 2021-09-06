#EXO5
#1.A partir de la table Produit, afficher "Produit non disponible" lorsque
#l'attribut Indisponible vaut 1, et "Produit disponible" sinon.

SELECT *,
CASE WHEN (indisponible=1) THEN 'Produit non disponible'
else 'Produit disponible' 
end as informations
FROM foody.produit ;



#2.À partir de la table DetailsCommande, indiquer les infos suivantes en fonction de
#la remise
#si elle vaut 0 : "aucune remise"
#si elle vaut entre 1 et 5% (inclus) : "petite remise"
#si elle vaut entre 6 et 15% (inclus) : "remise modérée"
#sinon :"remise importante"
SELECT * ,
  CASE 
   WHEN  remise=0 THEN 'aucune remise'
   WHEN  (remise >= 0.01 AND remise < 0.06) THEN 'petite remise'
   WHEN  (remise >= 0.06 AND remise <= 0.15) THEN 'remise modérée'
   ELSE 'remise importante'
 END AS statutremise
FROM foody.detailcommande;

#3.
#Indiquer pour les commandes envoyées si elles ont été envoyées en retard (date
#d'envoi DateEnv supérieure (ou égale) à la date butoir ALivAvant) ou à temps
SELECT Nocom,AlivAvant,DataEnv,
case
  when DataEnv >= AlivAvant then 'en retard'
  else 'a temps'
end as infocommande
 FROM foody.commande;
 
 