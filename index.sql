create database if not exists uvv;
show databases;
use uvv;

create table if not exists vendas(
venda_id int unique primary key not null,
produto varchar(100),
quantidade int not  null,
preco_unit int not null
);

insert into vendas
(venda_id, produto, quantidade, preco_unit)
values(1, 'produto a', '5', '10.00'),
(2, 'produto b', '3', 20.00),
(3, 'produto a', '2', 10.00),
(4, 'produto c', '7', '15.00'),
(5,'produto b', ' 4', '20.00'),
(6,'produto a', '3', '10.00');

select  sum(quantidade*preco_unit) as  total_vendido from pedidos;

select round(avg (preco_unit),2) from vendas;

select produto , sum(quantidade * preco_unit) from vendas group by produto; 
 
 select produto from vendas group by produto order by sum(quantidade) desc limit 1;
 
 
 
 select produto, preco_unit from vendas  order by preco_unit desc limit 1;
 
 select produto, sum(quantidade*preco_unit) as valor_total from vendas  where quantidade>= 4 group by produto;
 
 select produto, round(avg(preco_unit),2) as media_preco from vendas group by produto ;
 
 select produto, sum(quantidade*preco_unit) as valor_total from vendas group by produto having avg(preco_unit)>12.00;
