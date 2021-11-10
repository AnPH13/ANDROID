create database adroid_shop
go
use adroid_shop
go
create table Product(
	id char(9) primary key,
	PR_Name nvarchar(255),
	descriptions nvarchar(255),
	pr_type nvarchar(50),
	discount float,
	date_create datetime,
	date_modified datetime,
)
go
create table Product_color(
	id char(9) primary key,
	color nvarchar(50)
)
go
create table Product_size(
	id char(9) primary key,
	size float
)
go
create table Product_image(
	id char(9) primary key,
	images nvarchar(255),
)
go
create table Product_details(
	id char(9) primary key,
	color char(9),
	size char(9),
	images char(9),
	product_id char(9),
	quantity int,
	PR_price float,
)
go
create table Discount(
	id char(9) primary key,
	discount float,
	effective_date datetime,
	expiration_date datetime,
	_status char(9)
)
go
create table Account(
	id char(9) primary key,
	username varchar(100),
	email varchar(100),
	passwords varchar(100)
)
go
create table Account_information(
	id char(9) primary key,
	_Name nvarchar(255),
	birthday date,
	gender bit,
	avatar nvarchar(255)
)
go
create table List_address(
	id char(9) primary key,
	customer_id char(9),
	phone char(11),
	_address nvarchar(20),
	_status bit
)
go
create table Bill(
	id char(9) primary key,
	discount_id char(9),
	customer_id char(9),
	date_create datetime,
	date_modified datetime,
	_status int
)
go
create table Bill_details(
	id char(9)  primary key,
	product_id char(9),
	bill_id char(9),
	quantity int,
	unit_price float
)
go 
create table Reviews(
	id char(9) primary key,
	_description nvarchar(255),
	images_id char(9),
	rate int,
	product_id char(9),
	customer_id char(9),
	date_created datetime,
	delete_flag bit
)
go
--khoá ngoại

alter table Product_details add constraint fk_Product_details_Product_color 
foreign key (color) references Product_color(id)
go
alter table Product_details add constraint fk_Product_details_Product_size 
foreign key (size) references Product_size(id)
go
alter table Product_details add constraint fk_Product_details_Product_image 
foreign key (images) references Product_image(id)
go
alter table Product_details add constraint fk_Product_details_Product 
foreign key (product_id) references Product(id)
go
alter table Reviews add constraint fk_Reviews_Product 
foreign key (product_id) references Product(id)
go
alter table Reviews add constraint fk_Reviews_Account_information 
foreign key (customer_id) references Account_information(id)
go
alter table Bill_details add constraint fk_Bill_details_Product 
foreign key (product_id) references Product(id)
go
alter table Bill_details add constraint fk_Bill_details_Bill 
foreign key (bill_id) references Bill(id)
go
alter table Bill add constraint fk_Bill_Account_information 
foreign key (customer_id) references Account_information(id)
go
alter table Account_information add constraint fk_Account_information_Account 
foreign key (id) references Account(id)
go
alter table List_address add constraint fk_List_address_Account_information 
foreign key (customer_id) references Account_information(id)
go
alter table Bill add constraint fk_Bill_Discount 
foreign key (discount_id) references Discount(id)