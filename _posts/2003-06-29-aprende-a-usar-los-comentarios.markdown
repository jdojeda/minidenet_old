---
comments: false
date: 2003-06-29 16:08:38
layout: post
slug: aprende-a-usar-los-comentarios
title: Aprende a usar los comentarios
wordpress_id: 1030
categories:
- Internet
---

Este post lo quiero dedicar a los comentarios, no se trata de aprender a escribir bien, sino de aprovechar las ventajas de usar los comentarios, aquí en este post puedes hacer tu pruebas, para ello les enseñaré a usar “textile”.





Para ello utilizaré un ejemplo de texto que he escrito:





> Encara que el XHTML Bàsic pot ser utilizat tal com és – un
> 
> 
 llenguatge XHTML simple amb text, enllaços, i imatges.





### El XHTML en los comentarios





Se puede usar XHTML en los comentarios sin problema, pero hay casos en los que textile hace las cosas mejor, por ejemplo a la hora de hacer `blockquotes`, listas numeradas, listas desordenadas.





### Elementos en línea





Los elementos en línea son los “tags” que van dentro de un elemento de bloque, son todos aquellos tags que van entre los párrafos de texto, las imágenes, etc. Aquí vamos a ver un ejemplo de como aplicar un elemento en línea.





Hacer negritas en los comments





Para hacer negrita en los comentarios, debes encerrar la palabra o frase con dos asteríscos pegados a cada extremo de esta forma ******palabra******:




    
    Encara que el XHTML B&agrave;sic pot ser utilizat tal com &eacute;s - un&lt;br /&gt;&lt;strong&gt;&lt;strong&gt;&lt;/strong&gt;llenguatge XHTML simple&lt;strong&gt;&lt;/strong&gt;&lt;/strong&gt; amb text, enlla&ccedil;os, i imatges.





El efecto deseado quedaría como esto:





> Encara que el XHTML Bàsic pot ser utilizat tal com és – un **llenguatge XHTML simple** amb text, enllaços, i imatges.





En la tabla de formatos en línea de textile están todos los ejemplos de los códigos para escribir con más opciones.





### Elementos de Bloque





Los elementos de bloque son aquellos que tienen su propio bloque de espacio en un document HTML, por ejemplo los párrafos, los blockquotes, las listas enumeradas, éstos si o si deben estar crearse con dos enters de espacio entre elementos.





Los bloques de texto “blockquotes”





Y esta es una de las cosas que más me agrada usar, poder “cuotear” un texto de otro comentario o de un post que he escrito anteriormente. para ello, hay que escribir el código **bq.** al comienzo de cada frase y es importante dejar un espacio en blanco luego del punto del código **bq.**:




    
    &lt;strong&gt;bq. &lt;/strong&gt;Encara que el XHTML B&agrave;sic pot ser utilizat tal com &eacute;s.





Esto daría como resultado:





> Encara que el XHTML Bàsic pot ser utilizat tal com és.





Una cosa importante, MT reconoce los “enters” que tu haces en el formulario de comentarios, por eso para hacer quotes en perfecto estado, debes hacer que todo el quote siga por una línea, esto sucede por que cuando uno copia algo a veces ese texto tiene carácteres ocultos con información de ruptura de líneas. Ya sabes, bq. más espacio y el texto bien limpito sin espacios raros y el blockquote quedará de maravillas.





Los párrafos





MT y Textile reconocen automáticamente ambos métodos, cuando ustedes escribir párrafos pueden hacer un `enter` y cuando MT procese ese formulario va a poner un `&lt;br /&gt;`, eso por lo general no está bien, para eso debes darle **dos veces `enter`** en vez de uno.





De esta forma textile y MT van a formatear bien los párrafos y no van a quedar mega-bloques de texto como muchas veces pasa.





Las listas





Otra de las cosas interesantes de Textile es la posibilidad de escribir listas ordenadas `&lt;ol&gt;` o listas desordenadas `&lt;ul&gt;`, hacer listas con textile es más fácil que escribiendolás en HTML, por el simple hecho de no tener que escribir más que dos caracteres, las listas ordenadas se escriben con el caracter **#**:





En el comentario escribir un párrafo normal, y luego darle dos veces al `enter` y ahí escribir esto:





> Encara que el XHTML Bàsic pot ser utilizat tal com és:
> 
>   


> 
> # Amb text  

# Enllaços  

# Imatges





El resultado final es:





> Encara que el XHTML Bàsic pot ser utilizat tal com és:
> 
>   


> 
> 

>   1. Amb text
> 

>   2. enllaços
> 

>   3. Imatges
> 






Si en vez de usar **#** usamos un asterisco ***** vamos a obtener una lista desordenada:





> Encara que el XHTML Bàsic pot ser utilizat tal com és:
> 
>   


> 
> * Amb text  

* Enllaços  

* Imatges





El resultado final es:





> Encara que el XHTML Bàsic pot ser utilizat tal com és:
> 
>   


> 
>   


>   * Amb text
> 

>   * enllaços
> 

>   * Imatges
> 






### ¿Dónde puedo aprender más sobre textile?





Hay dos fuentes, una es la página del creador de Textile Brad Choate en su página dedicada [al textile 2.0](http://www.bradchoate.com/mt/docs/mtmanual_textile2.html), el otro lado interesante para nuestra cultura hispano parlante es el weblog de Pedro Palazón Candel A.K.A [Kusor](http://www.kusor.net) donde podemos encontrar la especificación [MT-Textile 1.0 en castellano](http://kusor.net/mt-static/docs/mt_textile_es.html).





Ahora los invito a que hagan sus propias pruebas en este post comentando y probando los códigos de textile de muchas formas.




 
