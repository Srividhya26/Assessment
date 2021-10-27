USE [Shopping]
GO
/****** Object:  StoredProcedure [dbo].[SP_GETPRODUCTBYID]    Script Date: 27-10-2021 10:21:34 ******/
DROP PROCEDURE [dbo].[SP_GETPRODUCTBYID]
GO
/****** Object:  StoredProcedure [dbo].[SP_GETPRODUCTBASEDONCATEGORY]    Script Date: 27-10-2021 10:21:34 ******/
DROP PROCEDURE [dbo].[SP_GETPRODUCTBASEDONCATEGORY]
GO
/****** Object:  StoredProcedure [dbo].[SP_GETALLPRODUCT]    Script Date: 27-10-2021 10:21:34 ******/
DROP PROCEDURE [dbo].[SP_GETALLPRODUCT]
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDUSER]    Script Date: 27-10-2021 10:21:34 ******/
DROP PROCEDURE [dbo].[SP_ADDUSER]
GO
/****** Object:  StoredProcedure [dbo].[SP_ADDUSER]    Script Date: 27-10-2021 10:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ADDUSER](@NAME VARCHAR(100)
								   ,@EMAILID VARCHAR(100)
								   ,@MOBILENO VARCHAR(10)
								   ,@ADDRESS VARCHAR(200))
AS
BEGIN
	BEGIN TRY
		--IF((SELECT COUNT(ID) FROM USER 
		--			 WHERE NAME = @NAME AND EMAILID = @EMAILID) > 0)
		--	BEGIN
		--		RAISERROR('User %s already exits!',16,6,@NAME);
		--	END
		IF(@NAME IS NOT NULL AND @EMAILID IS NOT NULL AND @MOBILENO IS NOT NULL AND
		   @ADDRESS IS NOT NULL)
			BEGIN	
				INSERT INTO [USER](NAME,EMAILID,MOBILENO,ADDRESS) VALUES(@NAME,@EMAILID,@MOBILENO,@ADDRESS) 
			END
	END TRY 
	BEGIN CATCH 
		DECLARE @ErrorMessage NVARCHAR(4000);  
		DECLARE @ErrorSeverity INT;  
		DECLARE @ErrorState INT;  
  
		SELECT   
			@ErrorMessage = ERROR_MESSAGE(),  
			@ErrorSeverity = ERROR_SEVERITY(),  
			@ErrorState = ERROR_STATE();  
  
		-- Use RAISERROR inside the CATCH block to return error  
		-- information about the original error that caused  
		-- execution to jump to the CATCH block.  
		RAISERROR (@ErrorMessage, -- Message text.  
				   @ErrorSeverity, -- Severity.  
				   @ErrorState -- State.  
				   );  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETALLPRODUCT]    Script Date: 27-10-2021 10:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GETALLPRODUCT]
AS
BEGIN

	BEGIN TRY
		IF((SELECT COUNT(ID) FROM PRODUCT) IS NULL)
			BEGIN
				RAISERROR('No Product exits!',16,6);
			END
		ELSE
			BEGIN	
				SELECT ID,NAME,CATEGORYID,IMAGE,STOCK,PRICE 
				FROM PRODUCT
			END
	END TRY 
	BEGIN CATCH 
		DECLARE @ErrorMessage NVARCHAR(4000);  
		DECLARE @ErrorSeverity INT;  
		DECLARE @ErrorState INT;  
  
		SELECT   
			@ErrorMessage = ERROR_MESSAGE(),  
			@ErrorSeverity = ERROR_SEVERITY(),  
			@ErrorState = ERROR_STATE();  
  
		-- Use RAISERROR inside the CATCH block to return error  
		-- information about the original error that caused  
		-- execution to jump to the CATCH block.  
		RAISERROR (@ErrorMessage, -- Message text.  
				   @ErrorSeverity, -- Severity.  
				   @ErrorState -- State.  
				   );  
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETPRODUCTBASEDONCATEGORY]    Script Date: 27-10-2021 10:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GETPRODUCTBASEDONCATEGORY](@CATEGORYID INT)
AS
BEGIN
DECLARE @CID INT
SET @CID = (SELECT ID FROM CATEGORY WHERE ID = @CATEGORYID)

BEGIN TRY
BEGIN
SELECT ID,NAME,IMAGE,STOCK,PRICE
FROM PRODUCT
WHERE CATEGORYID = @CATEGORYID
END
END TRY
BEGIN CATCH
DECLARE @ERRORMESSAGE NVARCHAR(4000);  
DECLARE @ERRORSEVERITY INT;  
DECLARE @ERRORSTATE INT;  
 
SELECT  
@ERRORMESSAGE = ERROR_MESSAGE(),  
@ERRORSEVERITY = ERROR_SEVERITY(),  
@ERRORSTATE = ERROR_STATE();  
 
-- USE RAISERROR INSIDE THE CATCH BLOCK TO RETURN ERROR  
-- INFORMATION ABOUT THE ORIGINAL ERROR THAT CAUSED  
-- EXECUTION TO JUMP TO THE CATCH BLOCK.  
RAISERROR (@ERRORMESSAGE, -- MESSAGE TEXT.  
  @ERRORSEVERITY, -- SEVERITY.  
  @ERRORSTATE -- STATE.  
  );  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETPRODUCTBYID]    Script Date: 27-10-2021 10:21:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GETPRODUCTBYID](@ID INT)
AS
BEGIN
	DECLARE @PRODUCTID INT
	SET @PRODUCTID = (SELECT ID FROM PRODUCT WHERE ID = @ID)
	BEGIN TRY
		IF(@PRODUCTID IS NULL)
			BEGIN
				RAISERROR('Product ID %d does not exists!',16,6,@ID);
			END 
		ELSE
			BEGIN	
				SELECT ID,NAME,CATEGORYID,IMAGE,STOCK 
				FROM PRODUCT 
				WHERE ID = @ID
			END
	END TRY 
	BEGIN CATCH 
		DECLARE @ErrorMessage NVARCHAR(4000);  
		DECLARE @ErrorSeverity INT;  
		DECLARE @ErrorState INT;  
  
		SELECT   
			@ErrorMessage = ERROR_MESSAGE(),  
			@ErrorSeverity = ERROR_SEVERITY(),  
			@ErrorState = ERROR_STATE();  
  
		-- Use RAISERROR inside the CATCH block to return error  
		-- information about the original error that caused  
		-- execution to jump to the CATCH block.  
		RAISERROR (@ErrorMessage, -- Message text.  
				   @ErrorSeverity, -- Severity.  
				   @ErrorState -- State.  
				   );  
	END CATCH
END
GO
