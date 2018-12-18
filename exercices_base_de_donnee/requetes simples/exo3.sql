-- Totaux de stocks par vendeurs

SELECT Nom, Prenom, SUM(Nb) as stock_arbres
	FROM LienArbresFournisseurs, Fournisseurs
	WHERE LienArbresFournisseurs.FK_Fournisseurs = Fournisseurs.PK_Fournisseur
	GROUP BY Nom, Prenom