create database asp_shoemart

 USE asp_shoemart

 --________Register_&_Login Table___________

 CREATE TABLE tbl_register
 (
  userId INT PRIMARY KEY IDENTITY,
  username VARCHAR(50),
  userpass VARCHAR(50),
  useremail VARCHAR(50),
  usermobile VARCHAR(20)
)

CREATE PROCEDURE sp_register
(
 @username VARCHAR(50),
 @userpass VARCHAR(50),
 @useremail VARCHAR(50),
 @usermobile VARCHAR(20)
 )

 AS BEGIN 
 INSERT INTO tbl_register VALUES (@username, @userpass, @useremail, @usermobile)
 END

 CREATE PROCEDURE sp_login
 (
  @username VARCHAR(50),
  @userpass VARCHAR(50)
 )

 AS BEGIN 
 SELECT * FROM tbl_register WHERE username = @username and userpass = @userpass
 END

---_____________ADD_CART_TABLE________________________________________________________________________________

 CREATE TABLE tbl_cart
 (
   id INT PRIMARY KEY IDENTITY,
   brand VARCHAR(50),
   model VARCHAR(50),
   price FLOAT,
   size VARCHAR(20)
 )
   
 CREATE PROC sp_cart
 (
  @brand VARCHAR(50),
  @model VARCHAR(40),
  @price FLOAT,
  @size VARCHAR(20)
 )
 AS BEGIN 
 INSERT INTO tbl_cart VALUES (@brand, @model, @price, @size)
 END


 CREATE PROC sp_cart_fetch_all

 AS BEGIN 
 SELECT * FROM tbl_cart 
 END
  
 CREATE PROC sp_cart_delete
 (
   @id int
 )
 AS BEGIN 
 DELETE FROM tbl_cart WHERE id = @id
 END

---_______ADD_PRODUCT_TABLE_______________________________________________________________________________________________

CREATE TABLE tbl_add_product
(
  id INT PRIMARY KEY IDENTITY,
  brandname VARCHAR(50),
  shoemodel VARCHAR(50),
  category VARCHAR(50),
  purchasedate DATE,
  numberofunits VARCHAR(20),
  amount FLOAT
)

-----------
CREATE PROC sp_add_product
(
  @brandname VARCHAR(50),
  @shoemodel VARCHAR(50),
  @category VARCHAR(50),
  @purchasedate DATE,
  @numberofunits VARCHAR(20),
  @amount FLOAT
)
AS BEGIN
INSERT INTO tbl_add_product VALUES (@brandname, @shoemodel, @category, @purchasedate, @numberofunits, @amount)
END
---------------
CREATE PROC sp_add_fetch_all

AS BEGIN 
SELECT * FROM tbl_add_product
END
------------------

CREATE PROC sp_add_product_update
(
 @id int,
 @brandname VARCHAR(50),
 @shoemodel VARCHAR(50),
 @category VARCHAR(50),
 @purchasedate DATE,
 @numberofunits VARCHAR(20),
 @amount FLOAT
)
AS BEGIN 
UPDATE tbl_add_product SET brandname = @brandname, shoemodel = @shoemodel, category = @category, purchasedate = @purchasedate,
numberofunits = @numberofunits, amount = @amount where id = @id
END 
---------------------
CREATE PROC sp_add_product_delete
(
  @id int
)
AS BEGIN
DELETE FROM tbl_add_product WHERE id = @id
END

---______TABLE_REVIEW_____________________________

CREATE TABLE tbl_review
( 
  id INT PRIMARY KEY IDENTITY,
  rvname VARCHAR(50),
  rvemail VARCHAR(50),
  rvphone VARCHAR(20),
  review VARCHAR(100)
)

CREATE PROC sp_add_review
(
  @rvname VARCHAR(50),
  @rvemail VARCHAR(50),
  @rvphone VARCHAR(20),
  @review VARCHAR(100)
  )
  AS BEGIN 
  INSERT INTO tbl_review VALUES (@rvname, @rvemail,  @rvphone, @review)
  END

  ---____TABLE_BILLING_______
  
  CREATE TABLE tbl_billing_shoe
  (
   id INT PRIMARY KEY IDENTITY,
   brandname VARCHAR(50),
   modelname VARCHAR(50),
   size VARCHAR(50),
   cost FLOAT,
   gst INT,
   totalamount FLOAT,
   cashoronline VARCHAR(50),
   adress VARCHAR(100)
  )

  CREATE PROCEDURE sp_add_billing
  (
    @brandname VARCHAR(50),
	@modelname VARCHAR(50),
	@size VARCHAR(50),
	@cost FLOAT,
	@gst INT,
	@totalamount FLOAT,
	@cashoronline VARCHAR(50),
	@adress VARCHAR(100)
  )

  AS BEGIN
  INSERT INTO tbl_billing_shoe VALUES (@brandname, @modelname, @size, @cost, @gst, @totalamount, @cashoronline, @adress)
  END