Create PROCEDURE CustomerViewById
@Cust_id nchar(450)
As
	BEGIN
	Select * 
	From Customer
	Where Cust_id=@Cust_id
	END