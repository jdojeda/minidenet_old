---
comments: false
date: 2003-12-30 16:12:13
layout: post
slug: css-3-propuesta-para-el-mdulo-de-bordes
title: 'CSS 3: propuesta para el módulo de bordes.'
wordpress_id: 1414
categories:
- Internet
---

El otro día estaba viendo las especificaciones del W3C, y me preguntaba que tan difícil es crear mejores opciones para graficar con CSS 3. Ya que es una especificación alpha/beta, porque no, sugerir algunos cambios, más que cambios son sugerencias, sobre todo relacionadas con los bordes.





[Los estilos de bordes de CSS 2.1](http://www.w3.org/TR/CSS21/box.html#value-def-border-style) comentan que existen 10 tipos de bordes:





Cuando el ejemplo es `border-style: &lt;em&gt;atributo&lt;/em&gt;;` para:





  


  1. none


  2. hidden


  3. dotted


  4. dashed


  5. solid


  6. double


  7. groove


  8. ridge


  9. inset


  10. outset





De estos 10 tipos de bordes nos abre un nuevo mundo para decorar nuestros elementos en pantalla, algunos funcionan de forma grandiosa en Mozilla, otros funcionan para el culo en Internet Explorer y otros quizás ni funcionen, es por eso que como la mayoría de los fabricantes de navegadores están a tiempo de salir soportando gran parte de CSS 3, sería ideal que se acordaran de los bordes ya que son importantes para la decoración y creación de formas visuales.





He pensado en dos cosas, una es agregar más tipos de bordes que luego graficaré y la otra es crear una especie de background para los bordes, no es mala idea, uno crea un patrón y lo reproduce sobre una línea de ciertas características, esto eliminaría todo tipo de límites.





Si bien crear patrones y reproducirlos sobre un contorno pueden lograrse mediante la propiedad [`Background-color`](http://www.w3.org/TR/CSS21/colors.html#propdef-background-color) creo que no es el método adecuado, además limita a gastar la posibilidad de tener un borde personalizado y un fondo con imágen, además de crear divs dentro de otras divs o viceversa.





Método uno: más opciones de bordes





&Eacute;ste método pretende agregar más opciones mediante una palabra clave como lo es hidden, dashed, groove, el sistema de modificación de los mismos trabajaría de la misma forma que lo hace en CSS 2.1.





Un ejemplo sería:





> <code>div#left {
>     border-right: 1px &lt;strong&gt;solid&lt;/strong&gt; #999;
>     width: 70%;
>     float: left;
>     }</code>





Donde tenemos solid podría ir cualquier otro tipo, en este gráfico represento los que he ideado:





![Bordes](http://www.minid.net/images/dotted.png)





Método dos: una propiedad llamada border-background:





Esta propiedad daría a un border la posibilidad de expandir un patrón de imagen, dado que esto requiere de un URI y un tamaño, podríamos decir que una imagen de 2&#215;2 píxeles se movería hacia el primer sentido disponible, si es una caja, la dirección del patrón sería &uarr; &rarr; &darr; y &larr;, mientras que si es horizotal sólo hacia la derecha, también es importante el factor tamaño, si el patrón mide 2  (alto) x 2 píxeles (ancho) ese alto debe estar premeditado en un valor de escala este caso 2, quedando así un ejemplo:





> <code>div#left {
>     border: url(/images/border1.png) &lt;strong&gt;2px&lt;/strong&gt; &lt;em&gt;solid #999;&lt;/em&gt;
>     width: 70%;
>     float: left;
>     }</code>





La primera pauta es el URI de la imagen a reproducir url(/images/border1.png), la segunda es el alto del patrón 2px y el resto es el agregado por sí la imagen no está disponible aparecería una línea sólida de 2px.





Yo creo que uno de los valores de CSS es que uno puede crear formas alternativas utilizando los elementos que tiene, pero a mi forma de ver están muy limitados…




 
