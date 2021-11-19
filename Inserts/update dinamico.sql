USE IF6201_EX2_B97452
GO

/*DECLARE @a INT 
DECLARE @b varchar(200)
SET @a = 1

WHILE  @a < 1000
BEGIN
set @b = @a  
DECLARE @Cmd nvarchar(150) = N'
	UPDATE [IF6201_EX2_B97452].[PELICULAS].[tb_PELICULAS] set DURACION = ''1:''+ CAST(FLOOR(RAND()*(59-10+1))+10 AS varchar(16)) WHERE ID = '+ @b + ''

EXEC sp_executesql @Cmd

SET @a = @a + 1
END*/

-------------------------------------------------------------------------------------------------------------

DECLARE @a INT 
DECLARE @b varchar(200)
DECLARE @idioma varchar(200)

SET @a = 1

WHILE  @a < 1000
BEGIN
set @b = @a  
if ( @a % 2 ) = 0
begin
DECLARE @Cmd nvarchar(150) = N'
	UPDATE [IF6201_EX2_B97452].[PELICULAS].[tb_PELICULAS] set idioma = ''Español'' WHERE ID = '+ @b + ''
	EXEC sp_executesql @Cmd
end
else
begin
DECLARE @Cmdd nvarchar(150) = N'
	UPDATE [IF6201_EX2_B97452].[PELICULAS].[tb_PELICULAS] set idioma = ''Ingles'' WHERE ID = '+ @b + ''
	EXEC sp_executesql @Cmdd
end

SET @a = @a + 1
END