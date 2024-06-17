IF EXISTS(SELECT 1 FROM SYSOBJECTS WHERE [Name] = 'FI_SP_IncBeneficiario' AND [type] = 'P')
BEGIN
    DROP PROCEDURE [dbo].[FI_SP_IncBeneficiario]
	PRINT 'Procedure FI_SP_IncBeneficiario foi descartado.'
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC FI_SP_IncBeneficiario
    @CPF           VARCHAR (11) ,
    @NOME          VARCHAR (50) ,
    @IDCLIENTE     BIGINT 
AS
BEGIN
	INSERT INTO BENEFICIARIOS (CPF, NOME, IDCLIENTE  ) 
	VALUES (@CPF, @NOME, @IDCLIENTE)

	SELECT SCOPE_IDENTITY()
END

GO

PRINT 'Procedure FI_SP_IncBeneficiario foi criado.'

GO
