-- Vue d'ensemble de toute la DB sous forme de VUE

-- 1iere methode
CREATE VIEW Vue as
SELECT *
FROM Fournisseurs, CodePostal, LienArbresFournisseurs, Arbres, Pays
WHERE Fournisseurs.FK_CodePostal = CodePostal.PK_CodePostal
AND Fournisseurs.PK_Fournisseur = LienArbresFournisseurs.FK_Fournisseurs
AND LienArbresFournisseurs.FK_Arbre = Arbres.PK_Arbre
AND Fournisseurs.Cpays = Pays.PK_Pays

-- 2ieme methode

CREATE VIEW Vue as 
SELECT *
FROM    Fournisseurs 
INNER JOIN CodePostal ON Fournisseurs.FK_CodePostal = CodePostal.PK_CodePostal
INNER JOIN LienArbresFournisseurs ON Fournisseurs.PK_Fournisseur = LienArbresFournisseurs.FK_Fournisseurs
INNER JOIN Arbres ON LienArbresFournisseurs.FK_Arbre = Arbres.PK_Arbre
INNER JOIN Pays ON Fournisseurs.Cpays = Pays.PK_Pays

