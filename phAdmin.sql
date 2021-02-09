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