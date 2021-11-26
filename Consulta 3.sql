--¿En que ciudad y cuales clientes son los que mas piden el trabajo de la empresa de mudanzas?
select  direccion,
        nombre,
		apellido,
		uso_de_servicios_de_la_empresa 
		from clientes inner join articulos_de_mudanza
on articulos_de_mudanza.id_articulos_de_mudanza = articulos_de_mudanza.id_clientes
group by direccion,
         nombre,
		 apellido,
		 uso_de_servicios_de_la_empresa
order by apellido;
