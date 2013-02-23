---
comments: false
date: 2002-12-21 13:38:10
layout: post
slug: un-uso-ms-prctico-y-semntico-del-blockquote
title: Un uso más práctico y semántico del BLOCKQUOTE
wordpress_id: 762
categories:
- Internet
---

Si yo lo vengo repitiendo un centenar de veces… el uso de CSS y XHTML mejora mucho más un website de lo que pocos se pueden imaginar… por eso lo contamos..





Dentro de las posibilidades… CSS 2 es bastante flexible, sobre todo por que nos permite mediante selectores crear un submundo de posibilidades de estilizar cosas de una página.





Utilizar el tag `Blockquote` para agregar una pizca más de semántica a nuestro contenido hace que todo tenga más vida, sobre todo visualmente, un bloque de texto con unos márgenes que dan una mejor sensación de puntualizar un comentario, una cita, una frase… por eso se ha creado…





Este tipo de efectos se pueden lograr de las formas más macabras, pero con un solo tag nos ahorramos unos cuantos bytes, y podremos tener los textos bien ordenados… como los tiene [Pedro](http://www.kusor.net), por ejemplo. Además si le agregamos la URL citando el texto, seguimos agregando más valor al hipertexto.





[Pedro](http://www.kusor.net) explica a la perfección el ejemplo, y él utiliza correctamente los blockquotes de la misma forma que yo los vengo utilizando hace largo tiempo…





Pero [Adrian Howalty](http://www.holovaty.com/blog/archive/2002/12/20/0454) ha descubierto cómo mejorar el uso del Blockquote agregando “etiquetas” dinámicas cuando se cita un blockquote. Aplicar este efecto es cuestión de aprender a usar la propiedad “cite”.





Por mi parte he tenido que hackear un poquito este ejemplo para hacer mis blockquotes un pocos al estilo minid.net, controlo márgenes y he cambiado cosas de lugar que desde luego pueden ver en la hoja de estilos de minid.net. Otras de las cosas que uno tiene que tener en cuenta para la cosa valide es que los Blockquotes tienen que contener tags `&lt;p&gt;`,  `&lt;ul&gt;` ó `&lt;ol&gt;`, de lo contrario el ejemplo nunca validará ante la W3C.





Un ejemplo práctico de cómo se ve un blockquote:





> Un buen diseño incluirá los objetivos del sitio, las necesidades de los usuarios, una estructura y navegación intuitivas y una estética que refleje la importancia e influencia de esta institución.





Si tienes un navegador muy bueno como Mozilla, Phoenix, Netscape,  Opera, podrás ver una URL y una línea que hace referencia a la cita, pero hay un bug, es que éste texto no puede seleccionarse con el puntero del mouse, seguramente éste bug se corregirá en las versiones que vengan de Mozilla.





El tío de [paranoidfish](http://www.paranoidfish.org/boxes/2002/12/20/), ha hecho referencia a esto, y ha hecho el mismo efecto pero usando JAVASCRIPT, de ésta forma se pueden hacer citas de una forma con mucho usabilidad, como por ejemplo usar una palabra ”[SOURCE]” o ”[ORIGEN]”, de esta forma no se tiene que poner una URL muy larga, que en muchos casos son imposibles de recordar, suplantando ésto por una pequeña frase linkable a ese texto.




 
