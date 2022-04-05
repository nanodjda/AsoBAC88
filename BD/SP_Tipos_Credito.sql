USE [DB_ASOBAC]
GO

CREATE PROCEDURE [SCH_CREDITOS].[SP_LISTAR_TIPOS_CREDITOS]
AS
BEGIN
SELECT [TIPOCREDITOID],
		[ESTADOID],
		[TASAINTERES],
		[PLAZO_MIN],
		[PLAZO_MAX],  
		[DESC_TIPO]
  FROM [SCH_CREDITOS].[CREDITOS_TIPOS]
END
GO

CREATE PROCEDURE [SCH_CREDITOS].[SP_FILTRAR_TIPOS_CREDITOS]
(
	@Filtro smallint
)
AS
BEGIN
	SELECT [ESTADOID],
		[TASAINTERES],
		[PLAZO_MIN],
		[PLAZO_MAX],  
		[DESC_TIPO]
	FROM [SCH_CREDITOS].[CREDITOS_TIPOS]
	WHERE LTRIM(RTRIM([TIPOCREDITOID])) LIKE '%' + RTRIM(LTRIM(@Filtro)) + '%'
END
GO

CREATE PROCEDURE [SCH_CREDITOS].[SP_INSERTAR_TIPOS_CREDITOS]
(
	@EstadoID		tinyint,
    @TasaInteres	tinyint,
	@PlazoMin		smallint,
    @PlazoMax		smallint,
    @DescTipo		varchar(50)
)
AS
BEGIN
	INSERT INTO [SCH_CREDITOS].[CREDITOS_TIPOS]
			   ([ESTADOID],
				[TASAINTERES],
				[PLAZO_MIN],
				[PLAZO_MAX],  
				[DESC_TIPO])
		 VALUES
			   (@EstadoID, @TasaInteres, @PlazoMin, @PlazoMax, @DescTipo)
END
GO

CREATE PROCEDURE [SCH_CREDITOS].[SP_MODIFICAR_TIPOS_CREDITOS]
(
	@TipoCreditoID	smallint,
	@EstadoID		tinyint,
    @TasaInteres	tinyint,
	@PlazoMin		smallint,
    @PlazoMax		smallint,
    @DescTipo		varchar(50)
)
AS
BEGIN
	UPDATE [SCH_CREDITOS].[CREDITOS_TIPOS]
	   SET [ESTADOID] = @EstadoID,
			[TASAINTERES] = @TasaInteres,
			[PLAZO_MIN] = @PlazoMin,
			[PLAZO_MAX] = @PlazoMax,  
			[DESC_TIPO] = @DescTipo
	 WHERE [TIPOCREDITOID] = @TipoCreditoID
END
GO

CREATE PROCEDURE [SCH_CREDITOS].[SP_INACTIVAR_TIPOS_CREDITOS]
(
	@TipoCreditoID	smallint
)
AS
BEGIN
	UPDATE [SCH_CREDITOS].[CREDITOS_TIPOS]
		SET [ESTADOID] = 2
		  WHERE [TIPOCREDITOID] = @TipoCreditoID
END
GO