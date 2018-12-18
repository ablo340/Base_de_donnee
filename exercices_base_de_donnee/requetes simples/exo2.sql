-- Vendeurs de pins par code postal

SELECT Nom, Prenom, CodePostal as code_postal
	FROM LienArbresFournisseurs, Fournisseurs, CodePostal, Arbres
	WHERE NomArbre = 'Pins'
	AND LienArbresFournisseurs.FK_Fournisseurs = Fournisseurs.PK_Fournisseur
	AND Fournisseurs.FK_CodePostal = CodePostal.PK_CodePostal