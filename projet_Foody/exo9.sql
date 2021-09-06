/*EXO 9
1.Calculer le coût du port minimum et maximum des commandes , ainsi que le coût
moyen du port pour les commandes du client dont le code est "QUICK"
(attribut CodeCli)
2.Pour chaque messager (par leur numéro : 1, 2 et 3), donner le montant total des
frais de port leur correspondant*/

select min(Port), max(Port), avg(Port) from foody.commande Where codecli ='QUICK';

select sum(Port) from foody.commande group by Nomess;