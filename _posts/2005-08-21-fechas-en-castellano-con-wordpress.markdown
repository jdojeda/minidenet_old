---
comments: false
date: 2005-08-21 20:53:49
layout: post
slug: fechas-en-castellano-con-wordpress
title: Fechas en castellano con Wordpress
wordpress_id: 2507
categories:
- Internet
---

Estos días, como que me reventó el cerebro tener que aprenderme todas las cosas que hace Wordpress y quiero decir que, sin amigos como los que tengo, no estaría todavía escribiendo en este _weblog_.





Hace poquito tiempo, un usuario me dejó un comentario que despertó curiosidad:





> No sería mejor que diga “Sábado, 20 de Agosto, 2005″? Es una pequeña sugerencia que realizo. Para cambiarlo solo es necesario cambiar el contenido del `date()`.





_Holy shit_ que bien que me siento estos días. Esta positividad la voy plasmando en las cosas que estoy trabajando y gracias a ello estoy aprendiendome todo el tema Wordpress con su base de documentacion, accesible para cualquiera que tenga internet, [Wordpress Codex](http://codex.wordpress.org) sería como la biblia de Wordpress, la Wikipedia del este CMS, está todo ahí. Sabido esto, manos a la obra.





No encontré la forma para escribir una fecha 20 de Agosto del 2005. Así que he recurrido a un amigo, en este caso Nicolás que me apuntó un dato interesante para lograr fechas más extensibles de lo que por defecto puedes aprender en el Codex:




    
    <code>&lt;?php comment_date('d \d\e F, Y') ?&gt;</code>





El primer caracter `d` imprime el día, en esta caso me devuelve los días en dos dígitos. Todavía estoy averiguando la forma de que me quede una fecha tipo 4 de agosto y no 04 de agosto como lo tengo ahora. Por alguna razón _peachepereana_, esta línea permite tener una fecha digerible en idioma castellano. Al parecer, los caracteres con las \\ se imprimen como si de texto o párrafos se tratara. O sea, que puedes hacer fechas más complejas que la que trae por defecto. En mi caso, puse entre el código `d` una porcioncita de código `\d\e` que cuando es procesada por PHP termina siendo la palabra “de″ en la página. Puedes poner lo que quieras: `\d\e\ \l\o\s` seguidos de un espacio y otro código sin \ para que active más funciones del Wordpress. Poco intuitivo al principio si no tienes conocimiento de PHP mínimos, pero con estos _tips_ la cosa cambia.





Si me ha servido a mí y me ha sacado de un apuro grande imagino que a muchos de los que usan Wordpress y no tenían ni puñetera idea como yo les servirá toneladas.





Dicho y hecho, _corta, pega y reutiliza_ ;).





#### Actualización





Ya me han dejado en los comentarios más pistas sobre el tema de la fecha. Lo mejor para nuestro caso es usar la función `j` en vez de `d` para que no nos devuelva el día con dos dígitos sino con uno. El ejemplo final _chachi_ quedaría así:




    
    <code>&lt;?php comment_date('j \d\e F, Y') ?&gt;</code>





_Bon profit_
  *[PHP]: PHP: Hypertext Preprocessor (HTML-embedded scripting language)
