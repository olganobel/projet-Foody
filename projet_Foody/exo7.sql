/* EXO 7
1.Afficher le jour de la semaine en lettre pour toutes les dates de commande,
afficher "week-end" pour les samedi et dimanche,
2.Calculer le nombre de jours entre la date de la commande (DateCom) et la date
butoir de livraison (ALivAvant), pour chaque commande, On souhaite aussi
contacter les clients 1 mois après leur commande. ajouter la date correspondante
pour chaque commande*/

#1.
select *,dayname(DataCom), dayname(AlivAvant),dayname(DataEnv),
Replace (dayname(DataCom),'Saturday','Week-end'),
Replace (dayname(DataCom),'Sunday','Week-end'),

Replace (dayname(AlivAvant),'Saturday','Week-end'),
Replace (dayname(AlivAvant),'Sunday','Week-end'),

Replace (dayname(DataEnv),'Saturday','Week-end'),
Replace (dayname(DataEnv),'Sunday','Week-end')
from foody.commande;


/*2.Calculer le nombre de jours entre la date de la commande (DateCom) et la date
butoir de livraison (ALivAvant), pour chaque commande, On souhaite aussi
contacter les clients 1 mois après leur commande. ajouter la date correspondante
pour chaque commande*/

SELECT *, datediff(AlivAvant,DataCom) as Day_Avt_Delivery, DATE_ADD(DataCom, 
              INTERVAL 1 MONTH) as DateContact FROM FOODY.COMMANDE;