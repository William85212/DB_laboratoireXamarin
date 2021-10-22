CREATE PROCEDURE [dbo].[_loginUser]
	@email varchar(max),
	@password varchar(max)
AS
	begin 
		declare @salt varchar(100);
		set @salt = (select s.salt from Salaison s join [User]  u on u.IdUser = s.UserId where u.Email = @email)

		if @salt is not null 
		begin 
			declare @secretKey nvarchar(50);
			set @secretKey = dbo.getSecretKey();

			declare @passwordHasc varbinary(64);
			set @passwordHasc = HASHBYTES('SHA2_512', concat(@salt, @password, @secretKey, @salt))

			select * from [user]
			where [Password] = @passwordHasc;
		end
	end
