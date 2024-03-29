---
comments: false
date: 2005-10-31 18:01:16
layout: post
slug: las-caras-ocultas-de-la-accesibilidad
title: Las caras ocultas de la accesibilidad
wordpress_id: 2642
categories:
- Internet
---

![Accesibilidad](/images/accesibilidad.png)Estos días fueron motivos para crear entradas en las bitácoras sobre las nuevas páginas institucionales, como la página del [Palacio de la Moncloa](http://www.la-moncloa.es), [Gencat](http://www.gencat.net/) y [la página oficial de la gripe aviar](http://www.gripeaviar.es/). Todas ellas deberían cumplir las normativas mínimas de accesibilidad, estándares, etcétera. En efecto, de las tres mencionadas solo una se acerca a dicho estado. La página de Generalitat de Catalunya está hecha «por seres de otro planeta», como cuando se dice que uno ve la _tecnología que está delante de nuestro nivel de comprensión_. Así es, una página bastante equilibrada por donde la mire, tanto gráficamente como de código. Es estándar, no valida de momento por un error tonto, pero eso no es motivo de desaprobación.



<!-- more -->



Cuando me topo con artículos de accesibilidad o estándares suelo leer de forma remarcada que «la página no valida» o «no es accesible AA». Cabe destacar la cantidad de veces que he dicho que el validator del W3C no es un sello de calidad. Cualquier test automático  no es sello de calidad, no asegura el sano juicio del diseñador, programador, escritor. Es sólo una referencia, una ayuda para dar un resultado positivo cuando se quiere alcanzar la accesibilidad. Por eso, cuando escriban sobre estos temas, y protesten porque se han molestado en darle una mirada al TAW, siempre procuren realizar análisis más profundos sobre el tema. Como cuento en esta nota, la accesibilidad no pasa por correr un test automático. Prueba de ello, visiten [la página de la gripe aviar](http://www.gripeaviar.es) y [la página de la Generalitat de Catalunya](http://www.gencat.com). Pásenle un test de accesibilidad web y comparen (aunque sea inútil):







  1. Ambas páginas pasan el nivel A de accesibilidad.


  2. La página de la gripe aviar tiene 8 errores automáticos en la prueba AA y la página de la Gencat tiene 11.


  3. De los 8 errores automáticos que tiene la página. Todos son obvios, y se pueden solventar poniendo apenas dos etiquetas: `&lt;h1&gt;`, `&lt;p&gt;` y con ayuda de CSS quitarle todos los atributos de presentación de las etiquetas que contienen el Flash. Esto daría una página válida AA.


  4. La Gencat tiene 11 errores. La mayoría son comunes como por ejemplo el uso de `&lt;b&gt;`, que puede ser reemplazado por `&lt;strong&gt;`. Solucionando estos descuidos la página sería válida en un nivel de conformancia AA.





Ahora, lo más gracioso de todo esto –que demuestra que tengo razón y que muchos que trabajan de esto también– es que, haciendo la prueba básica de accesibilidad, la página de la gripe aviar es muda. Sí, _muda_. No se oye más que el título de la ventana activa. Mientras que la página de la Gencat tiene un grado mínimo de audibilidad asegurado. ¿Se dan cuenta que los tests automáticos no siempre te ofrecen la seguridad de que algo es accesible?





La accesibilidad no es un tema de pasar un chequeo automático y listo. Esto se trata de estar incansablemente en todos los detalles. Disponer de un grupo de mínimo de personas especializadas trabajando en el mantenimiento o desarrollo de estos aspectos. Conocer todas las deficiencias existentes y cómo afecta al uso del ordenador. Conocer las herramientas, conocer los lenguajes, conocer los dispositivos físicos de usuario, conocer todas las convenciones y más. Existen muchos puntos a comentar sobre el tema. Uno de ellos es, la utopía de _la accesibilidad perfecta_, un tema del que me gustaría debatir más adelante. No, _no existe_ tal perfección. No existe un sitio que sea perfecto al ciento por ciento. Podrá validar, podrá pasar los tests de accesibilidad TAW pero quizás no podrá afrontar otros problemas que si tienen que ver con la accesibilidad. La accesibilidad, en mi punto de vista, es un conjunto de trabas que están impuestas con o sin voluntad. En el 99% de los casos estas trabas están puestas sin conciencia de la gravedad. Este conjunto de trabas las he catalogado en cinco puntos:







  1. Accesibilidad comunicativa.


  2. Accesibilidad Económica.


  3. Accesibilidad motriz.


  4. Accesibilidad intelectual.


  5. Accesibilidad tecnológica.





Estos cinco puntos engloban en mi opinión las trabas más importantes que afectan al status quo en lo que respecta la accesibilidad en la web.





#### Accesibilidad comunicativa (cómo las personas podrían ver, oír, hablar, escribir)





La accesibilidad comunicativa, la que nos permite intercambiar información (hablar, escribir, escuchar, ver) es la primera de todas. Ésta, sin duda alguna, está cubierta apenas hoy en día en la web. Una persona ciega (total y parcialmente) tiene muy pocas posibilidades de disfrutar de internet con deficiencias visuales, por ejemplo. Ésta deficiencia está impuesta por una variedad de problemas. Algunas de estas deficiencias están relacionadas a las deficiencias de visualización como el _daltonismo_, la _dislexia_ y otras, que impiden ver la información en el espectro de colores correspondiente. Para estos casos existen una gran variedad de opciones, desde lectores de pantalla para los que tienen problemas visuales, hasta navegadores que soportan un medio braile para los invidentes y sordos.





#### Accesibilidad Económica





No está exento de todos estos problemas la economía de un ser. Sin acceso monetario, éste se ve imposibilitado para disfrutar del acceso al conocimiento. Sea cual sea su situación, tenga o no deficiencias físicas, mentales, éste siempre tiene dificultades –incluso de una gravedad notable– si van acompañadas de alguna deficiencia física. Un ejemplo de accesibilidad –y bastante irónica– son los lectores de pantalla, o como la gente erróneamente denomina: _navegadores para ciegos_. En el mercado existen varias opciones para utilizar un lector de pantalla y de ésta forma poder leer páginas e interactuar con ellas. Contrariamente a las personas que no tienen problemas económicos, ni físicos, ni mentales, los que deben utilizar lectores de pantalla deben abonar un precio. Éste precio es elevadísimo, comparado con lo gratuito y amplio que ofrece el mundo tecnológico para los que no padecemos esto. Para que os deis una idea de lo que hablo, un lector de pantalla JAWS cuesta hoy en día unos 900 dólares (744 euros) cuando un navegador decente se puede obtener de forma gratuita. El IBM Hompage Reader cuesta alrededor de 142 dólares (y éste se limita casi a leer páginas no a controlar el SO). Window-Eyes es un lector popular y bastante completo, incluso diría que mejor que JAWS en muchos aspectos y cuesta 795 dólares (658 euros). ¿Es irónico no? Para saltar este paso, los sistemas operativos deben centrarse en este punto y poner más esfuerzo. En Macintosh, existe una tecnología que permite aumentar el grado de accesibilidad pero no está muy popularizada. Además se ha de disponer de un equipo, de un precio relativamente elevado para el que no tiene un buen sueldo y tener la última versión de Mac OS X para disfrutarlo en plenitud. Pero vamos, hablamos de un sector reducido de gente usuaria de Mac. En Windows nos quedamos en pañales si buscamos soluciones eficaces para estos temas. Hay que pagar sí o sí.





#### Accesibilidad motriz





La accesibilidad motriz afecta de varias formas en el uso del ordenador. Imposibilitando parcialmente al usuario de utilizar dispositivos de control como, el ratón o un teclado normal, trackpads y otros. Para ello, se han de disponer herramientas especiales, como el reconocimiento de voz (experimental y cara), teclados especiales, ratones especiales (Stephen Hawking ha escrito varios libros con un dispositivo parecido a un ratón con dos botones) que ayudan a las personas a introducir determinados comandos. Estos comandos ayudan a moverse entre objetos de interacción en la página. Es por eso, que si ponemos una película en Flash como la de la página oficial de la gripe aviar, será imposible navegarla ya que no incluye la interacción necesaria para realizar scroll entre las noticias y otros comandos. Ése fue un ejemplo entre los cientos que puedes anotar.





#### Accesibilidad intelectual





Sin dinero, sin comunicación no podremos estudiar, ni siquiera auto-formarnos en los mejores casos, seremos meros analfabetos, [acibernetos](http://www.minid.net/2003/11/03/aciberneto/) o simples discapacitados intelectuales. Existen muchas personas que no saben leer y escribir en el mundo. Es triste que no puedan acceder a una educación. Ya sea, por motivos económicos, porque deben pasar un nivel de aprendizaje malo, burocrático y competitivo. Pero existen otro tipo de trabas que fomentan a este tipo de accesibilidad. Son trabas culturales, como el idioma o las costumbres religiosas. Me enfocaré de forma resumida en la primera. Los idiomas son la base de nuestra comunicación. Ésta no siempre está a la mano de todos. Es probable que una persona que no sepa inglés no sepa entender ciertas palabras para desarrollar una tarea simple como un empty cache o un paste in place. Toda esta terminología en general produce dudas y dificulta la accesibilidad en un sitio.





#### Accesibilidad tecnológica





Esta accesibilidad como contaba en unos párrafos más arriba de esta nota, afecta de forma directa a los elementos, dispositivos y programas que están relación con la tecnología. Esta tecnología es sin dudas inaccesible aún en el siglo 21. Para acceder a tecnología hace falta economía. También hace falta desarrollo: navegadores potentes, inteligentes, lectores de pantalla gratuitos y fáciles de usar. En este tipo de accesibilidad es la que de alguna forma u otra ignoramos casi por completo. Ya sea porque no han aceptado pagarte ese «agregado» en tu presupuesto, lo que invita a tachar los puntos de accesibilidad en los desarrollos que haces, como también, cosas curiosas del mundo tecnológico: el targeting. Siempre se desarrolla en base a un target (destino), una masa en concreto de la gente. Esto elimina de entrada una gran porción de población. Se desarrollan sitios para gente que tenga instalados versiones de sistemas operativos comerciales y actualizados. Que corran sobre pantallas de buena resolución y además que dispongan de ciertas características como: memoria, espacio en disco, versiones de navegadores, etc. Se sobreentiende de entrada que la gente debe disponer de una línea de acceso a internet de alta velocidad, lo que induce a hacer páginas cada vez más complejas, pesadas. La misma informática está condicionada por un mercado selecto: gente con dinero, con cierto conocimiento tecnológico, cultural y además sin discapacidades físicas. Existen detalles y curiosidades que he ido anotando desde que trabajo en Cataluña: no existe o al menos nunca he encontrado librerías con voces sintetizadas para usarlas en los lectores habituales de pantalla. ¿Se imaginan entrar a la web de la Generalitat de Catalunya con un lector de pantalla y no comprender una palabra en catalán? Pues es la realidad amigos. Por eso, hacer una página correctamente en HTML o XHTML no garantiza que cualquier discapacitado visual disfrute o se informe en idioma que no sea castellano de la península o latinoamericano. En esta parte queda mucho por hacer.





Otra curiosidad para agregar al tema. Tanto que habla la gente de lectores de pantalla, ¿se han puesto a usar uno? ¿Saben lo que toma aprender a usar un JAWS u otro similar? Usar JAWS requiere de más de 90 horas de capacitación. JAWS tiene más de 100 tipos de accesos de teclado, y no es algo tan simple como usar el navegador (que incluso poca gente sabe tenga o no una discapacidad). En mi caso, por citarme, tuve que estar varios días acostumbrándome a usar el lector de pantalla para comprender cómo funciona todo. Navegar y usar el sistema operativo es complejo, lento y engorroso. Incluso más cuando se navega una página que no cubre esta posibilidad de que una persona pueda entrar a curiosear con un lector de pantalla. Llevo más de 5 años usando lectores de pantalla y me conozco todas las paridas. Créanme no es fácil, imaginen lo que le cuesta a una persona que apenas tiene conocimiento aprenderlo todo. Imaginen lo que cuesta si tiene una deficiencia. Es todo un proceso.





#### Conclusiones





Todas estas condiciones ayudan a que una simple página tenga más posibilidades de fallecer ante la subida al trono de la accesibilidad. Existen soluciones a medias para solventar todo este tipo de trabas pero si nadie toma conciencia el camino a la accesibilidad será el mismo: se hace si se necesita, si cabe o si no cuesta dinero.





¿Qué se debe hacer en estos casos? Primero poner los pies en la tierra. Mirar al alrededor y comprobar que no es fácil hacer algo accesible, universal sin tener en cuenta estos aspectos y el conocimiento necesario. Segundo, conocer las tecnologías y aplicarlas debidamente. De nada sirve programar una sopa de etiquetas que validan en un test de código o de accesibilidad cuando uno abriendo un lector de pantalla tarda más de 10 minutos en terminar de oírla. Programar con un código limpio no arruina el nivel de accesibilidad pero tampoco ayuda como todos imaginan. Tener en cuenta cómo navega la gente con discapacidad, conocer cada impedimento, conocer cada lector de pantalla. Desarrollar pensando en las trabas y no en como conformar a nuestros egos, aunque ello cueste quitar esa introducción bonita y hollywoodense en Flash tan cineasta.





En los días que vendrán, publicaré más datos sobre accesibilidad. Cada nota dedicada a un tema específico y no tan general como del hoy. Todo producto de los trabajos que he realizado y que estoy realizando ahora.
  *[W3C]: Word Wide Web Consortium
  *[TAW]: Test de Accesibilidad Web
