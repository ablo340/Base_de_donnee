SELECT NomArbre as Arbre, Prix as prix_TVAC, (Prix - (Prix * 0.21)) as prix_HTVA
	FROM LienArbresFournisseurs, Arbres
	WHERE NomArbre = 'Chênes'
	AND LienArbresFournisseurs.FK_Arbre = Arbres.PK_Arbre