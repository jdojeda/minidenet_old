---
comments: false
date: 2005-02-24 12:35:00
layout: post
slug: '%c2%bfmayor-o-menor-%c2%bfmejor-o-peor'
title: ¿Mayor o menor? ¿Mejor o peor?
wordpress_id: 2313
categories:
- Internet
---

_¿Chico o grande? ¿mejor o peor? ¿más o menos?_ Éstas son algunas de las preguntas que posiblemente nos hacemos a seguido los diseñadores semánticos a la hora de crear interfaces. Es simple el problema pero de solución nada fácil de descubrir. Ahora miren esta imagen:





![Sopa de etiquetas](/images/tagssoup.png)





Como veréis, [Flickr](http://www.flickr.com) te permite ordenar y clasificar imágenes usando etiquetas. Cuando llevas unas 200 fotos comienzas a ver una gran cantidad de etiquetas usadas en diferentes álbumes de fotos, así que esta pantalla como bien se ve todo te indica de una forma práctica las imágenes que más he marcado con determinadas palabras. Aquí en Flickr la importancia se basa en la cantidad de veces que tu has elegido, en otro sitio se podría implementar una escala de otra forma: un listado con etiquetas ordenadas `&lt;ol&gt;`, un listado de etiquetas `&lt;ul&gt;`, `&lt;dl&gt;`, de la A a la Z de la Z a la A, por números romanos, por orden de aparición. Pero si lo que queremos es hacerlo dentro de un elemento en línea ¿cómo lo hacemos? Usando `&lt;small&gt;` y `&lt;big&gt;`.





Bien, en su momento `&lt;small&gt;` y `&lt;big&gt;` fueron para mí meras etiquetas de presentación con una utilidad nada práctica, pero luego de [leer este excelente y corto post](http://blog.fawny.org/2005/01/23/weighted/) de Joe Clark (que habla para los que saben y no repara en lo didáctico) caí en la cuenta que estas dos etiquetas tán inútiles son ¡extremadamente útiles!





Es interesante el concepto, usar estar etiquetas para marcar importancias visuales. Si una palabra es más importante que otra independientemente del resto, con la etiqueta `&lt;span&gt;` no podremos marcarla. Esto último sólo serviría para marcar gráficamente cómo sería esa palabra. Ahora, dos de tres palabras son importantes pero la primera más que el resto se pueden repetir las etiquetas una dentro de otra, ya que son elementos en línea y lo permite.





Existe un dilema en este punto. Esto semánticamente es correcto sólo en sistemas gráficos y no auditivos. Para un caso auditivo podemos hacer dos cosas: especificar una hoja de estilos aural que diga small tanto y big tanto otro ó implementar `&lt;em&gt;` y `&lt;strong&gt;` uno dentro de otro como el ejemplo que he especificado. Las etiquetas small y big _son_ auténticas etiquetas de presentación.





> Weighted lists _are_ presentational and my solution remains the best available. Evidence that it is the best can be derived from the fact that nobody implements it.





_Flickr_ usa una etiqueta `&lt;a&gt;` para marcar la importancia entre palabras clave dentro de un elemento de bloque como puede ser `&lt;div&gt;` o un `&lt;p&gt;`, donde habrá una sopa de letras quizás sin sentido al oído también:




    
    <code>&lt;a href="/photos/tags/brasil/" style="font-size: 15px;" class="PopularTag"&gt;brasil&lt;/a&gt;&nbsp;</code>





Si aplicamos lo que dijo Joe, una sopa de letras podría quedar así:




    
    <code>&lt;big&gt;&lt;big&gt;&lt;big&gt;Barcelona&lt;/big&gt;&lt;/big&gt;&lt;/big&gt; 
    &lt;big&gt;brasil&lt;/big&gt; 
    &lt;small&gt;&lt;small&gt;basílica&lt;/small&gt;&lt;/small&gt; 
    &lt;big&gt;&lt;big&gt;casa&lt;/big&gt;&lt;/big&gt; 
    &lt;small&gt;construcción&lt;/small&gt; &lt;small&gt;&lt;small&gt;colon&lt;/small&gt;&lt;/small&gt; 
    &lt;big&gt;car&lt;/big&gt;
    &lt;big&gt;&lt;big&gt;coche&lt;/big&gt;&lt;/big&gt; 
    &lt;small lang=en&gt;geek&lt;/small&gt; 
    &lt;big lagn=fr&gt;couchê&lt;/big&gt;</code>





Bien no sólo tiene una base y estructura semántica sino que también es aprovechable con CSS a niveles increíbles. Por ejemplo, podemos definir reglas que en determinado nivel de importancia el valor cambie de color, tipografía, estado, márgenes imagínense la cantidad de aplicaciones que puede tener esto.





Haced pruebas y comentarme que tal han ido, yo estoy tratando de experimentar otras aplicaciones para estas etiquetas.





Que aprovechen.
