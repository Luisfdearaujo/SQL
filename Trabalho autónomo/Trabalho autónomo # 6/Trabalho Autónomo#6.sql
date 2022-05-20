select * from cliente;
-- 1A)
select * from cliente c join  individual i on c.Numero_Cliente= i.Numero_Cliente;
-- 1B)
select * from reserva r join cliente c on r.Numero_Cliente= c.Numero_Cliente;
-- 1C)

select c.Nome_Cliente  
from reserva r 
join organizacao o 
	on r.Numero_Cliente= o.Numero_Cliente
join cliente c 
	on c.Numero_Cliente= o.Numero_Cliente ;

-- 1D)
select c.Numero_Cliente  
from reserva r 
join organizacao o 
	on r.Numero_Cliente= o.Numero_Cliente
join cliente c 
	on c.Numero_Cliente= o.Numero_Cliente ;

-- 2.

select * from cliente c 
where Nome_Cliente like 'SONAE%':

-- 3. 

select c.Nome, o.NPC
from organizacao o
join cliente c
on o.Numero_cliente = c.Numero_cliente;

-- 3A)

select Numero_Reserva as reserva, datediff(r.Dia_Saida, r.Dia_Entrada) as Noites
from reserva r 
join organizacao o 
	on r.Numero_Cliente= o.Numero_Cliente
join cliente c 
	on c.Numero_Cliente= o.Numero_Cliente ;





