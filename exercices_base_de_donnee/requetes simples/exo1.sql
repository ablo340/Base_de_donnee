--- Prix maxima, minima, prix moyens, nombre de vendeur par espèce
SELECT FK_Arbre, AVG(prix) as Moyenne_prix, MIN(prix) as Min_prix, MAX(prix) as Max_prix, COUNT(FK_Fournisseurs) as nbre_vendeurs
 FROM LienArbresFournisseurs
 GROUP BY FK_Arbre