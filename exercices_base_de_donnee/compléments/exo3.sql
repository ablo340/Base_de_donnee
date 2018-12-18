CREATE PROCEDURE Ligne @nrArbre float, @nrVendeur float
as
DECLARE @ligne int
SET @ligne=0
insert into Source (arbre, vendeur) values (@nrArbre, @nrVendeur)
select @ligne=id from Source where arbre=@nrArbre and vendeur=@nrVendeur
GO;