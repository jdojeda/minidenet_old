---
comments: false
date: 2003-09-07 18:30:00
layout: post
slug: navegacion-invisible-mejorar-el-estandar-de-las-barras-de-navegacion
title: 'Navegación invisible: Mejorar el estándar de las barras de navegación'
wordpress_id: 1154
categories:
- Internet
---

¿Conducir un avión sin controles? Suena peligroso, pero la navegación invisible es una buena alternativa de usabilidad, sobre todo de información, dado que se crea un estándar lógico de navegación.

Desde los tiempos remotos de HTML existe un elemento que es tan vital como la sal lo es para la barbacoa, me refiero al elemento @@, éste te permite crear sistemas de navegación "invisibles", no tiene efecto a la vista en una página, pero sí es visible desde el navegador, o a motores de búsqueda u otro programa que los aproveche.

bq. Para comprender este artículo tu nivel de HTML debe ser alto, también debes tener bastante conocimiento de organización y estructuración de sitios web.

Uno puede crear una arquitectura perfecta con estos elementos, dando la posibilidad al usuario de poder descubrir áreas del sitio _especiales y de vital uso_, como por ejemplo en minid.net estuve haciendo pruebas toda la semana sobre este elemento y he configurado unas cuantas cosas, pueden ver el resultado final observando esta captura:

![nav-invi.png](http://www.minid.net/images/nav-invi.png)

"El elemento link":http://html.conclase.net/w3c/html401-es/struct/links.html#edef-LINK permite a navegador como Mozilla u Opera montar una navegación súper útil, en tal caso se puede explotar este valioso recurso para organizar la navegación esencial de sitios como por ejemplo sitios bancarios, gubernamentales o portales (odio esa palabra pero bueno…)

Esto realmente pueden empezar a degustarlo con un agente de usuario (un navegador) como Mozilla, Opera. El cual tienen "la opción de activar las barras de navegación":http://www.minid.net/archivos/nav-invi-moz.gif, por defecto siempre están ocultas pero se pueden activar permanentemente o activarlas cuando utilicemos en nuestra páginas elementos @@.

bq. *Tip:*
Yo utilizo Mozilla para visualizar los contenidos de una barra de navegación invisible, activando esta barra cada vez que aparezcan los elementos @@, la mejor forma de llevar esto a cabo es yendo al menú ver &rarr; Barra de Herramientas &rarr; Barra de navegación del sitio &rarr; Mostrar sólo cuando sea necesaria. De esta forma esta barra no molesta ni ocupa espacio.

h3. Navegación estándar

Muchas empresas, tienen sus propios sistemas de navegación, totalmente rebeldes, como es el caso de este sitio, donde yo impongo mis "etiquetas" mi arquitectura de la información, lo cual lamentablemente a veces hace bastante complejo entender a simple vista como es un sitio o donde encontrar algo vital, de hecho hay sitios donde se inventan "innovadores" modelos de navegación, tan abstractos como los sitios en Flash, DHTML, entonces para complementar algo tan impropio o anti-estándar podemos utilizar la navegación invisible.

El primer paso es comprender que la navegación invisible es la mejor forma de estandarizar contenidos, dado que entregamos la información de la misma forma y en el mismo lugar que otros sitios, haciendo que el usuario se acostumbre a mirar siempre en el mismo lugar.

También este tipo de navegación ayuda mucho a los motores de búsqueda, dado que la información semánticamente está ya definida "este link pertenece a un glosario", es fácil para un motor de búsquedas u otro programa jugar con esta información… esto es uno de los valores de la semántica (que pocos conocen)

En la especificación del "HTML 4.01":http://html.conclase.net/w3c/html401-es/cover.html podemos encontrar la definición del elemento link traducida por ??Juan Ramón Pozo Coronado??:

bq. Este elemento define un vínculo. A diferencia de @@, sólo puede aparecer en la sección @