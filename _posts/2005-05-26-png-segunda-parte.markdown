---
comments: false
date: 2005-05-26 10:28:00
layout: post
slug: png-segunda-parte
title: PNG, segunda parte
wordpress_id: 2429
categories:
- Internet
---

![PNG HOWTO SERIES](/images/articulos/png-howto.png)Quería corregir algunas cosas escritas en el post de PNG que valen la pena. Primero agradecer el _feedback_ de la gente, que escribe sin parar sobre el tema y me hace sugerencias. Segundo, quería hacer unas correcciones con respecto a la definición de los gráficos GIF.





GIF todavía tiene patentes ligadas al algoritmo de compresión LZW. IBM e Unisys habían patentado este algoritmo y el mismo caduca en diferentes fechas en diferentes regiones. Del sitio GNU se puede uno enterar mejor:





> There are no GIFs on the GNU web site because of the patents (Unisys and IBM) covering the LZW compression algorithm which is used in making GIF files. These patents make it impossible to have free software to generate proper GIFs. They also apply to the compress program, which is why GNU does not use it or its format.





Aquí explica la primera razón  por la cual la gente de GNU no usa gráficos GIF es porque contiene patentes pendientes. Seguimos con el texto y podemos leer más razones que se adentran en el tema:





> Unisys and IBM both applied for patents in 1983. Unisys (and perhaps IBM) applied for these patents in a number of countries. Of the places whose patent databases we were able to search, the latest expiration date seems to be Friday 11 August 2006. Until then, anyone who releases a free program for making GIF files is likely to be sued. We don't know any reason to think that the patent owners would lose these lawsuits.





Resumiendo lo que cuenta: Queda una patente por expirar el día viernes 11 de agosto del 2006. Aquí explican todo más enfocado a la creación de programas de código libre que a páginas web, pero en parte también podría aplicarse.





Entonces, la idea inicial era usar un formato libre, potente y flexible. GIF no lo es, aunque tiene ciertas ventajas como la masificación de programas que soportan la creación/edición del mismo. PNG de todas formas no es un formato que está soportado por una pequeña lista de programas sino que la gran mayoría de los grandes del software tienen este soporte por defecto.





#### Otro problema en Internet Explorer





Encontré un comportamiento raro de una imagen PNG. Utilizando un PNG de 24 bits, este cuando se visualiza en IE sale alargado verticalmente. Me fijé en mi código y vi que no había agregado el tamaño de la imagen en la etiqueta, con lo que me dio a pensar que reaccionaría de forma rara. Cambio eso y tampoco, se sigue viendo ensanchado. Como último recurso, monto en CSS una regla que dice que tamaño tendrá esa imagen y tampoco.





Busqué media hora por las entrañas de Google y nada. Si alguien tiene una solución a esto y lo quiere compartir bienvenido sea.





De momento pensé que tenía que volver al GIF para hacer algo, pero recordé que codificando en PNG 8 bits va igual de bien, eso sí… nada de canales alpha.


 


#### Diferencias notables





PNG es un formato que no tiene pérdidas de ningún tipo, por lo que su tamaño puede ser un poco más grande que GIF y JPG, pero las cuantiosas ventajas las hemos mencionado en el post anterior [PNG le nouveau plaisir](http://www.minid.net/articulos/2406/png-le-nouveau-plaisir).





Una cosa a destacar es que existen dos tipos de PNG, uno de 24 bits y otro de 8 bits. El primero parece más un JPG que el segundo que da resultados más parecidos al GIF. Para que os deis una idea, hice una prueba comparando una imagen sobre un fondo para que observéis la diferencia y los pesos:






![Gráfico](/images/articulos/png-transparencia.png)






Como verán, el gráfico se puede observar como actúa el PNG con transparencias. Como observan, el PNG a 24 bits soporta las transparencias independientemente de fondo u objeto que se situé en la capa inferior. En cambio el GIF al ser exportado no reacciona de la misma forma. Otro punto interesante es que en este ejemplo marca el peso de ambas imágenes en la misma situación. El GIF pesa 1,60 KB y no soporta nada más mientras que el PNG de 24 bits soporta las transparencias a la perfección y pesa apenas 2,54 KB. En las pruebas comparé el GIF con el PNG de 8 Bits, obteniendo el mismo resultado gráfico pero a nivel peso el PNG ganó en ahorro: 1,15 KB.





Esto por supuesto varía dependiendo la imagen pero queda bastante a descubierto el mito de que los GIFs pesan menos que los PNG.





Yo recomiendo a todo el mundo que no se olvide de este formato y que lo implementen en todos los proyectos webs que puedan, ya que te da una flexibidad increíble si trabajas con CSS, XHTML, AJAX, etc.
  *[GNU]: 
  *[JPG]: Joint Photographic Experts Group
  *[GIF]: Graphic Interchange Format
  *[LZW]: Lempel Ziv Welch
  *[PNG]: Portable Network Graphics
  *[XHTML]: Extended HiperText Markup Language
  *[etc.]: Et Cetera
  *[CSS]: Cascading Style Sheets
