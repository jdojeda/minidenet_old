---
comments: false
date: 2004-03-25 16:15:39
layout: post
slug: sobre-el-nuevo-diseo
title: Sobre el nuevo diseño
wordpress_id: 1610
categories:
- Internet
---

Como cumplimos 3 años, lo estrenamos con un diseño que tiene un enfoque distinto. Hablaré de los cambios, como de costumbre, porque realmente me gusta relatar lo que hago. La idea de cambiar todo tomó alrededor de unos 2 meses. Han pasado por el servidor de pruebas unas 4 versiones funcionales. Pero la que más ha convencido a los 130 empleados de minid.net era ésta.





Como todo prototipo que sale al mercado, seguro que habrán cambios. El _feedback_ de la gente es lo más importante. He tenido en consideración bastante puntos. Sobre todo los de legibilidad. Cómo esto es un weblog, y lo que prima es la lectura, el diseño artístico pasa a otro plano. De todos modos, existe un diseño bastante rebuscado.





Diseñar para leer siempre fue la clave. Diseñar para economizar muchos aspectos: ancho de banda, cantidad de clics, minutos buscando información, etc. Más allá de mi predilección por el arte minimalista, creo que, _es todo un logro_ encontrar un equilibrio, y en estos 2 meses de reflexión visual y funcional, me encuentro satisfecho.





### El estilo





Realmente quería cambiar de estilo. No me refiero a pasar del minimalista al complejo, sino el estilo gráfico que apreciamos: un aspecto viejo, fino, selecto. Entre estos puntos, como referencia tomé portadas de libros. Busqué en las biblioteca del barrio y en la provisional que tengo algunos libros antiguos. Para mirar la posición de los titulares, tipos de letras de la época, etc. En internet tenía unas referencias bonitas. La idea era ver cómo otros convivían con las tipografías y los colores. Yo siempre viví enamorado con el diseño de Juanjo Seixas de [efimera.org](http://www.efimera.org) que mantiene todo lo que me gusta, incluso, muchos conceptos fueron imitados de su estilo, como por ejemplo: _la coloración_. Juanjo tienes la culpa.





![colores.png](http://www.minid.net/images/colores.png)





### La forma





Nunca he experimentado un esquema de 3 columnas, así que era hora de probarlo. Uno de los que ha causado esta decisión fue Dean Allen de [Textism](http://www.textism.com), él fue mi musa. Me gustó mucho la forma de aprovechar el espacio en un diseño limpio, y su diseño lo logra en algunos casos, las 3 columnas por ejemplo, los usos tipográficos, etc. Aunque, el mío tiene tres veces más elementos que el suyo, lo que más costó fue la distribución de los elementos. También los espacios de las tipografías y los espacios en blanco. Hay muchas cosas de [Textism](http://www.textism.com) que no me agradaban, tienen su formato y su distribución.





![textile-show.png](http://www.minid.net/images/textile-show.png)





![gráfica mini-d](http://www.minid.net/images/minid-show.png)





![gráfica mini-d](http://www.minid.net/images/minid2-show.png)





![logo-none.png](http://www.minid.net/images/logo-none.png)





En la búsqueda por el equilibrio y la prolijidad, los diseños tenían 2 columnas. &Eacute;ste que ahora observan venía en 2 columnas, y sólo cambiar dos etiquetas de XHTML y diez líneas de CSS hicieron que todo el sitio tuviera otro aspecto. Las tres columnas ahora me permiten visualizar más información en poco espacio. Antes aprovechabamos el ancho para otras cosas, pero ahora se aprovecha más para otras, como es la navegación del sitio.





He Nombrado a [Textism](http://www.textism.com) solamente, porque fue el que más ha influído en mi trabajo, pero hubo otros, con irse a los directorios de diseños de bitácoras, ya le sobra a uno para inundarse de conceptos.





Las tipografías elegidas fueron 3. Comenzando por las del logotipo, que descartó las fuentes pixeladas que llevó casi 3 años por unas _serif_, en concreto Adobe Minion Pro fue la seductora. Le siguen las tipografías web Georgia y Verdana.





![tipografias.png](http://www.minid.net/images/tipografias.png)





### Verdana vs. Tahoma





Durante años utilicé Tahoma para el weblog, de momento hacía el switch a la Verdana, pero al rato la cambiaba. Esta vez, todo cambió. Ahora la Verdana convive mejor con el resto del entorno.





### XHTML y CSS





Hay cambios significativos en lo que respecta estructura. Mientras que las páginas anteriores a este diseño tenían un cuidado casi extremo -no pasaban casi nunca de los 80 KB-, estas pesan menos todavía. Se han eliminado estructuras; hay cambios significativos como los comentarios, que utilizan listas para enumerarlos y darles más sentido; hay una coherencia de orden de datos: primero la cabecera, articulos, navegación y pie de página; se han quitado etiquetas de MT para no sobrecargar la reconstrucción, y muchas cosas más.





El ancho siempre fue un tema polémico. Mientras están los que prefieren el ancho fijo, también los hay bastante que les encanta el ancho variable. He decidido por un tamaño fijo de 750 pixeles, el cual le permite a casi todos, poder visualizar la pantalla. De todas formas, en el tag `&lt;body&gt;` tienen un `id` llamado `id="minid-net"` que les permite configurarse en su navegador una hoja de estilos propia, que elimine las reglas que yo he escrito. También podía utilizar la propiedad `max-width:`, pero hay navegadores que por desgracia no soportan esto. Para obtener esas propiedades, debo poner código de Javascript, cosa que no me agrada.





La página utiliza Javascript para escribir las cookies en los formularios, si pudiera prescindir de ella, lo haría.





La accesibilidad siempre presente. El 70% de las notas escritas están con mejoras semánticas, internacionalizadas en algunos casos para mejor comprensión de los lectores de pantalla. También es posible [la navegación con teclado, que tanto utilizo](/informacion/terminos_de_uso/accesibilidad_en_minidnet.php).





### Otros formatos Atom, RDF, RSS, etc.





Ahora como todo el sitio está montado en MT, se puede saber las secciones que han recibido actualizaciones. Ahora puedo actualizar cualquier parte del sitio en segundos, además de mantener un grado semántico alto con los metadatos. Algo que he hablado tanto y nunca hice. Bueno lo dicho está hecho.





### A futuro próximo





Cosas que podrán acceder en poco tiempo:







  1. RSS de los comentarios.


  2. RSS de los artículos.


  3. Hoja de estilos CSS para poder imprimir.


  4. Se está barajando la posibilidad de registración para comentar en el sitio usando Typekey.


  5. Otra página de archivos. Más ordenada, más accesible.





Espero que la estancia sea de agrado. Ya saben, en lo que pueda mejorar, lo tomaré en cuenta.




 
  *[vs.]: versus
