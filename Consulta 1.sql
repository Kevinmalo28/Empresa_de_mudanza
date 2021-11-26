--¿Cuáles son los empleados con mayor experiencia en la empresa?
SELECt Nombre, 
       apellido, 
       cedula_de__identidad, 
       tiempo_de_experiencia
       from asesores 
WHERE asesores.id_asesores = id_asesores
GROUP BY Nombre,
         apellido,
         cedula_de__identidad, 
         tiempo_de_experiencia
ORDER BY cedula_de__identidad;