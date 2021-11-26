--¿Qué tipos de mudanzas son los más solicitados, ciudad la cantidad y el peso de estos mismos los cuales son requeridos por los clientes?
select objeto_de_mudanza,
       direccion,
	   peso,
	   cantidad 
	   from clientes inner join articulos_de_mudanza
on articulos_de_mudanza.id_articulos_de_mudanza = articulos_de_mudanza.id_clientes
group by objeto_de_mudanza,
           direccion,
		   peso,
		   cantidad
order by direccion;