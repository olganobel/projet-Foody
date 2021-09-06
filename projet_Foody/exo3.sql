#1
SELECT  description FROM foody.categorie; 

#2
SELECT distinct ville , pays  FROM foody.client 
ORDER BY pays desc; 

#3
SELECT Nomprod FROM foody.produit WHERE (QteparUnit LIKE'%bottle%') OR (QteparUnit LIKE'%can%') ;

#4
SELECT société,contact,ville FROM foody.fournisseur WHERE Pays = 'France' 
ORDER BY ville desc ;

#5
SELECT upper( Nomprod) as NomProdMaj, refpro  FROM foody.produit WHERE (Nofour=8) AND (prixUnit between 10 AND 100);

SELECT * FROM foody.categorie;
