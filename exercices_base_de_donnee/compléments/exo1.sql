-- Dans la table T_Fournisseur créez un champ calculé donnant le pays en toutes lettres



--> Créer une fonction SQL qui renvoie cette chaîne sur base de l’abréviation du pays

CREATE FUNCTION Country_name (@aller char(2)) 
RETURNS varchar(255) 
AS BEGIN
DECLARE @st varchar(255)
select @ST= NomPays from Pays, Fournisseurs where PK_Pays=@aller
RETURN isnull(@ST,'??PAYS INCONNU??')
end


--> Mettre la fonction dans la formule du champ calculé

UPDATE Fournisseurs
SET Calcule = dbo.Country_name(Cpays)