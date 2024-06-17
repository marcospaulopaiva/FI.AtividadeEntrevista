IF EXISTS(SELECT 1 FROM SYSOBJECTS WHERE [Name] = 'FI_SP_AltBeneficiario' AND [type] = 'P')
BEGIN
    DROP PROCEDURE [dbo].[FI_SP_AltBeneficiario]
	PRINT 'Procedure FI_SP_AltBeneficiario foi descartado.'
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC FI_SP_AltBeneficiario
	@CPF           VARCHAR (14),
    @NOME          VARCHAR (50) ,
	@Id           BIGINT
AS
BEGIN
	UPDATE BENEFICIARIOS 
	SET 
		CPF = @CPF,
		NOME = @NOME

	WHERE Id = @Id
END

GO

PRINT 'Procedure FI_SP_AltBeneficiario foi criado.'

GO