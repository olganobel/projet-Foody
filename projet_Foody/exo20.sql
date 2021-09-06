#1.Lister les employés (nom et prénom) étant "Representative" mais n'étant pas
#basé au Royaume-Uni (UK)
SELECT nom,prenom
 from employe
 where pays = 'UK' and 

and  employe.ville = 'London'
and (  societe , client.pays )
not in 
(SELECT  societe , client.pays 
FROM client ,commande, messager where commande.codecli = client.codeclient and commande.Nomess=messager.Nomess 
and messager.NomMess = "United Package");
