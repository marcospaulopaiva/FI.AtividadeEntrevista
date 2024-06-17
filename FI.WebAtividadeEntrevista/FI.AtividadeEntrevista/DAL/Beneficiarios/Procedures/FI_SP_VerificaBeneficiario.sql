IF EXISTS(SELECT 1 FROM SYSOBJECTS WHERE [Name] = 'FI_SP_VerificaBeneficiario' AND [type] = 'P')
BEGIN
    DROP PROCEDURE [dbo].[FI_SP_VerificaBeneficiario]
	PRINT 'Procedure FI_SP_VerificaBeneficiario foi descartado.'
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC FI_SP_VerificaBeneficiario
	@CPF VARCHAR(14)
AS
BEGIN
	SELECT 1 FROM BENEFICIARIOS WHERE CPF = @CPF
END

GO

PRINT 'Procedure FI_SP_VerificaBeneficiario foi criado.'

GO
