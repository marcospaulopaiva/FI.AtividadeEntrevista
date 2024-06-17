IF EXISTS(SELECT 1 FROM SYSOBJECTS WHERE [Name] = 'FI_SP_DelBeneficiario' AND [type] = 'P')
BEGIN
    DROP PROCEDURE [dbo].[FI_SP_DelBeneficiario]
	PRINT 'Procedure FI_SP_DelBeneficiario foi descartado.'
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC FI_SP_DelBeneficiario
	@ID BIGINT
AS
BEGIN
	DELETE FROM BENEFICIARIOS WHERE ID = @ID
END


GO

PRINT 'Procedure FI_SP_DelBeneficiario foi criado.'

GO