---
comments: false
date: 2003-04-02 17:16:07
layout: post
slug: semntica-parte-2
title: 'Semántica: Parte 2'
wordpress_id: 904
categories:
- Internet
---

Continuando con [la serie de artículos](http://www.minid.net/archives/cat_articulos_de_minid.php) donde explico [cómo voy mejorando minid.net](http://www.minid.net/archives/000940.php) a partir de semantizar el contenido, hoy quiero contarles sobre las URL, que en base es un punto clave para la semántica en la web.





Para el que no sabe lo que es la semántica, aquí la definición cortesía de [diccionarios.com](http://www.diccionario.com/index.phtml?diccionario=dgle&query=sem%E1ntica&once=1):





  

Semántica

    1 _f._ Parte de la lingüística que estudia la significación de las palabras.
  







En la web la semántica actua de la misma forma, en ciertos casos, hay que especificar qué significa una palabra.





Un punto clave del proceso de semantizar minid.net son los enlaces, los cuales tienen atributos que nos ayudan a tener un link semantizado al 100%. Un enlace está compuesto por muchos atributos de los cuales unos sirven como “comandos” (por ejemplo el atributo `href="…"`) y otros sirven para “relatar” un poco de lo que ese enlace es en verdad (por ejemplo el atributo `title="…"`)…





Aquí un ejemplo de un enlace normal, como lo haríamos normalmente en nuestras páginas:





`&lt;a href="http://www.minid.net"&gt;mini-d&lt;/a&gt;`





El resultado de ése código en una página sería:





[mini-d](http://www.minid.net)





Al parecer para los que “saben escribir código HTML” esto no es ninguna ciencia, pero en realidad, para los dispositivos el enlace antes programado solamente es un comando, o sea que lo que interpreta un navegador o un sintetizador de voz es “cuando alguienhaga click en este enlance ir a esta URL” en este caso `www.minid.net`.





Pero podemos mejorarlo, por supuesto que esto toma tiempo y trabajo, pero de ahora en más puedes escribir tus posts utilizando éste método que explico a continuación:





El tag `&lt;a&gt;` contiene muchos atributos de los cuales utilizaremos -en el caso de escribir un post- ciertos atributos, éstos son `hreflang="…"`, `lang="…"`.





El primer atributo `hreflang="…"` especifica el lenguage del enlace, por ejemplo si tenemos que enlazar directamente a una dirección que está en inglés debemos especificar `hrelang="en"`, el apartado “en” pertenece a la especificación ISO para definir los idiomas, en este caso “en” símboliza “english”.





Se puede especificar mucho más, mientras más, va a ser mejor. Por ejemplo, yo puedo enlazar una página que está escrita en inglés canadiense, el cual puede diferir del inglés norteamericano, entonces tenemos que agregar el otro par de [identificadores ISO](http://www.loc.gov/standards/iso639-2/langcodes.html) especificando el país.





Recuerden que esto se arma de esta forma se arma: `hreflang="[idioma]-[pais]"`.





`hreflang="en-ca"`





Esto no afecta a nuestro enlace visualmente, _esto es semántica_, recuerden eso.





De modo que si queremos enlazar un sitio web por ejemplo, como sabemos el lenguage de la página? La página está en inglés americano o inglés británico? pero no sé que inglés es… podemos ir a la página y si usamos mozilla por ejemplo haciendo click derecho en la misma página sale el menu donde debemos escoger “propiedades”, esto despliega [una pequeña ventana](/images/study/lang-properties.png) con un poco de información sobre el lenguage de ese sitio–en este caso el mío por ejemplo.





De este modo cuando sabemos en qué idioma está escrita la página, podemos escribir el link de esta forma:





`&lt;a href="http://www.google.ca" hreflang="en-ca"&gt;Google&lt;/a&gt;`





También los enlaces tienen propiedades de idiomas, usando el atributo `lang="…"` de la misma forma que lo usamos con `hreflang="…"`, vamos a especificar en este caso, a qué idioma pertenece la palabra que estamos enlazando en nuestro código, de modo que [si enlazamos una palabra como BlogShares](/images/study/lang-properties-2.png), vamos a ver que el nombre es inglés americano por que el creador es norteamericano… podemos aplicar la regla de usar `[idioma]-[pais]` o solo especificar el idioma.





De este modo cuando sabemos en qué idioma está escrita la palabra, podemos escribir el link de esta forma:





`&lt;a href="http://www.google.ca" hreflang="en-ca" lang="en"&gt;Google&lt;/a&gt;`





En este caso, Google es una palabra inglesa, puede ser americana, en ese caso podemos especificar `en-us` ó `en` solo:





`&lt;a href="http://www.google.ca" hreflang="en-ca" lang="en-us"&gt;Google&lt;/a&gt;`





Así queda nuestro enlace armado… usamos `hreflang="en-ca"` para indicar que el contenido de esa página de Google está en idioma “Inglés/Canadiense” y además para indicar que la palabra “Google” es una americanismo y por ende está en inglés americano hemos puesto también `lang="en-ca"`.





Usar links de esta índole, agregan un valor incalculable e inapreciable a simple vista o incluso en el momento, pero a largo plazo (en Internet puede “largo plazo” puede ser una semana o 1 mes o más) pueden dar muy buenos resultados, imaginen que los buscadores indexaran exactamente “esos enlances en inglés” que se encuentran en tu página de idioma castellano y luego si alguien en Google por ejemplo busca algo en inglés puede ir tu página en los resultados…





Falta algo más por explicar, y son los atributos `title="…"`. Los atributos `title` son meras explicaciones de un link, las cuales no tienen límites gramaticales como los atributos `lang` o `hreflang`. En idioma del barrio, puedes escribir lo que quieras hasta 255 caracteres -no estoy seguro- y creo que varía mucho dependiendo el navegador.





Yo les cuento cuál es mi punto de vista acerca de este atributo. &Eacute;ste podría tener más información de la que tiene ahora -una simple ventanita amarilla-, mucha gente me consulta sobre qué poner en el atributo title=””, qué seria lo correcto…





Algunas personas describirían un enlace de Yahoo como “Página del buscador Yahoo”, otras personas como yo ubican el título de la página (el contenido que va entre los tags `&lt;title&gt;`) por ejemplo “Yahoo!”. Yo creo que la mejor opción es catalogar los tipos de descripciones, por ejemplo ambos ejemplos que menciono arriba están bien, sólo que el primero está en castellano, y describe que se accederá a una página de un buscador llamado Yahoo, pero realmente no me parece que se escriban los title en castellano hacia una página inglesa. Yo creo que lo mejor es poner el título de la página de origen.





En estos casos, habrán páginas con títulos muy descriptivos, y otras con títulos como el de la página “Yahoo!” o el de “Google”.





Mi recomendación pueden ser dos: la antes mencionada copia del título original de la página ó poner la URL: descripción de la misma, muchas veces es efectivo cuando alguien lea el title salga a donde va esa URL.





Un ejemplo como lo hacemos en minid.net (va sin hreflang, lang por que el enlace es en castellano):





`&lt;a href="http://www.zonageek.com/blog/archivos/&lt;br /&gt;2003/03/27-132400.php" title="zonageek: blog: Rumores"&gt;&lt;/a&gt;`





Ahora un ejemplo de cómo hago un link en minid.net cuando quiero referenciar sobre un link particular dentro del mismo weblog:





`&lt;a href="http://www.minid.net/archives/001039.php" title="minid.net: No existen los weblogs en idioma castellano?"&gt;nota sobre weblogs&lt;/a&gt;`





Como pueden observar, el proceso puede ser largo, más si tienes un weblog que tiene más de 500 posts, pero miren el lado bueno de esto y es que _están haciendo las cosas bien_.





Para terminar un ejemplo completo, vamos a enlazar una página de una noticia de CNN, usando todos los atributos juntos:





`&lt;a href="http://www.cnn.com/2003/TECH/fun.games/&lt;br /&gt;04/01/splinter.cell.ap/index.html" hreflang="en" lang="en" title="CNN.com - Review: Splinter Cell lights up computer screen - Apr.  1, 2003"&gt;Splinter Cell&lt;/a&gt;`





Ahí lo hemos logrado, nuestro primer enlace semantizado 100%, con información de todo tipo, optimizado para buscadores, programas, motores en PHP.





Muy bien, este artículo se vuelve largo, pero interesante, créanme que cuando redescubrí estas características, me he vuelto loco por hacer todos los enlaces de esta forma, lo cual conlleva mi felicidad por tener un contenido rico en semántica.





Ahora nos queda  aprender cuándo aplicar estos super links con super atributos, si posees una página web que define en cada documento un lenguage, por ejemplo:





`&lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es"&gt;`





Con eso estamos definiendo el lenguage de toda la página entera, en minid.net si se fijan en el código fuente de la página comprobarán que existe tal tag luego del DTD.





Como HTML todos los elementos heredan ciertas propiedades, en este caso `lang="es"` todo el código que yo escriba incluídos enlaces serán por defecto enlaces con idioma  `lang="es"`, incluso ni hace falta ponerle a todos los tags a qué idioma pertenecen, sino que éstos se heredan automáticamente desde el tag `&lt;html&gt;`, por eso cuando escribimos enlaces a páginas en otro idioma debemos poner los atributos antes explicados.





De esta manera no hace falta ponerle otra vez `lang="es"` a cada enlace que hagamos a una bitácora en español.





Lo más complejo de entender de este tema es sinceramente cómo los elementos de HTML se heredan, para esto, deben mentalizarse que cada documento  de HTML [es un árbol de elementos](http://www.w3.org/TR/REC-CSS2/conform.html#img-doctree), en el sitio de la W3C pueden encontrar ejemplos de [cómo es un árbol de elementos de HTML](http://www.w3.org/TR/REC-CSS2/conform.html#doctree), el cual facilita la manera de crear selecciones en CSS.




 
