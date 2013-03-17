---
comments: true
date: 2007-11-22 04:05:18
layout: post
slug: firefox-3-beta-1-con-mejoras-visuales
title: Firefox 3 Beta 1, con mejoras visuales
wordpress_id: 3124
categories:
- Internet
---

Ayer descargué [Firefox 3 Beta 1](http://developer.mozilla.org/devnews/index.php/2007/11/19/firefox-3-beta-1-now-available-for-download/). Entre las nuevas cositas que trae, hubo una que me dejó con la boca abierta: el motor de _rendering_ nuevo que tiene. Bueno, parecerá un detalle estúpido, pero Firefox se puso las pilas en Mac y en PC, al menos, por lo que pude comprobar.





Uno de los mejores ejemplos, además de las tipografías, es obligar al navegador a dibujar un objeto. Bien, eso es fácil, vamos a cualquier documento HTML que tengamos a mano y hacemos una capa con un elemento `DIV` que tenga color de fondo. Firefox dibujará en este caso, un cuadrado. Bien, ese cuadrado se verá igual de cantos, color, superficie en todas las versiones. Hasta aquí, no hay misterio. Pero si en un ataque de ira, obligamos a Firefox a dibujar _una curva_ veremos las diferencias, incluso con Safari.





¿Cómo hacemos dibujar una curva a Firefox o Safari? Bien, sobre la misma capa que hemos creado, utilizando las propiedades de CSS, _propietarias_ –de momento– de cada navegador podemos hacer que cada esquina de la capa tenga un radio definido. Por ejemplo, en Firefox o en cualquier navegador con engine Gecko para obtener un radio de 10px en cada esquina deberíamos escribir la propiedad `–moz-border-radius`. En Safari: `–webkit-border-radius`, o bien, si usamos Webkit: `border-radius`. Tu ejemplo podría ser algo así:




    
    <code>div.prueba {
    	padding: 25px;
    	background: #36c;
    	color: #fff;
    	-moz-border-radius: 1em;
    	-webkit-border-radius: 1em;
    }</code>





Bien, ahora en tu documento HTML escribes este ejemplo y dentro del elemento `BODY`, como corresponde, un elemento `DIV` con una clase `prueba`, deberían salirte redondeados. Bien, ahora, si estáis viendo Safari, veréis que los cantos son suaves, dibujados a la perfección. En Firefox 2, las esquinas redondeadas se verán pixeladas, en muchos casos, mal dibujadas. En firefox 3, se verá igual de bien que en Safari.





Aquí les dejo unas capturas que hice de los botones de acciones que diseñé para [Tractis](http://www.tractis.com):





![Botones Tractis](http://www.minid.net/images/botones-tractis.png)





Como podrán observar, el primer botón se pueden notar los pequeños desperfectos en las esquinas debido al motor de rendering que usa Firefox 2. No soporta _antialiasing_ supongo. En cambio en el segundo botón, sí trae esta novedad y se ve muchísimo mejor que el primero. El tercer y último botón de la imagen, fue capturado con el navegador Safari, el cual realiza un buen trabajo también en las esquinas redondeadas. Miren el asunto más de cerca:





![Zoom de las esquinas redondeadas de los botones de Tractis](http://www.minid.net/images/zoom-de-las-esquinas-redondeadas-de-los-botones-de-tractis.png)





Esto sin duda le agrega otro nivel de detalle y más posibilidades para diseñar utilizando estándares sin tener que recurrir a realizar este tipo de detalles en Photoshop. Por mi parte estoy contento como se verá dentro de poquito mi último trabajo ya que le he puesto bastante garra a este tipo de detalles y me deprimía un poco ver que Firefox no me mostraba los detalles tan bonitos como en Safari, pero ya pueden ver como quedan los botones en la versión 3. Ahora sólo falta que implementen la propiedad de CSS de `text-shadow` correctamente, como lo tiene Safari y seré el desarrollador más feliz que exista.





Enhorabuena para Firefox.
