HISTORIAS DE USUARIO



------ PRESENTACION ------

Buenos días a todas, hoy vamos a abordar uno de los desafíos más importantes que enfrenta ABC Corporation: la retención de empleados.

Sabemos que mantener a nuestro mejor talento es clave para el éxito a largo plazo de la empresa, por lo que en este proyecto hemos analizado los factores críticos que influyen en esta problemática. 

Os mostraremos la evaluación de distintos factores que impactan en la satisfacción de los empleados y cómo éstos la relaciónan con su decisión a través de permanecer en la empresa a través de un experimento de A/B Testing.

Finalmente, analizaremos los resultados obtenidos y os propondremos soluciones concretas que ayudarán a mejorar la retención de talento en ABC Corporation.

Antes de pasar al tema central, nosotras, Cold Code, nos gustaría presentar a nuestra Scrum Master, Leyre, y a nuestro talentoso equipo de desarrollo compuesto por Verónica, Luz Marina y Nerea, quienes han trabajado arduamente para traerles esta solución.

---- DIAPOSITIVA Nº 4 ----

Primeramente ver la distribución de los roles dentro de la empresa, donde podemos comprobar que los puestos con más número de empleados son Ejecutivo de Ventas y Científico de Investigación.


-- DIAPOSITIVA 5 --

Es importante tener en cuenta que, dentro de los datos analizados, rondando el 20% de los empleados ya no están en ABC Corporation.

-- DIAPOSITIVA 6 -- EDA

El objetivo principal del análisis EDA que hemos realizado ha sido comoprender qué variables y qué datos son los que nos dan información sobre la retención de los recursos humanos y cómo son estos datos.

Tras la importación del CSV nos hemos dado cuenta de que había columnas que, además de tener muchos nulos, nos nos garantizaban obtener información interesante para analizar la retención de talento pero eran interesantes tenerlos en cuenta para los análisis posteriores porque que no haya un dato en concreto como puede ser su distancia desde el trabajo a su casa, o los años en la compañía, o si tiene trabajo a distancia, entre otras.

. Concluyendo, hemos reemplazado los nulos por la palabra "no-data" para interpretarlo que no hay esa información en vez de significar un NO directamente.

Luego consideramos que no aportaban información, estaba mal imputada o duplicaban columnas como departamento, edad, si era mayor de edad, salario, números de hijos... 



### Fase 3. --- 

-- DIAPOSITIVA 7


Procedemos a insertar los datos, pero se nos presentó aquí el primer reto. Tuvimos problemas a la hora de coger cada elemento del DataFrame y creamos una función para poder utilizarlos. Esta funciónp pasa a tupla y a int los elementos para poder insertarlos correctamente.

Posteriormente, concluimos un primer diseño de la base de datos como el que podéis ver en la diapostiva. Pero a pesar de que tuvieramos de manera correcta el formato de los datos, nos pasamos unas cuantas horas intentando averiguar porque no nos cargaba los datos de la tabla combination, nos dimos cuenta de que este diseño era insostenible. Es decir, la tabla de unión de las claves primarias no se rellena automáticamente.

Por lo que, tras horas de pensar, hemos rediseñado el esquema, eliminando la tabla combination, y utilizando la primary key de la tabla principal como foreign key de todas las demás, y con ésto, introducción de datos finalizada correctamente. Ya nos permitía hacer todo tipo de consultas.


### FASE VISUALIZACION -- FASE 6 REPORTE

--- Ya con los datos cocinados y servidos, pasamos a probar el plato. Lo primero que nos damos de cuenta es que, del conjunto de datos totales, unos 1501 empleados, cerca del 20% ya no estaban en la empresa. Vamos a ver por qué.

Los estadísticos principales e importantes para nuestra valoración han sido, resumidamente:
- el 60% de los datos valorados son de empleados varones
- la edad media de los empleados es de 35 - 45 años, con un 37% seguidos por los de 25-35 años, con 34.38%
- teniendo en cuenta esto, el casi 72% de la plantilla está entre los 25-45 años.
- el nivel de estudios más popular es el 3, siendo un 23% egresados de ciencias ¿¿naturales?? - life sciencies, pero más de la mitad de la muestra desconocemos cuál es su campo educativo. 
- otro aspecto importante es que para más de la mitad de la muestra, es la única compañía en la que han trabajado


--- DIAPOSITIVA 14 --- 

Definitivamente, la conclusión más importante a la que hemos llegado es que, se relaciona que, cuánta menos satisfacción en general tienen los empleados, mayor es la tasa de rotación.

Por lo que, es importante mejorar la satisfacción que tienen los emplados, así que os vamos a proponer varias cosas:

--- DIAPOSITIVA DE PROPUESTAS

Para finalizar, haríamos incapié en dos aspectos que consideramos importantes tras analizar los datos:

Hemos visto que hay una correlación muy positiva entre la satisfacción sobre el entorno de trabajo y la rotación. Esto significa que, tenemos algún problema con la ergonomía, iluminación, ventilación o ruido en el puesto de trabajo. Nuestra recomendación es valorar la realización de un estudio a través de una consultora de PRL para que nos indique como podemos mejorar el espacio de trabajo.

Por otro lado, en el entorno social, la percepción de seguridad y comodidad, incluso las buenas relaciones interpersonales entre los empleados, es muy importante para la rotación. Para mantenerlo, incluso mejorarlo, es muy importante tener una comunicación abierta y honesta entre todos los departamentos además de empatía y comprensión. La comunidad gozará de confianza y apoyo mutuo con estos ingredientes, además de generar actividades de participación activa, como eventos que fortalezcan los lazos sociales entre los empleados, pero esto ya es trabajo de Recursos Humanos y sus dinámicas de grupo. jejejejejejeje

Sin más dilación, pasamos al turno de las preguntas :)
