---
comments: false
date: 2001-11-10 22:42:12
layout: post
slug: un-interesante-truco-con-css
title: Un interesante truco con CSS
wordpress_id: 52
categories:
- Internet
---

El que esta en el tema **sabe** que los tags `&lt;abbr&gt;`, `&lt;acronym&gt;`, ya casi no se siguen soportando por los nuevos navegadores. El tema es que estos tags son muy útiles.





Por ejemplo la función de estos es de desplegar una etiqueta amarilla éstas sirven mucho para indicar fuentes o comentarios sobre ese texto… recuerden que la gente utiliza mucho el puntero del mouse para leer y guiarse… este pequeño hack lo que hace es _darle vida_ de nuevo al esos “tags” y agregarle uno nuevo para los nuevos navegadores que directamente no lo ejecutan.





El código que debemos escribir en nuestra plantilla de hojas de estilos es de la siguiente manera:




    
    abbr, acronym, .help {
              border-bottom: 1px dashed #000;
              cursor: help;
              }





Acabamos de escribir ese módulo de CSS, al cual le agregamos una clase .help, eso va en tu plantilla de CSS, luego muy fácil el procedimiento es usar el tag **&lt;abbr&gt;**, **&lt;acronym&gt;** o la clase **.help**, la clase ”.help” tiene que ser usada siempre con un tag `&lt;span class="help" title="…"&gt;`.





Un punto muy interesante, existen dos opciones:







  1. Querer escribir un contenido más semántico.


  2. Que no te interesen la semántica.





### Si te interesa la semántica





Si te interesa la semántica, es un camino muy recomendado (por la W3C) donde todo el contenido debe ser cuidadosamente catalogado, y enriquesido con “Markup” especial o sea debe estar confeccionado de una forma que el texto contenga “tags” que definan y clasifiquen el contenido para que las personas y determinados programas escritos por el hombre permitan realizar tareas de selección, corrección, búsqueda de texto de una forma más inteligente…





Para ello, necesitamos conocer cuáles son las opciones, y estas opciones son usar el tag `&lt;abbr&gt;` y el tag `&lt;acronym&gt;`, para aprender el buen uso de estos deben leer un post que he escrito sobre [el uso de las abreviaturas y los acrónimos](http://www.minid.net/archives/000934.php).





### Si no te importa respetar los estándares, y tampoco te importa la semántica:





Usando el class .help en el código XHTML debemos escribir esto:




    
    El otro d&iacute;a me compr&eacute; un 
    &lt;span class="help" title="Perro"&gt;can&lt;/span&gt;.





### El resultado:





El otro día me compré un can.





Agregamos una funcionalidad más a nuestro website, soportando los estándares y sin modificar los GUIs estándares… que lo disfruten y exploten al máximo.




 
