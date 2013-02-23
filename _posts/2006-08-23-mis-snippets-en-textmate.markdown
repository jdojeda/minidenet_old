---
comments: false
date: 2006-08-23 12:18:27
layout: post
slug: mis-snippets-en-textmate
title: Mis snippets en TextMate
wordpress_id: 2935
categories:
- Internet
---

Les dejo una recopilación de mis snippets favoritos en TextMate. Para los que no están enterados de que es TextMate, [es el mejor editor que existe para Mac OS X](http://www.minid.net/2006/01/21/textmate-un-viaje-de-ida/), pero de lejos. Para editar un snippet o crear uno basta con ir al menú `Bundles > Bundle Editor` y ahí escoger la opción `Edit Snippets`. Saldrá esta ventana con [una lista impresionante de Snippets](http://www.flickr.com/photos/minid/223280948/) que se activan de diferente forma, sea por comandos de tabulador o combinaciones de teclas:





![TextMate Bundle Editor](http://static.flickr.com/94/223280948_af77eab471.jpg)



<!-- more -->



Luego, escogemos la sección HTML y donde dice `Table (table)` pegamos este snippet que me hice para generar tablas de forma automática:




    
    <code>&lt;table border="${1:0}"${2: cellspacing="${3:0}"}${4: class="${5:some_text}"}&gt;
    	&lt;thead&gt;
                   &lt;tr&gt;
                           &lt;th&gt;${6:some_text}&lt;/th&gt;
                           &lt;th&gt;${7:some_text}&lt;/th&gt;
                           &lt;th&gt;${8:some_text}&lt;/th&gt;
                   &lt;/tr&gt;
           &lt;/thead&gt;
           &lt;tbody&gt;
                   &lt;tr&gt;
                           &lt;td&gt;${9:some_text}&lt;/td&gt;
                           &lt;td&gt;${10:some_text}&lt;/td&gt;
                           &lt;td&gt;${11:some_text}&lt;/td&gt;
                   &lt;/tr&gt;
           &lt;/tbody&gt;
    &lt;/table&gt;</code>





Para no quedarnos cortos a la hora de generar nuevos TH, TR y TD les dejo también los otros snippets que he programado, simplemente seleccionando uno de la lista y presionando el ícono ++ podemos duplicar uno hecho y pegar dentro lo que queramos:





Para los TH de nuestra tabla:




    
    <code>&lt;th&gt;${1:one_text}&lt;/th&gt;</code>





Para los TR de nuetra tabla:




    
    <code>&lt;tr&gt;
    	&lt;td&gt;${1:one_text}&lt;/td&gt;
    	&lt;td&gt;${2:one_text}&lt;/td&gt;
    	&lt;td&gt;${3:one_text}&lt;/td&gt;
    	&lt;td&gt;${4:one_text}&lt;/td&gt;
    	&lt;td&gt;${5:one_text}&lt;/td&gt;
    &lt;/tr&gt;</code>





Para generar más TD en nuestra tabla:




    
    <code>&lt;td&gt;${1:one_text}&lt;/td&gt;</code>





Uno que uso seguido:




    
    <code>&lt;div class="clear"&gt;&lt;/div&gt;</code>





No se imaginan la cantidad de snippets que tengo ya para acelerar el trabajo y estar más cómodo. Por ejemplo, este es un snippet que me hice, que se activa escribiendo alink+Tab:




    
    <code>&lt;a href="${1:some_link}"${2: class="${3:class_name}"}${4: title="${5:some_title_here}"}${6: rel="${7:start/chapter/section/category}"}&gt;${8:some_text_here}&lt;/a&gt;</code>





Genera un enlace con todos sus atributos, uno los va borrando o cambiando mediante tabulador… va perfecto.





¿Tienes snippets que sean de interés? ¡Compártelos!



