create table province(
prov_id serial primary key,
	prov_name varchar(100)
);

create table city(
	city_id serial primary key,
	city_name varchar(100),
	prov_id int not null,
	foreign key (prov_id) references province (prov_id)
	on update cascade on delete cascade
);

create table users(
user_id serial primary key,
	user_name varchar(55),
	user_email varchar(55),
	user_password varchar(255)
);

create table address(
addr_id serial primary key,
	addr_email varchar(55),
	addr_fullname varchar(55),
	addr_phone_number varchar(18),
	adr_is_default boolean,
	addr_zipcode varchar(15),
	addr_street1 varchar(255),
	addr_street2 varchar(255),
	addr_city_id int not null,
	addr_user_id int not null,
	foreign key (addr_city_id) references city (city_id)
	on update cascade on delete cascade,
	foreign key (addr_user_id) references users (user_id)
	on update cascade on delete cascade
	
	
);

create table roles(
	role_id serial primary key,
	role_name varchar(25)
);

create table user_roles(
	user_id int not null,
	role_id int not null,
	foreign key (user_id) references users (user_id)
	on update cascade on delete cascade,
	foreign key (role_id) references roles (role_id)
	on update cascade on delete cascade
);

create table orders(
	order_name varchar(55) primary key,
	order_created_on timestamp,
	order_is_closed boolean,
	order_total int,
	order_user_id int not null,
	foreign key (order_user_id) references users (user_id)
	on update cascade on delete cascade
);

create table cart(
	cart_id serial primary key,
	cart_created_on timestamp,
	cart_is_closed boolean,
	cart_total int,
	cart_user_id int,
	foreign key (cart_user_id) references users (user_id)
	on update cascade on delete cascade
);

create table category(
	care_id serial primary key,
	cate_name varchar(25)
);

create table product(
	prod_id serial primary key,
	prod_title varchar(25),
	prod_description varchar(255),
	prod_stock int,
	prod_price int,
	prod_condition varchar(15),
	prod_manufacture varchar(25),
	prod_image varchar(100),
	prod_cate_id int not null,
	foreign key (prod_cate_id) references category (cate_id)
	on update cascade on delete cascade
);

create table product_images(
	prim_id uuid primary key,
	prim_file_name varchar(255),
	prim_path varchar(255),
	prim_prod_id int not null,
	foreign key (prim_prod_id) references product (prod_id)
	on update cascade on delete cascade
	
);

create table order_detail(
	ordi_quantity int,
	ordi_price int,
	ordi_cart_id int,
	ordi_prod_id int,
	ordi_orde_name varchar not null,
	foreign key (ordi_cart_id) references cart (cart_id)
	on update cascade on delete cascade,
	foreign key (ordi_prod_id) references product (prod_id)
	on update cascade on delete cascade,
	foreign key (ordi_orde_name) references orders (order_name)
	on update cascade on delete cascade
);

insert into province (prov_id,prov_name) values (1,'DKI Jakarta'),
(2,'Jawa Barat'),(3,'Jawa Tengah');

select *from province;

insert into city (city_id,city_name,prov_id) values 
(1,'Jakarta Selatan',1),
(2,'Bogor',2),(3,'Bandung',2),
(4,'Solo',3),(5,'Madiun',3);

select *from city;

insert into roles (role_id,role_name) values
(1,'Admin'),(2,'Operator'),(3,'User');

insert into users (user_id,user_name,user_email,user_password) values
(1,'Agus','agus@gmail.com','agus123'),
(2,'Budi','budi@gmail.com','budi123'),
(3,'Asep','asep@gmail.com','asep123'),
(4,'Badu','badu@gmail.com','badu123'),
(5,'Badi','badi@gmail.com','badi123');

select *from users;

insert into user_roles (user_id,role_id) values
(1,1),(2,3),(3,3),(4,2),(5,3);

select *from user_roles;

insert into category (cate_id,cate_name) values
(1,'Laptop'),(2,'Handphone'),(3,'Alat Olahraga');

select *from category;

insert into orders (order_name,order_created_on,order_is_closed,order_total,order_user_id)
values ('ORD-040221#0001','2021-02-04 19:10:25','1','3','3');
insert into orders (order_name,order_created_on,order_is_closed,order_total,order_user_id)
values ('ORD-050221#0002','2021-02-05 08:50:25','1','2','4');
insert into orders (order_name,order_created_on,order_is_closed,order_total,order_user_id)
values ('ORD-030221#0003','2021-02-03 08:50:25','0','2','2');
insert into orders (order_name,order_created_on,order_is_closed,order_total,order_user_id)
values ('ORD-030221#0004','2021-02-03 09:50:25','1','2','3');
insert into orders (order_name,order_created_on,order_is_closed,order_total,order_user_id)
values ('ORD-030221#0005','2021-02-03 10:50:25','1','2','2');





