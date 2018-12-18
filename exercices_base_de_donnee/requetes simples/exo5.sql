SELECT NomArbre as Arbre, Prix as prix_normal, (Prix + (Prix * 0.1)) as prix_augmenter
	FROM LienArbresFournisseurs, Arbres
	WHERE NomArbre = 'Pins'
	AND LienArbresFournisseurs.FK_Arbre = Arbres.PK_Arbre