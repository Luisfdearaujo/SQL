
-- 7:
-- com group by:

SELECT sigla_hotel, count(*)
FROM quarto
group BY sigla_hotel;




-- 8:
-- com group by:

SELECT 
	sigla_hotel, 
	sum(Numero_Camas) as QtdCamas
FROM quarto
group BY sigla_hotel;

-- 8.a) feita com group by:
SELECT 
	h.Nome  , 
	sum(Numero_Camas) as QtdCamas
FROM 
	quarto q, 
	hotel h 
where 
	q.Sigla_Hotel = h.Sigla_Hotel 
group by  
	h.Nome ;

-- 9

SELECT sigla_hotel, avg(Preco)
FROM quarto
group BY sigla_hotel;

-- 9.a)

SELECT 
	sigla_hotel, 
	Numero_Camas, 
	avg(Preco) as 'Preço médio'
FROM 
	quarto
group BY 
	sigla_hotel, Numero_Camas ;


-- 10)

select 
	sigla_hotel, 
	avg(preco)
from quarto q
where q.Numero_Camas = 2
group by Sigla_Hotel 
order by avg(Preco) desc 
limit 3;

-- 11)

select 
	Sigla_Hotel, 
	min(preco), 
	max(preco)
from quarto 
group by Sigla_Hotel ;

-- 12)

select 
	sigla_hotel, 
	count(*) as QtdQuartos
from quarto q 
where 
	q.Numero_Camas = 2
group by 
	Sigla_Hotel 
having 
	count(*) > 10;


-- -----------------------------
-- Exercícios extra de Group-by:

-- extra a)

select Numero_Cliente,count(*)
    from reserva r group by Numero_Cliente;
   
-- extra b)
select r.Numero_Cliente, c.Nome, count(*)
from 
	reserva r,
	cliente c
where 
	r.Numero_Cliente = c.Numero_Cliente 
group by 
	r.Numero_Cliente, c.Nome ;
   
-- extra c)
select 
	r.Numero_Cliente, 
	c.Nome, 
	count(*) as QtdFaturas
from 
	reserva r,
	cliente c,
	factura f 
where 
	r.Numero_Cliente = c.Numero_Cliente 
	and 
	r.Numero_Reserva = f.Numero_Reserva 
group by 
	r.Numero_Cliente, c.Nome ;

  
-- extra d)
select 
	r.Numero_Cliente, 
	c.Nome, 
	sum (f.Valor_Factura) as TotalFaturado
from 
	reserva r,
	cliente c,
	factura f 
where 
	r.Numero_Cliente = c.Numero_Cliente 
	and 
	r.Numero_Reserva = f.Numero_Reserva 
group by 
	r.Numero_Cliente, c.Nome ;

-- extra e)
select 
	dia_entrada, 
	count(*) as 'Qtd de check-ins'
from 
	reserva r
group by 
	dia_entrada ;

-- extra h)

select 
	numero_cliente, 
	count(distinct sigla_hotel) as QtdHoteis
from 
	reserva r ,
	reserva_quartos rq 
where 
	r.Numero_Reserva = rq.Numero_Reserva 
group by 
	Numero_Cliente ;


   

	