insert into product (prod_id,prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id)
values (1,'Laptop Asus','Laptop Gaming','10','7000000','Baru','AsusTek','Gambar1','1');
insert into product (prod_id,prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id)
values (2,'Laptop DELL','Laptop Kantor','20','6000000','Baru','DELL Co.','Gambar2','1');
insert into product (prod_id,prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id)
values (3,'Samsung S3','Smartphone','15','4000000','Baru','Samsung Co.','Gambar3','2');
insert into product (prod_id,prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id)
values (4,'OPPO S7','Smartphone','20','5000000','Baru','PT. OPPO Indonesia','Gambar4','2');
insert into product (prod_id,prod_title,prod_description,prod_stock,prod_price,prod_condition,prod_manufacture,prod_image,prod_cate_id)
values (5,'Sepeda','Sepeda Gunung','5','3000000','Baru','United','Gambar5','3');

select *from product;

insert into address (addr_id,addr_email,addr_fullname,addr_phone_number,adr_is_default,
					addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id)
					values 
					(1,'agus@gmail.com','Agus','021564498','true','16165','Jalan Ahmad Yani','Jl. Pemuda',2,1);
					
insert into address (addr_id,addr_email,addr_fullname,addr_phone_number,adr_is_default,
					addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id)
					values 
					(2,'budi@gmail.com','Budi','021239498','true','16167','Jalan Dadali','Jl. Jambu',1,2);					

insert into address (addr_id,addr_email,addr_fullname,addr_phone_number,adr_is_default,
					addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id)
					values 
					(3,'asep@gmail.com','Asep','021564498','true','16166','Jalan Harupat','Jl. Jalak',3,3);
					
insert into address (addr_id,addr_email,addr_fullname,addr_phone_number,adr_is_default,
					addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id)
					values 
					(4,'badu@gmail.com','Badu','021564498','true','16168','Jalan Pattimura','Jl. Parang',5,4);

insert into address (addr_id,addr_email,addr_fullname,addr_phone_number,adr_is_default,
					addr_zipcode,addr_street1,addr_street2,addr_city_id,addr_user_id)
					values 
					(5,'badi@gmail.com','Badi','021564498','true','16169','Jalan Gadjah Mada','Jl. Majapahit',4,5);

select *from address;


insert into cart (cart_id,cart_created_on,cart_is_closed,cart_total,cart_user_id)
values ('1','2021-02-03 10:50:25','false','2','2'),
('2','2021-02-03 11:50:25','true','1','3'),
('3','2021-02-02 12:50:25','false','2','4'),
('4','2021-02-02 15:50:25','true','3','2'),
('5','2021-02-02 16:50:25','false','2','3');

insert into product_images (prim_id,prim_file_name,prim_path,prim_prod_id) values
('a81bc81b-dead-4e5d-abff-90865d1e13b1','Gambar ASUS','path/D','1'),
('0bc8580b-85a7-4483-bada-a440f4127a0d','Gambar DELL','path/D','2'),
('51f9a02d-d974-40d5-98fa-64bfb0a0dc1a','Gambar Samsung','path/D','3'),
('293cffe4-c2be-4637-a875-a94d552ddd12','Gambar OPPO','path/D','4'),
('dddb402f-4b92-40d0-8d97-09c4a0f4b51b','Gambar Sepeda','path/D','5');

select *from product_images;

insert into order_detail (ordi_quantity,ordi_price,ordi_cart_id,ordi_prod_id,ordi_orde_name) values
('2','10000000','1','4','ORD-030221#0004'),
('2','14000000','2','1','ORD-040221#0001'),
('3','9000000','3','5','ORD-030221#0003'),
('2','12000000','2','2','ORD-050221#0002'),
('1','4000000','4','3','ORD-030221#0005');

insert into order_detail (ordi_quantity,ordi_price,ordi_cart_id,ordi_prod_id,ordi_orde_name) values
('1','4000000','4','3','ORD-030221#0005');

--a
select a.cate_name as CategoryName,count(b.prod_id) as TotalProduct from category a join product b
on a.cate_id = b.prod_cate_id
group by a.cate_id;

--b
select p.prod_title as ProductName,o.ordi_quantity as Qty,o.ordi_orde_name from order_detail o full join product p
on p.prod_id = o.ordi_prod_id;

--c
select p.prod_title as ProductName,sum(o.ordi_quantity) as Buyed from order_detail o join product p
on p.prod_id = o.ordi_prod_id
group by prod_title;

--d
select p.prod_title as prodsuctname, count(r.order_name) as totalorder
from product p join order_detail o on p.prod_id = o.ordi_prod_id
join orders r on o.ordi_orde_name = r.order_name
group by p.prod_id;

select p.prod_title as prodsuctname, sum(r.order_total) as totalorder
from product p join order_detail o on p.prod_id = o.ordi_prod_id
join orders r on o.ordi_orde_name = r.order_name
group by p.prod_id;


--e
select u.user_name as Username, u.user_email as email, count(o.order_name) as totalOrder
from users u join orders o on u.user_id = o.order_user_id
group by u.user_id;

select u.user_name as Username, u.user_email as email, sum(o.order_total) as totalOrder
from users u join orders o on u.user_id = o.order_user_id
group by u.user_id;

--f
select MM(order_created_on) as bulan,count(order_name) as totalorder from orders
group by month(order_created_on);

--h

select c.city_name as city, count(r.order_total) as totalorder
from orders r join users u on r.order_user_id = u.user_id 
join address a on u.user_id = a.addr_user_id
join city c on a.addr_city_id = c.city_id join province p on p.prov_id=c.prov_id
where prov_name='Jawa Barat' group by city_id;




 

