USE [DB_ASOBAC]
GO

CREATE PROCEDURE [SCH_AHORROS].[SP_LISTAR_TIPOS_AHORROS]
AS
BEGIN
SELECT [TIPOAHORROID],
		[ESTADOID],
		[PORCENTAJEOMONTO],
		[RETIRO_EXTRA],
		[PENALIZACION],
		[PLAZO],
		[PORCENTAJE],
		[DESC_TIPO]
  FROM [SCH_AHORROS].[AHORROS_TIPOS]
END
GO

CREATE PROCEDURE [SCH_AHORROS].[SP_FILTRAR_TIPOS_AHORROS]
(
	@Filtro varchar(50)
)
AS
BEGIN
	SELECT [TIPOAHORROID],
		[ESTADOID],
		[PORCENTAJEOMONTO],
		[RETIRO_EXTRA],
		[PENALIZACION],
		[PLAZO],
		[PORCENTAJE],
		[DESC_TIPO]
	FROM [SCH_AHORROS].[AHORROS_TIPOS]
	WHERE LTRIM(RTRIM([DESC_TIPO])) LIKE '%' + RTRIM(LTRIM(@Filtro)) + '%'
END
GO

CREATE PROCEDURE [SCH_AHORROS].[SP_INSERTAR_TIPOS_AHORROS]
(
	@EstadoID			tinyint,
    @PorcentajeMonto	bit,
	@RetiroExtra		bit,
    @Penalizacion		bit,
	@Plazo				smallint,
	@Porcentaje			tinyint,
    @DescTipo			varchar(50)
)
AS
BEGIN
	INSERT INTO [SCH_AHORROS].[AHORROS_TIPOS]
			   ([ESTADOID],
			   [PORCENTAJEOMONTO],
			   [RETIRO_EXTRA],
			   [PENALIZACION],
			   [PLAZO],
			   [PORCENTAJE],
			   [DESC_TIPO])
		 VALUES
			   (@EstadoID, @PorcentajeMonto, @RetiroExtra, @Penalizacion, @Plazo, @Porcentaje, @DescTipo)
END
GO

CREATE PROCEDURE [SCH_AHORROS].[SP_MODIFICAR_TIPOS_AHORROS]
(
	@TipoAhorroID		smallint,
	@EstadoID			tinyint,
    @PorcentajeMonto	bit,
	@RetiroExtra		bit,
    @Penalizacion		bit,
	@Plazo				smallint,
	@Porcentaje			tinyint,
    @DescTipo			varchar(50)
)
AS
BEGIN
	UPDATE [SCH_AHORROS].[AHORROS_TIPOS]
	   SET [ESTADOID] = @EstadoID,
			[PORCENTAJEOMONTO] = @PorcentajeMonto,
			[RETIRO_EXTRA] = @RetiroExtra,
			[PENALIZACION] = @Penalizacion,
			[PLAZO] = @Plazo,
			[PORCENTAJE] = @Porcentaje,  
			[DESC_TIPO] = @DescTipo
	 WHERE [TIPOAHORROID] = @TipoAhorroID
END
GO

CREATE PROCEDURE [SCH_AHORROS].[SP_INACTIVAR_TIPOS_AHORROS]
(
	@TipoAhorroID	smallint
)
AS
BEGIN
	UPDATE [SCH_AHORROS].[AHORROS_TIPOS]
		SET [ESTADOID] = 2
		  WHERE [TIPOAHORROID] = @TipoAhorroID
END
GO