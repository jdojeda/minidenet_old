---
comments: false
date: 2004-10-16 14:05:00
layout: post
slug: '%c2%bfno-lo-sabias-em%e2%80%a6-em%e2%80%a6-em%e2%80%a6'
title: ¿No lo sabías? Em… em… em…
wordpress_id: 2038
categories:
- Internet
---

![Las listas UL](http://www.minid.net/images/ul-li-ul-li.png)Una de los problemas que se enfrenta un _cssdoka_ (practicante de CSS) es el uso de las medidas de tamaños para cualquier objeto. Una cosa interesante es que, por lo general en CSS existe una propiedad de herencia por defecto que afecta a ciertos objetos. Usando determinadas medidas como por ejemplo `px` (píxeles) no sufrimos ese tipo de problemas, pero cuando entramos en el campo de medidas relativas _si_.





Para ser más claro, vamos a un ejemplo que siempre ocurre utilizando el sistema `em`:





En el CSS:




    
    <code class="css">ul li {
    	font-size: .7em;
    	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    	color: #666;
    	}</code>





En el HTML:




    
    <code class="html">&lt;body&gt;
    &lt;ul&gt;
    	&lt;li&gt;Cocina
    		&lt;ul&gt;
    		&lt;li&gt;Cocina&lt;/li&gt;
    		&lt;li&gt;Nevera&lt;/li&gt;
    		&lt;li&gt;Mesa
    			&lt;ul&gt;
    			&lt;li&gt;Tabla&lt;/li&gt;
    			&lt;li&gt;Patas&lt;/li&gt;
    			&lt;li&gt;Barniz&lt;/li&gt;
    			&lt;/ul&gt;
    		&lt;/li&gt;
    		&lt;/ul&gt;
    	&lt;li&gt;Sala de estar
    		&lt;ul&gt;
    		&lt;li&gt;Televisión&lt;/li&gt;
    		&lt;li&gt;Mesa de comer&lt;/li&gt;
    		&lt;li&gt;Sillón&lt;/li&gt;
    		&lt;li&gt;Revistero&lt;/li&gt;
    		&lt;/ul&gt;
    	&lt;li&gt;Baño
    		&lt;ul&gt;
    		&lt;li&gt;Bañera&lt;/li&gt;
    		&lt;li&gt;Inodoro&lt;/li&gt;
    		&lt;li&gt;Espejo&lt;/li&gt;
    		&lt;li&gt;Perchas&lt;/li&gt;
    		&lt;/ul&gt;
    	&lt;li&gt;Pasillo&lt;/li&gt;
    &lt;/ul&gt;
    &lt;/body&gt;</code>





Esto que ven es una lista descriptiva de los elementos más básicos de una casa, tampoco entren en detalle con la información, sino que deben concentrarse más en cómo se ordenan las listas. Originalmente, uno tiende a listar los objetos en una lista o, tiende a no encerrar una lista dentro de un `&lt;li&gt;`, sino que lo hace fuera de éste, cosa que está mal.





Cuando se aplica el CSS al código HTML que les muestro, recibirán [este efecto](http://www.minid.net/files/ejemplo1.html). Ese efecto es común como había explicado. Se debe principalmente a **la herencia de los los mismos**, el primer `&lt;ul&gt;` tiene un grupo de `&lt;li&gt;` de `.7em` de grande, mientras que no se ubiquen más `&lt;ul&gt;`, el valor no irá decreciendo.





_¿Cómo solucionamos esto?_ Si los valores con `em` pueden incrementarse y reducirse entonces tenemos que crear una regla en nuestro CSS que nos permita controlar dicho patrón. En mi experiencia he descubierto que no hace falta tocar el código HTML para arreglar eso, sino que aplicando esto que he descubierto se soluciona todo y además no hay que hacer más que un ejemplo: una regla que se recíproca:




    
    <code class="css">ul li {
    	font-size: .7em;
    	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    	color: #666;
    	}
    	
    ul li ul li {
    	font-size: 1em;
    	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    	color: #666;
    	}</code>





_¿Chachi eh?_ Pues, en el segundo ejemplo pueden ver que el valor no es `.7em` sino `1em` que es un equivalente ideal para que se multiplique mientras sigamos agregando más `&lt;ul&gt;` dentro de `&lt;li&gt;`.





Esto es sin duda genial, ya que no me hace falta definir más clases para un tercer caso (ver ejemplo):




    
    <code class="css">ul li {
    	font-size: .7em;
    	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    	color: #666;
    	}
    	
    ul li ul li {
    	font-size: 1em;
    	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    	color: #666;
    	}
    	
    ul li ul li ul li {
    	font-size: 1em;
    	font-family: Verdana, Geneva, Arial, Helvetica, sans-serif;
    	color: #666;
    	}</code>






Aquí la última regla se selección (`ul li ul li ul li`) supuestamente se creó en caso de que hayan anidadas tres `&lt;ul&gt;` unas dentro de la otra, pero esta regla es redundante ya que con la segunda el patrón se vuelve uniforme, o sea que **no hace falta** repetir más reglas que la primera y la segunda.





Un ejemplo claro de la regla bien aplicada lo pueden ver [en esta página](http://www.minid.net/files/ejemplo2.html) y también [otro ejemplo](http://www.minid.net/files/ejemplo3.html) mezclando `&lt;ol&gt;` y `&lt;ul&gt;` entre sí.





¡Ahora que se dispare la experimentación e imaginación!
  *[HTML]: Hipertext Markup Language
  *[CSS]: Cascading Style Sheet
