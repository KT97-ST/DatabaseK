CREATE PROCEDURE sp_GetUserByID
    @UserID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [User]
    WHERE ID = @UserID;
END