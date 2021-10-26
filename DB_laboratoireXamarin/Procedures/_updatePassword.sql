CREATE PROCEDURE [dbo].[_updatePassword]
	@token nvarchar(100),
	@newpassword nvarchar(100)
AS
	begin
		begin
			declare @salt nvarchar(50);
			set @salt = concat(newId(), newId());

			declare @secretKey varchar(Max);
			set @secretKey = dbo.getSecretKey();

			declare @password_hash varbinary(64);
			set @password_hash =  HASHBYTES('SHA2_512', concat(@salt, @newpassword, @secretKey, @salt))

			update [User] set [Password] = @password_hash where TokenForgot = @token
		end
			begin
				update Salaison set salt = @salt where UserId = (select IdUser from [User] where TokenForgot = @token)
			end
			begin
				update [User] set TokenForgot = null where TokenForgot = @token
			end
			

			
	end
