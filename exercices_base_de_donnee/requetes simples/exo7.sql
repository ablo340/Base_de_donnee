SELECT Nom, Prenom, Rue, Commune, CodePostal
	FROM Fournisseurs
	INNER JOIN CodePostal ON PK_CodePostal = FK_CodePostal
	WHERE CodePostal = 7531
	GROUP BY CodePostal, Nom, Prenom, Rue, Commune, CodePostal