#1.Compter pour chaque produit, le nombre de commandes où il apparaît, même
#pour ceux dans aucune commande
SELECT Nomprod ,count(Nocom) FROM detailcommande right outer join produit 
on detailcommande.refpro = produit.refpro
group by Nomprod ;

#2.Lister les produits n'apparaissant dans aucune commande
SELECT Nomprod  FROM detailcommande right outer join produit 
on detailcommande.refpro = produit.refpro
group by  Nomprod having count(Nocom) = 0;

#3.Existe-t'il un employé n'ayant enregistré aucune commande ?
SELECT employe.NoEmp , Nom,prenom FROM commande right outer join employe 
on commande.NoEmp = employe.NoEmp
group by NoEmp  having count(Nocom) = 0 ;