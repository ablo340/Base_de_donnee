-- Champ calculé donnant la liste des fournisseurs capables de fournir un arbre donné séparées par des ;

--> Créer une fonction SQL qui renvoie cette chaîne sur base du n° de l’arbre

CREATE FUNCTION [dbo].[liste_Vendeurs] (@nr float)
RETURNS varchar(500) AS
BEGIN
DECLARE @Retour varchar(500), @np varchar(100)
DECLARE Curseur CURSOR FOR
select CONCAT(Nom, ' ', Prenom) as Nom_Prenom from LienArbresFournisseurs inner join
Fournisseurs on LienArbresFournisseurs.FK_Fournisseurs=Fournisseurs.PK_Fournisseur 
inner join Arbres on LienArbresFournisseurs.FK_Arbre=Arbres.PK_Arbre	 
where FK_Arbre=@nr AND PK_Arbre=@nr
order by Nom
OPEN Curseur
FETCH NEXT FROM Curseur INTO @np
set @retour=''
WHILE (@@FETCH_STATUS=0)
BEGIN
set @retour=@retour+@np+'; '
FETCH NEXT FROM Curseur INTO @np
END
CLOSE CURSEUR
DEALLOCATE CURSEUR
if len(@retour)>0 set @retour= (left(@retour,len(@retour)-1))
return(@retour)
END

--> Mettre la fonction dans la formule du champ calculé

UPDATE Arbres
SET Calcule = dbo.liste_Vendeurs(PK_Arbre)