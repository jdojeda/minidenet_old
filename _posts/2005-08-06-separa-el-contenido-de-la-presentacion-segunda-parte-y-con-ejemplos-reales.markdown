---
comments: false
date: 2005-08-06 06:33:00
layout: post
slug: separa-el-contenido-de-la-presentacion-segunda-parte-y-con-ejemplos-reales
title: Separa el contenido de la presentación, segunda parte y con ejemplos reales
wordpress_id: 2489
categories:
- Internet
---

El otro día conversábamos sobre la metodología de _la separación del contenido de la presentación_. Es una metodología ideal para cualquier proyecto de Internet. No digo que sea obligatoria, sino más bien: _recomendable_. Entre la charla, salieron comentarios que invitaban a mostrar una aplicación real de esta metodología. Según algunos, era imposible tocar algo sin tocar XHTML. Volviendo al tema, quería mostrarles una aplicación de esta metodología, en donde no se toca ni un bit de XHTML y en pocos minutos tenemos, prácticamente otro sitio. No estoy hablando de un _blog_, sino, en este caso, de [Mercadelia](http://www.mercadelia.com), un sitio que es real, con tablas, imágenes, texto, listas, etc.





Lo que a continuación van a ver es, en primicia, un adelantillo del nuevo Mercadelia que tiene unos ajustes necesarios para ir más suave de lo que va ahora. Esta nueva versión no estrena diseño nuevo o distinto, más que ajustes del código XHTML y una hoja de estilos renovada, esto le da al sitio una flexibilidad increíble. Prueba de ello es el nuevo soporte multidiomas, que permite mezclar varias lenguas en un mismo documento. Más adelante les contaré como, sólo quiero mostrarles cómo queda el sitio supuestamente traducido al árabe:





![Captura](http://www.minid.net/images/27.png)





![Captura](http://www.minid.net/images/28.png)





_¿En árabe?_ Quizás se imaginan que tuve que hacer todo esto de nuevo o modificar cientos de líneas de código XHTML y CSS, pero no. Esto fue posible gracias a la estricta separación del contenido de la presentación. No se molesten en traducir el árabe, porque fue cortado y pegado de la Wikipedia, de esta manera he podido probar el comportamiento tanto del UTF-8 como del CSS. No hay imágenes más que el logotipo y las esquineras, el resto es pura magia del CSS.





Pueden ver los ejemplos a tamaño real en Flickr de [la página de inicio](http://flickr.com/photo_zoom.gne?id=31507298&size=o&context=photostream) en árabe y la página de [publicar un anuncio](http://flickr.com/photo_zoom.gne?id=31507316&size=o).





Esto, aunque parezca un trabajo de chinos, me ha tomado sólo 15 minutos. Simplemente leí unas instrucciones disponibles del atributo direction: en la especificación de CSS y todo ha ido de maravillas. Un par de ajustes al CSS y sólo quedó referenciar esta plantilla con la base de datos y las cadenas de traducción. Al ver el resultado tenía la mandíbula por los suelos, que ahorro de curro, de retoques que te puedes ahorrar pensando un poquitín el asunto. La magia de todo esto lo hizo un comando:




    
    <code lang="en">* {
    		direction: rtl;
    		}</code>





Luego, quedaron ajustes tontos. Lo que antes estaba con `float: right;` ahora es `left` y así con todos márgenes y divs flotantes. En 10 minutos ya podía ver los resultados. No me hubiera imaginado hacer esto con tablas a piñón. Por eso, cada vez que me sale una cosa así cada vez  me convence más de que hay que ponerse _tozudo con este tema_ hasta que le hayamos sacado toda la savia al sitio y sea 100% contenido por un lado y presentación por el otro.





No hay más ciencia. No hay miles de _hacks_ raros o teorías que las expuestas. Sólo cabe: un código limpio, bien organizado, un CSS bien programado y tendrás asegurado el tema.





Cualquier pregunta, ya saben, usen los comentarios.
  *[XHTML]: Extensible Hypertext Markup Language
  *[etc.]: Et Cetera
  *[CSS]: Cascading Style Sheet
