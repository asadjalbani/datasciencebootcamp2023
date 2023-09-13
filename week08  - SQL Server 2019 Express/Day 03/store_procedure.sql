-- -- Store Procedure

-- -- CREATE PROCEDURE GetCustomers AS BEGIN
-- -- SELECT  FirstName            AS FName
-- --        ,LastName             AS LName
-- --        ,City + ',' + Country AS [Location]
-- --        ,Phone                AS Mobile
-- -- FROM Customer END

-- -- EXEC GetCustomers;

-- -- CREATE PROCEDURE InsertCustomer

-- CREATE PROCEDURE InsertCustomer
--     @FirstName VARCHAR(50)
--     ,@LastName VARCHAR(50)
--     ,@City VARCHAR(50)
--     ,@Country VARCHAR(50)
--     ,@Phone VARCHAR(50)
-- AS
-- BEGIN
--     INSERT INTO Customer
--     VALUES (
--         @FirstName
--         ,@LastName
--         ,@City
--         ,@Country
--         ,@Phone
--         )
-- END

-- -- Exec InsertCustomer 'Babar','Azam','Lahore','Pakistan','1234567890'
-- EXEC InsertCustomer 'Babar', 'Azam', 'Lahore', 'Pakistan', '1234567890'

-- ALTER PROCEDURE InsertCustomer
--     @FirstName VARCHAR(50)
--     ,@LastName VARCHAR(50)
--     ,@City VARCHAR(50)
--     ,@Country VARCHAR(50)
--     ,@Phone VARCHAR(50)
-- AS
-- BEGIN
--     INSERT INTO Customer
--     VALUES (
--         @FirstName
--         ,@LastName
--         ,@City
--         ,@Country
--         ,@Phone
--         )
--         DECLARE @Id AS INT
--         SET @Id = @@IDENTITY
-- END
-- -- to see the data has been inserted or not
-- -- SELECT * FROM Customer

-- ALTER PROCEDURE InsertCustomer
--     @FirstName VARCHAR(50)
--     ,@LastName VARCHAR(50)
--     ,@City VARCHAR(50)
--     ,@Country VARCHAR(50)
--     ,@Phone VARCHAR(50)
-- AS
-- BEGIN
--     INSERT INTO Customer
--     VALUES (
--         @FirstName
--         ,@LastName
--         ,@City
--         ,@Country
--         ,@Phone
--         )
--         DECLARE @Id AS INT
--         SET @Id = @@IDENTITY
--         SELECT * FROM Customer WHERE Id = @Id
-- END

-- -- insert another record to check the identity

-- Exec InsertCustomer 'Virat', 'Kohli', 'Delhi', 'India', '1234567890'

-- 
--GetCustomers
--Created By:   Asad Ahmed
--Created Date: 13/09/2015
--Description:  This procedure returns customer information
-- This code returns the details of all the customers
-- in the Customer table if no parameter is passed.
-- If the Id parameter is passed then it returns the details
-- of the customer with Id equal to the parameter value.
-- ALTER PROCEDURE GetCustomers 
-- @Id AS INT = NULL
-- AS 
-- BEGIN
--     /* If @Id is not null */
--     IF @Id IS NOT NULL
--         BEGIN
--             /* Select the details of the customer with Id equal to @Id */
--             SELECT  FirstName            AS FName
--                 ,LastName             AS LName
--                 ,City + ',' + Country AS [Location]
--                 ,Phone                AS Mobile
--             FROM Customer 
--             WHERE Id = @Id
--         END
--     ELSE
--         BEGIN
--             /* Else select the details of all the customers */
--             SELECT  FirstName            AS FName
--                 ,LastName             AS LName
--                 ,City + ',' + Country AS [Location]
--                 ,Phone                AS Mobile
--             FROM Customer
--         END
-- END

-- EXEC GetCustomers

-- ALTER PROCEDURE GetCustomers 
-- @Id AS INT = NULL
-- AS 
-- BEGIN
--     /* If @Id is not null */
--     IF @Id IS NOT NULL
--         BEGIN
--             /* Select the details of the customer with Id equal to @Id */
--             SELECT  FirstName            AS FName
--                 ,LastName             AS LName
--                 ,City + ',' + Country AS [Location]
--                 ,Phone                AS Mobile
--             FROM Customer 
--             WHERE Id = @Id
--         END
--     ELSE
--         BEGIN
--             /* Else select the details of all the customers */
--             SELECT  FirstName            AS FName
--                 ,LastName             AS LName
--                 ,City + ',' + Country AS [Location]
--                 ,Phone                AS Mobile
--             FROM Customer
--         END
-- END

-- EXEC GetCustomers

ALTER PROCEDURE InsertCustomer
    @FirstName VARCHAR(50)
    ,@LastName VARCHAR(50)
    ,@City VARCHAR(50)
    ,@Country VARCHAR(50)
    ,@Phone VARCHAR(50)
AS
BEGIN
    IF (@FirstName IS NULL OR @LastName IS NULL)
        RETURN RAISERROR("First Name and Last Name are required fields.")

    DECLARE @Count AS INT
    SELECT @Count = COUNT(*) FROM Customer WHERE firtName = @FirstName AND lastName= @LastName
    
    IF (@Count > 0)
        RETURN RAISERROR("This Person is already exit.")
    
    INSERT INTO Customer
    VALUES (
        @FirstName
        ,@LastName
        ,@City
        ,@Country
        ,@Phone
        )
    DECLARE @Id AS INT
    SET @Id = @@IDENTITY

    EXEC GetCustomers @Id
END

-- I'm Altering the InsertCustomer Procedure becuase I already have this stored procedure in my database
-- you can create a new one if you want

-- Now Insert again record of Babar Azam to check above store procedure is working or not
