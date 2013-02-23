---
comments: true
date: 2008-07-07 02:28:07
layout: post
slug: framework-css-y-xhtml-para-desarrollar-en-iphone-y-ipod-touch
title: Framework CSS y XHTML para desarrollar en iPhone y iPod Touch
wordpress_id: 3155
categories:
- Apple
---

Hoy es un día especial: **he lanzado mi primer framework.** Sí, ¡le gané a la procastinación! Los desarrolladores interesados en hacer aplicaciones web para el iPhone pueden a partir de hoy descargar el Universal iPhone UI Kit y empezar a utilizarlo.





Hice [un proyecto en Google Code](http://code.google.com/p/iphone-universal/), lo licencio con AGPLv3 y pueden ver [un snapshot online](http://www.minid.net/iphone/) o bien ir a la página del proyecto en Google Code, bajar [una versión en archivo ZIP](http://code.google.com/p/iphone-universal/downloads/list) o bien [utilizar el SVN](http://code.google.com/p/iphone-universal/source/checkout) para descargar siempre lo último que se va mejorando y agregando.



<!-- more -->



### Bendita sea Apple y su documentación





La documentación que uno encuentra para desarrollar una aplicación web y que se visualice en un iPhone es básica, muy básica y a nada de estar leyendo empiezas a pasar páginas. Hay poco código de ejemplo y se limita a las convenciones del aparato. Una vez digerido el PDF que te da Apple, me fui a la lista de ejemplos que te ofrecen. La verdad, y espero que no les parezca prepotente, yo me esperaba algo mejor.





A nivel HTML, bueno, Safari para iPhone soporta unas cuantas cosas, casi no tendréis muchos problemas. El verdadero poder está en CSS. Utilizando lo último en CSS3 puedes crear auténticas virguerías con Safari, y lo mejor de todo es que te podés olvidar de Internet Explorer, Firefox, Opera. Ahora entiendo por qué los desarrolladores de juegos para consolas duermen y follan mejor que los de PC.





Siguiendo con el tema, los ejemplos provistos por Apple eran escuetos. Yo me imaginaba algo más completo, como lo que hay en la zona de desarrollo de aplicaciones para iPhone. Me encontré con dos ejemplos de listas que al visualizarlas en el iPhone no se veían igual que las otras, así que me rayé completamente. Miré el código de cómo planteaba Apple los listados y me deprimí: código HTML al mejor estilo sopa de elementos y CSS para nada resumido. En resumen: hacerme mi propio código.





### Construcción de un Framework





La idea básica del Framework es que cualquier persona –con conocimiento en el área de programación web– pueda hacer una aplicación basándose en unos patrones de diseño. En el ejemplo básico que proveo, podréis acceder a una variedad grande de ejemplos de interfaz del actual iPhone.





La elección del código es algo difícil. Primero, porque uno no siempre hace algo para que el resto pueda desarrollar. Uno en general hace lo que le conviene a uno, para utilizar en ese momento. Por ello, escoger la semántica adecuada, no es tarea fácil. Segundo, la utilización de nombres de clases y la cantidad hace que el proyecto se complique: y si hago esto así; y si mejor opto por usar más cosas; etc. En fin, es algo complicado, sobre todo porque uno quiere utilizar la menor cantidad posible de código. Hay que tener en cuenta que, cuanto más obligue a un desarrollador a escribir, más se alejará el concepto de Framework, transformándose algo totalmente opuesto. Por ello, los ejemplos, no tienen documentación alguna, la única documentación es abrir un navegador y mirar el código fuente. El código está lejos de estar completamente optimizado. Tengo conciencia que puedo mejorar más reglas, producto de las prisas, pero estoy seguro que no tardarán en llegar las mejoras. Ya me ha pasado con otros proyectos de código abierto que hice, los cuales tuvieron una acogida abrumante. Espero, y tengo ilusión que mi framework le haga la vida fácil a todo desarrollador.





### Cómo empezar a utilizarlo





Para empezar, forma más fácil es abriendo la carpeta y visualizar `index.html` en el simulador del iPhone o bien, en el iPhone. La mejor forma es instalar MAMP (muy fácil) y teniendo el iPhone o iPod Touch a mano accediendo por IP es algo muy cómodo para trabajar. También podéis utilizar el simulador, pero, en algunos casos, podréis notar unas diferencias mínimas entre el iPhone físico y el simulador.





Copiad o hacer `svn co` en dicho directorio y navegar el contenido como si fuera una aplicación de iPhone. Prestad atención a los enlaces, sobre todo, en la sección de listas informativas o bien en el módulo de formularios. Dentro de toda la investigación también están los ejemplos de lanzadera, por ejemplo, para abrir el teclado numérico, de teléfonos, buscador, de texto normal o bien, cosas como href=”tel:” o map=”map:” y al lista sigue. El código se explica bien y sólo.





Para empezar vuestra aplicación, simplemente diagramadla en papel siguiendo las recomendaciones de Apple para desarrollar aplicaciones y luego crear las vistas en HTML valiéndose de los ejemplos que hice. De momento, es sólo eso, pero pueden salir algunas otras cosillas, dado que en el iPhone estas cosas no ocurre, nada mejor que testear todo en un iPhone.





### Qué se viene





Tengo muchas ganas de incorporar un módulo de animación que interactúe con las estructuras sin cambiar una pizca del código. Así sería lo menos intrusivo posible y mejor organizado a nivel patrón de eventos.  La incorporación de más elementos de interfaz del teléfono, más ejemplos de listados, una plantilla maestra en PSD para poder personalizar los botones y más cositas para divertirse haciendo apps para éste teléfono.





Ah, y se aceptan todo tipo de donaciones.






![](https://www.paypal.com/es_ES/i/scr/pixel.gif)

