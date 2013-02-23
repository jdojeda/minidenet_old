---
comments: false
date: 2002-12-14 19:05:58
layout: post
slug: escribir-limpio
title: Escribir Limpio
wordpress_id: 737
categories:
- Internet
---

¿Tienes problemas de estándares cuando escribes? Esto es algo común entre los desarrolladores de contenidos, sobre todo si escribes para un weblog o bitácora como quieras llamarle.





Este artículo pretende introducir al desarrollador a solucionar los problemas a la hora de escribir para la web, no es un lección de gramática sino una lección de desarrollo.





## Introducción





Existen varios problemas que a más de uno le han dado dolor de cabeza cuando quieren pasar de ser proyectos _no estándares_ a proyectos estándares… el tema esta en cómo esta almacenada la información en tu base de datos, o en la base de datos de tu sistema de weblog, ahora paso a explicar.



                          



Si ustedes ven el código de esta página, notarán que cada párrafo, está encerrado entre dos tags `p`, eso no tiene nada de malo, pero si van a la sección del weblog y observan el código notaran que no todo esta encerrado entre tags `p`.





Esto tiene una lógica, y espero que la comprendan, la separación del contenido de la presentación, en los documentos HTML debe ser lo más extremista posible, como la mayoría de los documentos que se generan en el weblog están almacenados en una base de datos, supuse que todo el texto de esa base debe estar muy muy libre de cualquier código, aunque sean unas simples `p`, pero ustedes se preguntan por que… el tema pasa por el control que cada uno desea tener.





A continuación les muestro una todo el texto que requiere un post en el weblog de este sitio.





> Creo que nunca les relaté cuales eran mis pasiones, más allá de la página de información de este sitio… pero ahora se las voy a comentar… pero antes me gustaría ya que veo en mis logs que este es un website bastante concurrido las pasiones de mis lectores… 





Como pueden observar… no hay tags `p`, si pueden observar que cuidadosamente yo escribo las entidades HTML para los acentos, y símbolos, pero no escribo tags `p` para decir que ese post es un párrafo… la razón es que como viene de base de datos es bueno que esté limpio…





Esto me permite que tenga menos errores de escritura, ahora… en otro caso… yo puedo hacer esto:





> `&lt;p&gt;`Creo que nunca les relaté cuales eran mis pasiones, más allá de la página de información de este sitio… pero ahora se las voy a comentar… pero antes me gustaría ya que veo en mis logs que este es un website bastante concurrido las pasiones de mis lectores…`&lt;/p&gt;`





Este ejemplo no tiene nada de malo tampoco, pero poco a poco nos vamos acercando a la verdad.





Si seguimos observando… yo debería escribir para tener un control estricto, un tag `p` para abrir un párrafo y otro tag `/p` para cerrar… pero hey… escribir eso cada vez que tengo que publicar un post haría que escriba con el pasar del tiempo mucho espacio de caracteres solamente en tags `p`!





Pero que estúpido soy… puedo hacer algo para la configuración de mi weblog… puedo decirle que en el lugar donde el weblog escribe mi publicación, se encuentre encerrado entre tags `p`.





> `&lt;h1&gt;&lt;&lt;span&gt;imprimetitulo&lt;/span&gt;&gt;&lt;/h1&gt;&lt;br /&gt;&lt;p&gt;&lt;&lt;span&gt;imprimecuerpo&lt;/span&gt;&gt;&lt;/p&gt;`





Como en ese ejemplo… en la configurar del weblog X, las variables que imprimen el titulo y el cuerpo de la nota o publicación, ya están encerradas, con eso… nos hemos ahorrado de escribir siempre lo mismo cada vez que deseemos hacer una publicación.





Ahora surge otro problema… aquí ya entran los problemas de validación, más de una vez querremos usar dos párrafos en vez de uno entero, entonces… lo correcto sería ponerle dos tags `br`, para simular el fin del párrafo.





éste es el el método que utilizo en mi weblog, pero sin el tag `p`, antes de usar `p`, prefiero usar un `div`, muchos se preguntarán por qué no usa un `span`, por una simple razón… la misma que el tag `p`, usando el tag `p`, `span` no me aseguro que el contenido valla limpio de código, tampoco me asegura que pueda usar tags `li`, `ul`, `ol` y el sistema valide.





> `&lt;h1&gt;&lt;&lt;span&gt;imprimetitulo&lt;/span&gt;&gt;&lt;/h1&gt;&lt;br /&gt;&lt;div&gt;&lt;&lt;span&gt;imprimecuerpo&lt;/span&gt;&gt;&lt;/div&gt;`





En este ejemplo, prefiero usar un div, con propiedades de presentación que un CSS puede aplicar, del mismo modo que un `p`, esto me permite, poder usar con total libertad y escalabilidad un montón de tags, que nunca van a estar encerrados entre los tags `p`.





Esto comúnmente se lo conoce como un mal uso de los elementos de bloque y los elementos de línea.





### Un ejemplo que no valida





> `&lt;p&gt;`Hoy a la tarde hice tres cosas:  

`&lt;ul&gt;&lt;br /&gt;  

&lt;li&gt;`Dormir`&lt;/li&gt;&lt;br /&gt;  

&lt;li&gt;`Comer`&lt;/li&gt;&lt;br /&gt;  

&lt;li&gt;`Mirar tv`&lt;/li&gt;&lt;br /&gt;  

&lt;/ul&gt;&lt;/p&gt;`





Ahí estamos mezclando dos elementos distintos… que no se permiten estar uno encerrado en el otro.





### El ejemplo correcto





> `&lt;p&gt;`Hoy a la tarde hice tres cosas:`&lt;/p&gt;&lt;br /&gt;&lt;ul&gt;&lt;br /&gt;  

&lt;li&gt;`Dormir`&lt;/li&gt;&lt;br /&gt;  

&lt;li&gt;`Comer`&lt;/li&gt;&lt;br /&gt;  

&lt;li&gt;`Mirar tv`&lt;/li&gt;&lt;br /&gt;  

&lt;/ul&gt;`





Ahí separamos completamente los tags, y forzamos a tener un código válido, pero, si volvemos a lo mismo… tendría que sacar el tag `p` de cada post o sacarlo del template como en los ejemplos anteriores.





### La santa solución





La santa solución, reside en usar el tag `br`, 2 `br` para simular el tag `p`, esto te permite tener todo el contenido libre de tags, además recuerda usar una `div` madre para setear el estilo de ese texto en vez de un `p`.





## Notas Finales





### Para mayor referencia





Para mayor referencia, observa el código de la página del weblog, te darás cuenta cómo esta armado todo, y observarás que es una escritura bastante limpia… como debe ser.





### Recuerda





  


  * Presentación separada del contenido.


  * Contenido separado de presentación.


  * Contenido escalable, o sea sin elementos de presentación.


  * Contenido con mucho formato semántico.


  * Contenido almacenado en una base de datos para una completa separación de la presentación del contenido.







 
