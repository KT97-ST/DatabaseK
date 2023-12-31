USE [KTShop]
GO
/****** Object:  StoredProcedure [dbo].[Sp_User_Login]    Script Date: 7/23/2023 3:19:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[Sp_User_Login]
    @username VARCHAR(50),
    @password VARCHAR(32)
AS
BEGIN
    DECLARE @account INT
    DECLARE @res BIT

    SELECT @account = COUNT(*) FROM [User] WHERE UserName = @username

    IF @account = 0
    BEGIN
        SET @res = -1 -- Tên người dùng không tồn tại trong cơ sở dữ liệu
    END
    ELSE
    BEGIN
        SELECT @account = COUNT(*) FROM [User] WHERE UserName = @username AND Password = @password

        IF @account > 0
        BEGIN
            SET @res = 1 -- Đăng nhập thành công
        END
        ELSE
        BEGIN
            SET @res = 0 -- Sai mật khẩu
        END
    END

    SELECT @res
END






