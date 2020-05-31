/**
 * Question 1:
 * create you DATABASE name zone-test.
 */

create DATABASE zone-test;

/**
 * Question 2:
 * create your TABLES.
 */

create table customer (
customerid int not null PRIMARY KEY,
fisrtName nvarchar(40),
lastName nvarchar(40),
city nvarchar(40),
country nvarchar(40),
phone nvarchar(20),
)

create table order (
orderid int not null PRIMARY KEY,
orderDate datetime,
orderNumber nvarchar(10),
totalAmount decimal(12.2),
)


create table supplier (
supplierId  int not null PRIMARY KEY,
companyName nvarchar(40),
contactName nvarchar(50),
contactTitle nvarchar(40),
city nvarchar(40),
country nvarchar(40),
phone nvarchar(40),
fax nvarchar(40),
)

create table product (
    productId int not null PRIMARY KEY,
    productName nvarchar(50),
    unitPrice decimal(12,2),
    package nvarchar(30),
    isDiscontinued bit,
    FOREIGN KEY (SupplierId) REFERENCES Supplier(SupplierId)
)

create table OrderItem ( 
    OrderItemId int NOT NULL , 
    UnitPrice decimal (12,2) , 
    Quantity int ,
    FOREIGN KEY (OrdersId) REFERENCES Orders(OrdersId) ,
    FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
    ) ;
/**
 * Question 3:
 * List the first name, last name, and city of all customers.
 */

select fisrtName, lastName, city
from customer;


/**
 * Question 4:
 * Add a record for a new customer (hamza mhadbi and jobran amairi) and Country to tunis
 */
INSERT INTO Customer (fisrtName ,lastName,country)
VALUES ('hamza','mhadbi','tunis');
VALUES ('jobran','amairi','tunis');


/**
 * Question 5:
 * Discontinue products over $50.
 */

 // your answer here 


 /**
 * Question 5:
 * List all products with names that start with 'Ca'
 */
select productName
from product
where productName like 'ca%';
 


  /**
 * Question 6:
 *  List the number of customers in each country
 */

 
SELECT COUNT(customerid)
from customer
group by country;
