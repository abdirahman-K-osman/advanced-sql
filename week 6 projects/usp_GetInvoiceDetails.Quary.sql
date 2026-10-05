CREATE OR ALTER PROCEDURE dbo.usp_GetInvoiceDetails
    @InvoiceID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM dbo.Invoices
    WHERE @InvoiceID IS NULL
       OR InvoiceID = @InvoiceID;
END;
GO

EXEC dbo.usp_GetInvoiceDetails;
GO