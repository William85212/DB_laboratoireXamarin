CREATE PROCEDURE [dbo].[_addUser]

	@email nvarchar(max),
	@password nvarchar(max)
AS 
	begin
		begin
			declare @salt nvarchar(50);
			set @salt = concat(newId(), newId());

			declare @secretKey varchar(Max);
			set @secretKey = dbo.getSecretKey();

			declare @password_hash varbinary(64);
			set @password_hash =  HASHBYTES('SHA2_512', concat(@salt, @password, @secretKey, @salt))

			insert into [User] (Email, [Password])
			output Inserted.IdUser
			values ( @email, @password_hash)

		end

	    declare @insertedId int;
	    set @insertedId = (select max(IdUser) from [User]); 
		
		
		insert into Salaison (UserId,salt)
		values (@insertedId, @salt)
	end
	