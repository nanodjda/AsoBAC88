USE [DB_ASOBAC]
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_LISTAR_USUARIOS]
AS
BEGIN
SELECT [USUARIOID]
      ,[CEDULA]
	  ,[ESTADOID]
	  ,[ROLID]
      ,[PRIMERNOMBRE]
      ,[SEGUNDONOMBRE]
      ,[PRIMERAPELLIDO]
      ,[SEGUNDOAPELLIDO]
      ,[EMAIL]
	  ,[BLOGIN]
	  ,[INTENTOS]
  FROM [SCH_ADMINISTRATIVO].[USUARIOS]
END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_FILTRAR_USUARIOS]
(
	@Filtro nchar(50)
)
AS
BEGIN
	SELECT [USUARIOID]
      ,[CEDULA]
	  ,[ESTADOID]
	  ,[ROLID]
      ,[PRIMERNOMBRE]
      ,[SEGUNDONOMBRE]
      ,[PRIMERAPELLIDO]
      ,[SEGUNDOAPELLIDO]
      ,[EMAIL]
	  ,[BLOGIN]
	  ,[INTENTOS]
	FROM [SCH_ADMINISTRATIVO].[USUARIOS]
	WHERE LTRIM(RTRIM([USUARIOID])) LIKE '%' + RTRIM(LTRIM(@Filtro)) + '%'
END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_INSERTAR_USUARIOS]
(
	@UsuarioID		varchar(15),
	@Cedula			varchar(10),
    @Nombre			varchar(30),
	@Nombre2		varchar(30),
    @Apellido1		varchar(30),
    @Apellido2		varchar(30),
	@Email			varchar(100),
    @Clave			varchar(max)
)
AS
BEGIN
	INSERT INTO [SCH_ADMINISTRATIVO].[USUARIOS]
			   ([USUARIOID]
				,[CEDULA]
				,[ESTADOID]
				,[ROLID]
				,[PRIMERNOMBRE]
				,[SEGUNDONOMBRE]
				,[PRIMERAPELLIDO]
				,[SEGUNDOAPELLIDO]
				,[EMAIL]
				,[CLAVE]
				,[BLOGIN]
				,[INTENTOS])
		 VALUES
			   (@UsuarioID, @Cedula, 1, 4, @Nombre, @Nombre2, @Apellido1, @Apellido2, @Email, @Clave, 1, 0)
END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_MODIFICAR_USUARIOS]
(
	@UsuarioID		varchar(15),
	@Cedula			varchar(10),
    @Nombre			varchar(30),
	@Nombre2		varchar(30),
    @Apellido1		varchar(30),
    @Apellido2		varchar(30),
	@Email			varchar(100)
)
AS
BEGIN
	UPDATE [SCH_ADMINISTRATIVO].[USUARIOS]
	   SET [CEDULA] = @Cedula
		  ,[PRIMERNOMBRE] = @Nombre
		  ,[SEGUNDONOMBRE] = @Nombre2
		  ,[PRIMERAPELLIDO] = @Apellido1
		  ,[SEGUNDOAPELLIDO] = @Apellido2
		  ,[EMAIL] = @Email
	 WHERE [USUARIOID] = @UsuarioID
END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_INACTIVAR_USUARIOS]
(
	@UsuarioID			varchar(15)
)
AS
BEGIN
	UPDATE [SCH_ADMINISTRATIVO].[USUARIOS]
		SET [ESTADOID] = 2
		  WHERE [USUARIOID] = @UsuarioID
END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_CAMBIAR_CONTRASEÑA]
(
	@UsuarioID			varchar(15),
	@Clave				varchar(max),
	@ContraseñaNueva	varchar(max)
)
AS
BEGIN
	IF EXISTS(SELECT * FROM [SCH_ADMINISTRATIVO].[USUARIOS] WHERE [USUARIOID] = @UsuarioID AND [CLAVE] = @Clave)
		UPDATE [SCH_ADMINISTRATIVO].[USUARIOS]
			SET [CLAVE] = @ContraseñaNueva
			WHERE [USUARIOID] = @UsuarioID
	ELSE
		RAISERROR('La contraseña actual no es válida.', 
		16, -- Severidad
		1 -- Estado
		)
END
GO

CREATE PROCEDURE [SCH_ADMINISTRATIVO].[SP_CAMBIAR_ROLES]
(
	@UsuarioID			varchar(15),
	@RolID				tinyint
)
AS
BEGIN
	UPDATE [SCH_ADMINISTRATIVO].[USUARIOS]
			SET [ROLID] = @RolID
			WHERE [USUARIOID] = @UsuarioID
END
GO