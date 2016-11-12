QUERYS 1ra Base de datos

select p.id_platillo,
p.nombre,
i.nombre
from platos as p
left join ingredientes as i on i.id_platillo=p.id_platillo
order by p.id_platillo;


select p.id_platillo,
p.nombre,
c.nombre
from platos as p
left join categorias as c on p.id_categoria=c.id_categoria
order by p.id_platillo;


select p.id_platillo,
p.nombre,
i.nombre,
i.cantidad
from platos as p
left join ingredientes as i on i.id_platillo=p.id_platillo
order by p.id_platillo;


QUERYS 2da Base de datos


select c.id_compra,
cli.nombre,
p.nombre
from compras as c
left join provedores as p on c.id_compra=p.id_provedor
left join clientes as cli on cli.id_cliente=c.id_cliente
order by c.id_compra;


select c.id_compra,
c.id_cliente,
cli.nombre,
p.nombre,
p.preciouni,
p.preciouni+p.preciouni as suma_compra

from compras as c
left join productos as p on c.id_compra=p.id_compra
left join clientes as cli on cli.id_cliente=c.id_cliente
order by c.id_compra;

	



	TRIGGER 2do

delimiter //
		create trigger inserta_cupones after insert
		on compras
		for each row
		begin
				insert into cupones_promocion(id_compra)
				values (new.id_compra);
		end
//

	TRIGGER 1ro

delimiter //
		create trigger inserta_platillos after insert
		on platos
		for each row
		begin
				insert into nuevos_platillos(id_platillo)
				values (new.id_platillo);
		end
//





