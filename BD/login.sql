USE [DB_ASOBAC]
GO

CREATE FUNCTION [SCH_ADMINISTRATIVO].[FN_LOGIN]
(
	@Usuario		VARCHAR(15),
	@Contrasenha	VARCHAR(40)
)
RETURNS INTEGER
AS
	BEGIN
		DECLARE @cantidad INTEGER
	
		SELECT @cantidad = COUNT(USU.USUARIOID) 
		FROM [SCH_ADMINISTRATIVO].[USUARIOS] USU
			LEFT OUTER JOIN [SCH_ADMINISTRATIVO].[ASOCIADOS] ASO
				ON USU.USUARIOID = ASO.USUARIOID
				WHERE USU.USUARIOID = @Usuario AND USU.CLAVE = @Contrasenha
		
		RETURN(@cantidad)
	END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_LOGIN]
(
	@Usuario		VARCHAR(15),
	@Contrasenha	VARCHAR(40)
)
AS
	BEGIN
		SELECT [SCH_ADMINISTRATIVO].[FN_LOGIN](@Usuario, @Contrasenha)
	END
GO

EXEC [SCH_ADMINISTRATIVO].[SP_LOGIN] 'admin', '1234'