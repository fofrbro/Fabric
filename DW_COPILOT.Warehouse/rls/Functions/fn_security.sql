;
-- Fonction de sécurité
CREATE FUNCTION rls.fn_security(@SalesRep AS VARCHAR(60))
    RETURNS TABLE
WITH SCHEMABINDING
AS
    RETURN
        SELECT 1 AS fn_security_result
    WHERE @SalesRep = USER_NAME()