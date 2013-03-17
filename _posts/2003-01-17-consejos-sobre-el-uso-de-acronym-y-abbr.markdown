---
comments: false
date: 2003-01-17 20:23:12
layout: post
slug: consejos-sobre-el-uso-de-acronym-y-abbr
title: Consejos sobre el uso de &lt;acronym&gt; y &lt;abbr&gt;
wordpress_id: 798
categories:
- Internet
---

Como verán tengo una extensa [lista](http://www.minid.net/lista/) de cosas para hacer en minid.net en los ratos libres… y una de ellas, una de las tan importantes cosas que tengo que hacer es la semantización de los contenidos.





Como pueden ver, en la lista uno de los puntos cubre el uso del MTmacro, que es un plug-in que permite insertar `&lt;acronym&gt;` y `&lt;abbr&gt;`, y viendo lo que pasa en muchos lados, comprendiendo que **muchos se esmeran** por tener las cosas en regla, tanto para validar, como para semantizar, hoy les voy a explicar, por que lo he prometido, cómo usar bien estos dos tags que son **vitales** en el proceso de semantización… y en tal caso también pueden ayudarme colaborando con sus puntos de vista, correcciones y consejos también. No soy el rey de la verdad absoluta por suerte.





Siguiendo con el tema, muchos utilizan los tags ya mencionados para declarar un acrónimo escribiendo `&lt;acronym title="…"&gt;…&lt;/acronym&gt;` o una abreviación escribiendo `&lt;abbr title="…"&gt;…&lt;/abbr&gt;` de algún término o alguna palabra, pero pocos se han enterado cómo aplicarlo bien.





Lo más complejo de la semantización es saber el verdadero significado de las cosas, tanto para un programa que lee y analiza texto, la semantización sirve para que una persona sepa que sigfinica una determinada cantidad de siglas.





Bien como explica Mark Pilgrim en su post [Better living through regular expressions](http://diveintomark.org/archives/2002/08/15.html#better_living_through_regular_expressions), mucha gente no sabe que significa SMIL,  sin embargo, si aplicamos el método anterior a esta sigla me va a aparecer una linea punteada en el borde inferior de la misma (en algunos casos)  y cuando se posa el cursor sobre esa palabra aparece una caja flotante de esas de color amarillas (en general aparece ese color) y nos dice que significan esas siglas.





Hasta aquí vamos bien por ejemplo si queríamos definir SMIL, basta con poner `&lt;acronym title="Synchronized Multimedia Integration Language"&gt;SMIL&lt;/acronym&gt;` mientras escribimos el post en nuestro weblog. De esta forma se ve mezclado entre texto.





> … Hasta aquí vamos bien por ejemplo si queríamos definir `&lt;acronym title="Synchronized Multimedia Integration Language"&gt;SMIL&lt;/acronym&gt;`, basta …





Como ven, si cada vez que tienen que escribir algo, tienen que escribir eso, todo sería bastante tedioso, es por eso que los que usan MT, tienen MTmacro, que soluciona la vida, pero los que no deben ingeniárselas para usar otros métodos.





Si bien muchos, antes de escribir pueden hacer un `Buscar y Reemplazar` no conozco otro modo del cual uno no se canse definiendo acrónimos y abreviaturas.





### Cuando se confunde el uso entre ambos





Uno antes de usar un tag, debe aprender cual es el resultado “semántico” antes que el resultado “visual”, o sea, como explicamos muchas veces en minid.net, no es lo mismo escribir `&lt;b&gt;` que `&lt;strong&gt;`, lo mismo pasa aquí con el `&lt;acronym&gt;` y el `&lt;abbr&gt;`.





Ambos tiene el mismo “efecto visual”, ambos tienen una linea punteada debajo de cada palabra, pero ambos significan distintas cosas.





Vamos a los ejemplos prácticos, W3C es un acrónimo por que éste se compone de “siglas” (W – 3 – C), como vemos podemos “discernir” que son siglas, incluso si vamos a la página de la W3C vamos a ver que ellos muestran lo que esas siglas significan, es por eso que W3C no puede ser una abreviatura, aunque podría serlo ahora vamos a ver un ejemplo claro de abreviaturas…





No lo es por que un acrónimo es una palabra compuesta por acronimia, y una acronimia es:





> **Acronimia:** Abreviamiento de dos palabras, que constituye un solo sintagma o concepto, por la unión de sus extremos opuestos: autobús por automóvil ómnibus. 





Aunque una abreviatura, también podría definir por ejemplo una cantidad de siglas, ejemplo D.E.P (Departamento Especial Pedagógico), en HTML ya existe un tag especial para estos casos y es `&lt;abbr&gt;`, entonces debemos usar `&lt;acronym&gt;` para las siglas y `&lt;abbr&gt;` para las abreviaturas.





Si del tema se trata aprender más sobre los acrónimos, basta con leer un lindo post de Álvaro Ibáñez en donde habla mucho [de los acrónimos](http://www.hiperespacio.com/2002_11_01_archive.htm#85654382) y de sus usos aplicaciones y variantes.





Ejemplo super práctico de una abreviatura mal asignada:





> `&lt;abbr title="Synchronized Multimedia Integration Language"&gt;SMIL&lt;/abbr&gt;`





podría ayuda esto pero no es el verdadero fin… a este ejemplo le correspondería:





> `&lt;acronym title="Synchronized Multimedia Integration Language"&gt;SMIL&lt;/acronym&gt;`





Ahora si, usando `&lt;acronym&gt;` en vez de `&lt;abbr&gt;`.





Ahora veamos un ejemplo de una abreviatura bien aplicada:





> `&lt;abbr title="Incorporated"&gt;Inc.&lt;/abbr&gt;`





Ahora si, como podemos ver que en HTML definimos abreviaturas a términos que se acortan sin definirse como siglas.





### Definir el lenguage





Otra de las cosas importantes de la semántica es explicar qué idioma aparece en estas abreviaturas y acrónimos, es tan importante como sutil para mostrarle al usuario que “algo” es de “algún lado”.





Y en HTML existe el atributo `lang="…"` y en XML existe el `lang="es"`, que nos permite definir por ejemplo que unas siglas como W3C son en inglés, o por ejemplo MIT, estas son siglas que representan “algo” de algún “lado”, entonces, a que viene el caso, en los documentos de habla hispana que están bien formados deben llevar en el tag `&lt;html&gt;` la declaración de idioma del documento **entero**, osea que todo el contenido, incluyendo tags, texto, imágenes, sonidos, etc que estén dentro del tag `&lt;html&gt; &lt;/html&gt;` van a ser de un idioma en especial…





En minid.net por ejemplo como es castellano, uso esta declaración:





> `&lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" &lt;strong&gt;lang="es"&lt;/strong&gt;&gt;&lt;br /&gt;&lt;head&gt;&lt;br /&gt;….`





Como pueden observar, declaro tanto para XML como para HTML el lenguaje  `lang="es"` y por ende todos los elementos dentro de mis tag `&lt;html&gt; &lt;/html&gt;` van a ser de idioma castellano, por que todos los elementos “heredan” las propiedades de su elemento padre.





Por eso, si escribimos un &lt;acronym&gt; como por ejemplo AOL, éste como es una empresa de los Estados Unidos, donde se habla inglés, éste debe llevar el atributo `lang="en"`, de otro modo, éste sería un acrónimo mal definido, sería un acrónimo bien definido en lo que esas siglas significan, pero no en el idioma que corresponde.





Es por eso que deben ser cautos a la hora de definir acrónimos, abreviaturas, nomenclaturas, deben dicernir, y bueno… acostumbrarse a aplicar todo esto.





Ahora mismo en [minid.net](http://www.minid.net) hay muy pocas definidas y semantizadas, pero pronto estará todo en regla, y ése es un punto vital al cual quiero llegar, por que va a lograr que mi contenido sea mucho más rico, en semántica, mejor analizable por programas del tipo robots de buscadores, analizadores de texto, etc.





Si estas empezando un weblog, conviene hacer esto desde el principio, así de esta forma te ahorras un montón de dolores de cabeza luego… si ya tienes un weblog como el mío donde hay más de 700 publicaciones entonces tienes que buscar la mejor forma de ponerte al día.





### Entonces resumiendo…





  


  * Tratar de aprender a discernir de una abreviatura de un acrónimo, en el caso de definir un documento.


  * Si utilizan Movable Type, definir los MTmacros.


  * Cuidarse de definir el lenguaje de cada documento, en el tag `&lt;html lang="es"&gt;`


  * Definir los tags `&lt;acronym&gt;` y `&lt;abbr&gt;` con el idioma correspondiente.


  * Usar el validador de la W3C para comprobar la estructura de cada documento y encontrar posibles errores.


  * Si empiezas de cero algo, aprovecha y sematiza tu contenido.


  * Si ya tienes un megaweblog montado con muchos posts, busca la forma de poder cambiar todo sin tener que andar escribiendo en todos los posts lo mismo…





Espero que esta contribución sirva de mucho, como siempre me gusta ofrecer este tipo de consejos, y tratar de encontrar “lo correcto” todos juntos…





Si tienen una duda, no duden en **comentarlo** en este artículo, y el que posee algo más para agregar/corregir, bienvenido sea también .




 
