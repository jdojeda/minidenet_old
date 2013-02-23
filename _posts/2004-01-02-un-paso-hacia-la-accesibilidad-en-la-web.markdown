---
comments: false
date: 2004-01-02 13:24:00
layout: post
slug: un-paso-hacia-la-accesibilidad-en-la-web
title: Un paso hacia la accesibilidad en la web
wordpress_id: 1422
categories:
- Internet
---

En este cursillo, veremos de una forma didáctica como convertimos una página normal (HTML prehistórico y mal aplicado) a una página toda montada con XHTML, CSS y con un gran soporte de accesibilidad.





Este curso **pretende** introducir y ayudar a los desarrolladores a que puedan comprender **el verdadero valor de programar las páginas web** con funcionalidades extras "invisibles" a ciertos ojos, pero de gran ayuda visual para el resto de los usuarios. La falta de accesibilidad se puede paliar con pequeños toques de código HTML y abusando correctamente de CSS, obtieniendo de esta manera sitios de excelente calidad y de alto grado semántico.





Demás está decir que el ejemplo valida tanto para el [XHTML](http://validator.w3.org/check?uri=http%3A//www.minid.net/utilidades/lanacion/) como para la parte de [CSS](http://jigsaw.w3.org/css-validator/validator?uri=http%3A%2F%2Fwww.minid.net%2Futilidades%2Flanacion%2F).





> ##### Importante antes de continuar leyendo
> 
> El curso fue realizado tomando un ejemplo de la página accesibible del diario argentino LA NACION LINE - Sin barreras. Todo el contenido (texto e imágenes) son propiedad del mismo. _Éste no tiene ninguna relación con el autor de este artículo_, así mismo el autor ha tomado este ejemplo **como un buen ejemplo para mejorar**, la finalidad del artículo _no es ofender sino educar_. El código final, del curso está a total dispocisión de la gente, _es de uso libre y gratuito_.
> 
> 


> 
> Por un mundo más accesible.





#### ¿Cómo aprovechar el material de este artículo?





Si bien este artículo no es un manual detallando 250 pasos, etiqueta por etiqueta de HTML escrita, se detallan 7 u 8 pasos importantes, entre ellos, los primeros 5 tratan el proceso inicial por el cual se ha comenzado a hacer la página. El verdadero jugo del artículo está en el código escrito, donde se demuestra como están aplicados los conceptos, también tener en cuenta que muchas funcionalidades no están a la vista sino que son funcionalidades semánticas, por ejemplo que sólo se aprecian escribiendo aplicaciones que analícen contenido, o lectores de pantalla.





Debéis mirar el contenido de los ejemplos, permanentemente, en tal caso, mirar el ejemplo 8 que es el ejemplo más completo y se ven los resultados finales. Cualquier duda, sugerencia o corrección pueden utilizar el formulario de contacto.





Preguntas muy concretas sobre el artículo pueden ser formuladas utilizando el formulario de comentarios.





#### Paso 1: La página a convertir





Estuve buscando en la web, una página ideal para convertir de HTML arcaíco a XHTML/CSS, además agregarles dotes de accesibilidad, para ello, he revisado mi sitio en busca de referencias al tema y recuerdo una vez haber escrito [sobre el sitio LA NACIÓN LINE Sin Barreras](/archivos/categorias/accesibilidad/la_nacion_line_el_diario_en_la_web_sin_barreras.php), el cual es un sitio que pretende ofrecer **una entrada alternativa** a la gente con discapacidades, tomaré este ejemplo como material educativo, todo el código que verán es público, y el logo, contenido de la página de es de propiedad exclusiva de LA NACIÓN.






Esta página en cierta forma es el ejemplo ideal, por que tiene una estructura definida, me gusta la disposición de los elementos, y antes de escribir una línea de XHTML lo que haremos al principio será preparar **un espacio en nuestro servidor de trabajo**, para poder montar nuestra página ahi.





> ¿No tienes un servidor de trabajo? Puedes instalar [Apache](http://www.apache.org), [PHP](http://www.php.net) y [MySQL](http://www.mysql.com) si lo deseas, de esta forma podrás hacer pruebas en un ordenador local como si estuviera en un _servidor remoto_, si no tienes idea de cómo instalar todo esto, puedes pedirle ayuda algún colega que se dedique a la programación.





Una vez creado el espacio &mdash;mi ejemplo es http://lanacion.laptop&mdash; procedemos a la preparación lógica de cada proyecto. **Es bueno que pongáis orden desde un principio**, definan una estructura de directorios donde los archivos se irán guardando, no es una tarea difícil, cada proyecto web tiene una cantidad "x" de tipos de archivos, deben crear una carperta para las hojas de estilos `/css/`, otra carpeta para las imágenes `/images/`, una carpeta para los archivos de descripción larga `/longdesc/` y otra carperta para los "includes" `/inc/`.





Una vez funcionando el proyecto en el servidor, continuaremos con la estructura del XHTML principal.






#### Paso 2: La estructura del XHTML





Realizaré el ejemplo con PHP, así que el primer archivo que voy a crear se llama `index.php`, y lo guardaré en el directorio raíz `/` de la carpeta de proyectos. Para aprovechar que está en blanco, decidiré que tipo de [DTD](http://home.worldonline.es/jlgranad/xhtml/xhtml1.htm#strict) será la correcta, dado que será un sitio careciente de material gráfico, lo que procederé a elegir será la DTD estricta del XHTML 1.




    
    <code>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;</code>





> ##### Según la W3C todos los documentos XHTML…
> 
> Debe haber una declaración `DOCTYPE` en el documento antes del elemento raíz. El identificador público incluido en la declaración `DOCTYPE` debe hacer referencia a alguna de las tres DTD que se hallan en el Apéndice A usando el Identificador Formal Público correspondiente. El identificador del sistema puede ser modificado apropiadamente para reflejar convenciones de rango local.





Luego el **segundo paso importante** _es definir el idioma madre del sitio_, para ello pueden leer más acerca de esto en [25 errores comunes en la web: Error 3: Páginas sin el idioma especificado](/archivos/categorias/articulos_de_minid/25_errores_comunes_en_los_desarrollos_web.php#problema3) y luego de buscar en [la lista ISO 639-2 de idiomas](http://www.loc.gov/standards/iso639-2/englangn.html) configurar para el caso el idioma madre de la página, de modo que los sintetizadores se autoconfiguran para pronunciar en el idioma correcto. En este caso he visto que el correcto es `lang="es-ar"` por que el diario LA NACION escribe en idioma castellano propio de la Argentina.




    
    <code>&lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es-ar" lang="es-ar"&gt;</code>





Notar que como estamos hablando de XHTML tiene que llevar ambas declaraciones de idiomas, tanto en formato XML (`xml:lang`) y en formato HTML (`lang`), esto es una buena precausión y una linda _transición al futuro de XML_. Es obligatorio para que el documento valide contra los estándares.





Escribimos el resto de los tags para que conformen un documento, me refiero a agregar las cabeceras `&lt;head&gt;…&lt;/head&gt;` y dentro de ellas poner el tag del título `&lt;title&gt;…&lt;/title&gt;` luego procedemos con el cuerpo del documento `&lt;body&gt;…&lt;/body&gt;` y finalizamos por cerrar el tag `&lt;/html&gt;`. El documento final tiene que quedar así:




    
    <code>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;
    &lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es-ar" lang="es-ar"&gt;
    &lt;head&gt;
    	&lt;title&gt;LA NACIÓN ONLINE - Sin Barreras&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;&lt;/body&gt;
    &lt;/html&gt;</code>





Muy fácil. Ahora el segundo paso, agregar las estructuras lógicas del documento.





#### Paso 3: Agregar las estructuras lógicas del documento





Esta parte quizás no les sea familiar a muchos, pero los profesionales antes de escribir una línea de código c_omienzan a realizar una delimitación de zonas_ (utilizando la imagen modelo impresa en un papel y utilizando el boli) definiendo así _las estructuras lógicas de la página_.


 


Antes definir las áreas, les voy a contar como les llamo a estas áreas, primero están las áreas de primer nivel que contendrán en un segundo nivel las sub-áreas de segundo nivel, las de primer nivel únicamente "contienen" y "posicionan" mientras que las de segundo nivel modulan cada parte del contenido y le dan el aspecto gráfico y se posicionan respecto a sus pares. En la siguiente imagen de la página del diario la nación he marcado las zonas más importantes de la estructura a programar.





![Gráfico](/utilidades/lanacion/lanacio-1.png)






Las tres zonas más importantes ya fueron delimitadas. La zona 1 es _la cabecera_, la zona 2 es _el cuerpo de la página_ y la zona 3 es el _pie de página_. Luego en nuestra arquitectura de página tenemos que **crear esas zonas con divs**, primero pensaremos en los tres divs importantes, recordar que no utilizaremos tablas para armar la página web sino que utilizaremos etiquetas `&lt;div&gt;`. En el archivo `index.php` que tenemos entre los tags `&lt;body&gt;…&lt;/body&gt;` escribimos:





    
    <code>&lt;div id="header"&gt;&lt;/div&gt;
    &lt;div id="content"&gt;&lt;/div&gt;
    &lt;div id="footer"&gt;&lt;/div&gt;</code>





El primer `&lt;div&gt;` delimitará la zona azul (antes marcada como 1) y tendrá un identificador universal llamado "header", utilizo nombres en inglés por que así los nombres son más resumidos que en lengua castellana, pero en todo caso podéis hacerlo en castellano. El segundo `&lt;div&gt;` delimitará la zona roja, lo llamaremos "content" (contenido) y el último `&lt;div&gt;` que es el pie de página lo llamaremos "footer".





Una vez que tengamos el código montado, a simple vista no notaremos cambios notables si previsualizamos el contenido de la página. Este es el código resultado que deben tener:




    
    <code>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;
    	
    &lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es-ar" lang="es-ar"&gt;
    &lt;head&gt;
    	&lt;title&gt;LA NACIÓN ONLINE - Sin Barreras&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
    	&lt;div id="header"&gt;&lt;/div&gt;	
    	&lt;div id="content"&gt;&lt;/div&gt;	
    	&lt;div id="footer"&gt;&lt;/div&gt;	
    &lt;/body&gt;
    &lt;/html&gt;</code>





Con esto ya hemos terminado de delimitar las zonas más importantes de la página, luego dentro de las zonas iremos agregando parte por parte cada módulo que vayamos descubriendo, de forma ordenada y semántica.





Muy bien, ahora queda delimitar **las otras zonas disponibles**, las de segunda jerarquía en la página, para ello en nuestra hoja impresa vemos dentro de las tres zonas principales cuales son aquellas **zonas más grandes o las más generales**, yo en este modelo identifico 2 zonas, la de los menúes de navegación y la de los cuerpos donde se alojarán las noticias, estás dos zonas que hemos descubierto, se alojan directamente dentro de la zona 2 que anteriormente hemos definido como `&lt;div id="content"&gt;…&lt;/div&gt;`.





Estas dos zonas, la 3 y la 4, la dividiremos en dos divs más, dentro de la zona 2 como habíamos dicho antes… para ello dentro del div `&lt;div id="content"&gt;…&lt;/div&gt;` ponemos:




    
    <code>&lt;div id="left"&gt;…&lt;/div&gt;
    &lt;div id="right"&gt;…&lt;/div&gt;</code>





El código final de esta parte debería quedarles igual a esto:




    
    <code>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;
    	
    &lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es-ar" lang="es-ar"&gt;
    &lt;head&gt;
    	&lt;title&gt;LA NACIÓN ONLINE - Sin Barreras&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
    	&lt;div id="header"&gt;&lt;/div&gt;	
    	&lt;div id="content"&gt;
    		&lt;div id="left"&gt;&lt;/div&gt;		
    		&lt;div id="right"&gt;&lt;/div&gt;
    	&lt;/div&gt;	
    	&lt;div id="footer"&gt;&lt;/div&gt;	
    &lt;/body&gt;
    &lt;/html&gt;</code>





Con esto ya hemos terminado de delimitar las zonas más importantes de la página, luego dentro de las zonas iremos agregando parte por parte cada módulo que vayamos descubriendo, de forma ordenada y semántica.





#### Paso 4: El primer análisis de accesibilidad





Todo documento que tenga que ser accesible tiene que preveer algunos puntos importantes. Algunos de ellos son convenientes (depende el proyecto) y otros son casi obligatorios, lo primero a tener en cuenta es que _un discapacitado_ --cuando entra a una página-- tiene que leer todo el contenido, de hecho lo primero que lee **es el título de la misma**, éste proviene de la etiqueta `&lt;title&gt;`, luego pasa al contenido, es bueno que los primeros enlaces sean los más informativos posibles, es hora de poner los 3 enlaces más útiles para esta gente, como por ejemplo la página instructiva de accesibilidad del sitio, también la página de buscar es muy importante y la página de contacto para facilitar la comunicación entre lector y creador.





Para ello, debemos situarnos en la zona 1 la cual nombramos con `&lt;div id="header"&gt;…&lt;/div&gt;` y escribimos el siguiente código:




    
    <code>&lt;body&gt;
    	&lt;div id="header"&gt;
    	&lt;ul&gt;
    		&lt;li&gt;&lt;a href="#" rel="glossary" title="Lea las instrucciones sobre los comandos y las abreviaturas de este sitio" accesskey="i"&gt;Instrucciones&lt;/a&gt;&lt;/li&gt;
    		&lt;li&gt;&lt;a href="#" title="Busca en el sitio" accesskey="b"&gt;Buscar&lt;/a&gt;&lt;/li&gt;
    		&lt;li&gt;&lt;a href="#" rel="help" title"Para contactar con el editor del diario"&gt;Contactar&lt;/a&gt;&lt;/li&gt;
    	&lt;/ul&gt;
    	&lt;/div&gt;</code>





Muy bien, como veréis ya está montado el primer módulo de la página, compuesto por una lista desordenada, con tres enlaces, los más importantes, a los cuales he marcado con atributos `rel="…"`, `title="…"` y `accesskey="…"` para darle connotaciones semánticas a los mismos.





Para comprender lo programado, voy a explicar un sólo enlace de los tres programados, luego os dejo la posibilidad en la sección de "bibliografía" para que sigáis leyendo sobre atributos, enlaces, XHTML y CSS.





El primer enlace hace referencia a las instrucciones, de modo que tiene que ser la primera palabra que el discapacitado debe escuchar, acto seguido ese enlace tiene ciertas connotaciones semánticas como la relación a un Glosario `rel="glossary"` y un título más descriptivo.





El atributo `rel="glossary"` me permite indicar que en esa página existe un tipo de glosario de términos propios del diario, secciones, y teclas de acceso útiles para navegar.





El atributo `accesskey="LETRA o NUMERO"` le permite al usuario hacer una convinación de teclas para acceder rápidamente a ese enlace, en este caso he puesto `accesskey="i"` para las "Intrucciones" por que la palabra empieza con "i", el resto se organiza de la misma forma, sólo que para las secciónes más importantes del diario utilizaremos números, del 1 al 9.





Como habrán visto, todavía ni siquiera hemos pensado en que colores, tamaños de letras nos manejaremos, sino que hemos pensado todo el tiempo en la estructura semántica del documento, vamos bien, el código final quedaría así:




    
    <code>&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    		"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"&gt;	
    &lt;html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es-ar" lang="es-ar"&gt;
    &lt;head&gt;
    	&lt;title&gt;LA NACIÓN ONLINE - Sin Barreras&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
    	&lt;div id="header"&gt;
    		&lt;ul&gt;
    			&lt;li&gt;&lt;a href="#" rel="glossary" title="Lea las instrucciones sobre los comandos y las abreviaturas de este sitio" accesskey="i"&gt;Instrucciones&lt;/a&gt;&lt;/li&gt;
    			&lt;li&gt;&lt;a href="#" title="Busca en el sitio" accesskey="b"&gt;Buscar&lt;/a&gt;&lt;/li&gt;
    			&lt;li&gt;&lt;a href="#" rel="help" title"Para contactar con el editor del diario"&gt;Contactar&lt;/a&gt;&lt;/li&gt;
    		&lt;/ul&gt;
    	&lt;/div&gt;	
    	&lt;div id="content"&gt;
    		&lt;div id="left"&gt;&lt;/div&gt;		
    		&lt;div id="right"&gt;&lt;/div&gt;
    	&lt;/div&gt;	
    	&lt;div id="footer"&gt;&lt;/div&gt;	
    &lt;/body&gt;
    &lt;/html&gt;</code>
    
    <p>El siguiente paso es terminar de armar la zona de la cabecera, ubicando el título de la página, con la fechas y temperaturas del día.</p>
    
    <h4>Paso 5: La Cabecera</h4>
    
    <p>El módulo de la cabecera tiene que alojar la información necesaria para que sea leída cada vez que la página se cargue, recomendamos tener poco texto, de ser así conviene también tener 2 o 3 cabeceras para las notas independientes, pero en este caso haremos la que corresponde a la página de inicio.</p>
    
    <p>La cabecera está delimitada por la etiqueta <code>&lt;div id="header"&gt;…&lt;/div&gt;</code> y le agregaremos la primera cabecera importante <code>&lt;h1&gt;</code> que será el título mayor de la página, en este caso el del Diario La Nación Online. Para ello ubicaremos la imagen del diario dentro del <code>&lt;h1&gt;</code> para que dado el caso no existan imágenes quede el atributo <code>alt="…"</code> formateado como si fuera un <code>&lt;h1&gt;</code>. Veremos el efecto.</p>
    
    
    
    <code>&lt;div id="header"&gt;
    	[… listado de enlaces del paso 4 …]
    	&lt;h1&gt;img src="/images/logo.png" alt="LA NACION LINE &mdash; Sin Barreras" title="Para personas con dificultades visuales" /&gt;&lt;/h1&gt;
    &lt;/div&gt;</code>





Entonces, lo bueno de esto es que cuando alguien acceda al sitio sin imagenes, verá el verdadero tamaño impuesto o por la hoja de estilos o por el mismo navegador. Además en los navegadores solo-texto el atributo `alt="…"` funciona como texto.





Ahora sólo falta agregar la parte de la fecha de edición actual de las noticias, y el tiempo, todo en la misma cabecera como un dato importante. Para ello crearemos otros párrafos más con clases que lo identifiquen, uno para la edición y otro para el tiempo:




    
    <code>&lt;div class="fecha"&gt;&lt;p&gt;Sábado, 27 de diciembre de 2003. Actualizado 11:13 horas.&lt;/p&gt;&lt;/div&gt;
    &lt;div class="tiempo"&gt;&lt;p&gt;Temperatura: 22&deg;, Humedad: 82%, Sensación Térmica: 23&deg;, Lluvias.&lt;/p&gt;&lt;/div&gt;</code>





He utilizado etiquetas `&lt;div&gt;` por que el modelo final muestra fondos de pantalla, y posiciones respecto a otros elementos, es por eso que se recomienda mejor utilizar un div antes que ponerle una clase a un elemento de párrafo. Luego con CSS daremos los toques finales.





> Una cosa a tener en cuenta, al utilizar simbología como en este caso hemos utilizados un símbolo de grados centígrados, debemos escoger la entidad HTML correspondiente (&deg; fue el caso) a ese símbolo, así nos ahorraremos problemas de compatibilidad entre dispositivos (navegadores, TV, Palms, etc.).






#### Paso 6: Definir el contenido





Esta parte quizás sea la más compleja, por que hay muchos objetos que debemos ubicarlos en la zona 4 que antes habíamos definido, dentro de las etiquetas `&lt;div id="left"&gt;…&lt;/div&gt;` irán las notas más importantes. Tendremos que definir cada tipo de nota, y fijarnos las coincidencias estructurales para poder luego armar un modelo para cada caso, el resto se encargaría de modelarlo el CSS.





Miramos en nuestro ejemplo, y para ir más directo les cuento que he diferenciado  5 tipos de módulos, algunos son únicos como la noticia más importante del día o como los DESTACADOS SIN BARRERAS, el resto tiende más a repetirse.





Pero dentro de todos esos "mini" módulos existe otra jerarquía que no es explícita, se diferencia separando notas de las "más importantes" (las primeras 4) del resto que pertenecen a los editoriales, resto de notas, y especiales.






Las notas vamos a diferenciarlas con tipos de listados, de definiciones, por que éstos son más aptos para casos de categorización, notas, ítems, incluso beneficia a la estructura del elemento haciendo que ahorremos `&lt;div&gt;` a la hora de utilizarlos.





Para dividir entre grupos de noticias, haremos una lista `&lt;dl&gt;` por grupo, dentro de la lista irán las categorización de cada noticia `&lt;dt&gt;` y el cuerpo de cada nota `&lt;dd&gt;` donde ubicaremos párrafos `&lt;p&gt;` y titulares `&lt;h2&gt;` (si es muy importante) `&lt;h3&gt;` (si tiene menos prioridad). Los enlaces `&lt;a&gt;` llevarán relaciones "bookmark" `&lt;a rel="bookmark"&gt;` así tienen más connotación semántica.





Un ejemplo sería:




    
    <code>&lt;dl&gt;
    	&lt;dt&gt;Economía.&lt;/dt&gt;
    	&lt;dd&gt;
    	&lt;p&gt;Aumenta el precio de la soja.&lt;/p&gt;
    	&lt;h2&gt;&lt;a href="/iralanota.php=1" rel="bookmark"&gt;Beneficia a la Argentina el &ldquo;mal de la vaca loca&rdquo;.&lt;/a&gt;&lt;/h2&gt;
    	&lt;p&gt;Se revalorizó en 44 millones de dólares la cosecha 2002 / 2003 La soja dejaría una ganancia extra de &lt;abbr title="United State Dollars" lang="en"&gt;US$&lt;/abbr&gt; 409 millones; es por la mayor demanda estadounidense de harina para alimentar aves de corral y cerdos.&lt;/p&gt;
    	&lt;p&gt;&lt;a href="/iralanota.php=1" rel="bookmark" title="Leer la nota: Beneficia a la Argentina el &ldquo;mal de la vaca loca&rdquo;."&gt;Ir a la nota&lt;/a&gt;&lt;/p&gt;	
    	&lt;dt&gt;…&lt;dt&gt;
    	&lt;dd&gt;…&lt;dt&gt;	
    &lt;/dd&gt;</code>





Entonces de esta forma estamos listado noticias con una mejor estructura, aprovechamos las etiquetas correctas y hacemos listados más intuitivos para los lectores, y más estructurales para modificar con los CSS.





Lo interesante es entrar a organizar el grupo de las "Otras Noticias" por que gracias a este tipo de listados puedo agrupar inteligentemente las listas con `&lt;dt&gt;` usando para las categorías y con `&lt;dd&gt;` por noticia.





Los nombres propios, ciudades, organizaciones, o citas sobre obras, deben llevar el tag `&lt;cite&gt;` de modo de marcarlo como una cita, si está en un idioma distinto al castellano es bueno ponerle el atributo `lang="…"` así el lector de voz (un sintetizador de voces) cambia el tono y pronunciación a uno más adecuado.





Una vez puesto todo el código de todas las notas, quedará algo así, no incluyo el código en la página por que sinó quedará todo muy largo, pero pueden ver el código fuente del enlace anterior.





> ##### Notas adicionales
> 
> En el ejemplo programado he incluido dentro de la zona `&lt;div id="left"&gt;` un div `&lt;div class="notas"&gt;`, allí dentro de ese div incluiré todas las notas que desee, esto lo hago para separar las notas de la sección "Descatados sin barreras", de esta forma cuando toque código en la plantilla de CSS esto me será de ayuda y una ventaja para realizar las reglas de estilo.
> 
> 


> 
> Es muy útil y práctico hacer una regla que ayude a graficar y posicionar otros elementos, sin tener que ponerle clases, imaginen que agregando una simple clase a un elemento que encierre a otros, los otros no necesitarán una clase cada uno, por que con la primera se podrán hacer más cambios, ahorrando caracteres.





Ahora queda pasar al paso 7, que es donde verteremos el código para los menús de la parte derecha.





### Paso 7: Los menús de la parte derecha





El paso 7 tiene gran parecido con el paso anterior, primero hay que determinar que los menús son en gran parte _listas de enlaces_, hay otro aspecto interesante de esto y es que podemos **utilizar atributos en los enlaces** que harán de ellos **enlaces especiales**, _¿por qué son especiales?_ Porque poseen atributos de _secciones, apéndices y subsecciones_, entonces semánticamente se diferencian del resto, un robot inteligente **sabría moverse por todo un sitio correctamente** si los enlaces están bien clasificados.





Otro aspecto y funcionalidad interesante es que cada módulo de menús tiene que ser independiente, esto es importante por que de esta manera podemos quitar y agregar menús a nuestro antojo o según nuestros usuarios nos indiquen que es lo mejor.





Al mirar el ejemplo real, vemos que los enlaces se agrupan en varias áreas, entonces podemos crear un módulo con una etiqueta `&lt;div&gt;` que la llamaremos "menu", luego dentro de esa `&lt;div&gt;` ubicaremos el título de la sección con una etiqueta `&lt;h3&gt;` la cual poseerá un enlace con un atributo `rel="section"` por ser el principal de todos, luego una lista desordenada `&lt;ul&gt;` contendrá cada enlace en un `&lt;li&gt;` con una relación del tipo `rel="subsection"`.





Esto es un módulo de un menú:




    
    <code>&lt;div class="menu"&gt;
    	&lt;h3&gt;&lt;a href="/secciones/" rel="section"&gt;Secciones&lt;/a&gt;&lt;/h3&gt;
    	&lt;ul&gt;
    	&lt;li&gt;&lt;a href="/link.php" rel="subsection" title="contactar"&gt;Contactar&lt;/a&gt;&lt;/li&gt;
    	&lt;li&gt;&lt;a href="/link.php" rel="subsection" title="contactar"&gt;Ingresar&lt;/a&gt;&lt;/li&gt;
    	&lt;/ul&gt;
    &lt;/div&gt;</code>





### Paso 8: La hoja de estilos





Luego de tener estructurado y semantizado todo el contenido y estructura, pasamos a la creación de los estilos, quizás este ejemplo programado de CSS no es el ideal, **se puede mejorar**, pero está _en un muy buen estado_, prácticamente no se han utilizado clases, sino que se han trabajado más aprovechando las herencias entre elementos, haciendo posible el ahorro de caracteres, además de trabajar más funcionalmente.




    
    <code>&lt;link href="/css/basic.css" media="screen" rel="stylesheet" type="text/css" /&gt;
    &lt;link href="/css/print.css" media="print" rel="stylesheet" type="text/css" /&gt;</code>





Otro paso adelante es que la página trae la posibilidad de hacer una plantilla de estilos que se activa cuando uno quiere imprimir, si observáis [el ejemplo que yo he hecho](/utilidades/lanacion/), podrán observar que hay una plantilla que se utiliza únicamente si queremos imprimir, dado que está especificada con un atributo `media="print"` ésta solo aparece si realizamos impresiones, por lo tanto no necesitamos tocar más código de XHTML, tampoco necesitamos crear _una página más que sea alternativa_, sino que sólo modificamos los aspectos gráficos y de posición de todos los elementos si lo deseamos sin tener que tocar también la hoja de estilos principal, también cabe destacar que las hojas de CSS orientadas a presentación son más cortas, dado que no requerimos de posicionar muchos elementos más que en una pantalla, sino que el caso aquí es más porcentual.





Las hojas de estilo de impresión son útiles incluso para mostrar tamaños de tipografías aptos para la impresión, como los son los `pt` (puntos) y `mm` (Milímetros).






Una vez terminado la plantilla principal, se pueden hacer muchos cambios, todos los que uno quiera, siempre y cuando no toque el XHTML el trabajo será más práctico y menos complicado, se podrán hacer mejores combinaciones de estilos para diferentes usuarios, y también este ejemplo posee en el tag body un identificador único que le permite a un usuario final, poder configurar su propia hoja de estilos.





Dado que he utilizado medidas en `em` para varias zonas y sobre todo para el control tipográfico, todos los navegadores IE 3.0 en adelante aceptarán este modo satisfactoriamente, cada usuario puede cambiar desde el navegador el tamaño de la tipografía, de hecho si un usuario está acostumbrado a utilizar tipografías más grandes de lo normal, el sitio se agranda a gusto.





#### ¡CSS es más complejo que XHTML!





Y algo de cierto tiene eso, CSS es un mundo nuevo, lleno de conceptos claros para modelar la forma de una página, en nuestro ejemplo no hubo problemas a la hora de hacerlo, ya que hay muchos puntos que me guiaron a un esquema de modelaje menos complejo, las razones que he visto son:







  1. Estilo de la página minimalista


  2. Medidas horizontales fijas


  3. Dos columnas


  4. Pocos elementos a posicionar


  5. Pocos colores, tipografías e imágenes





Dado que lo que siempre recomienda la W3C es utilizar cada tecnología para su propósito, por regla no podemos utilizar código XHTML para dar tamaño a las tipografías, ni para modelar la forma de una página, ni para situar una columna a la derecha y a la izquierda, sino que todo esto lo haremos con CSS.





Explicaré sólo el método utilizado para posicionar, uno que he desarrollado yo y realmente me funciona de maravillas, sin tener que utilizar "hacks" en el archivo de CSS, un poco de picardía a todas estas reglas.





Comencemos por lo principal el cuerpo de la página, o sea el `&lt;body&gt;` para ello, como muestra en el ejemplo real, todo el sitio está montado hacia la izquierda, el foco no es centralizado, puede que esto traiga dolores de cuello por tener siempre girarlo --no, fue solo una broma-- pero dirigir el foco de lectura hacia un lado no es positivo, los focos de visión centrados son más cómodos. De todos modos he decidido respetar esta decisión de focalizar, pero he hecho algunos cambios que notaran cuando observen mi ejemplo y el que está ahora en el diario.





Y comenzamos con el `&lt;body&gt;` que por recomendación de desarrolladores debe quedar así:




    
    <code>body {
    	background-color: #F8F8FA;
    	margin: 0 auto 0 0;
    	padding: 0;
    	font-family: Tahoma, Verdana, Arial, sans-serif;
    }</code>





Voy a deglosar esta parte por que es importante, dado que no pondré una línea de atributos en el tag `&lt;body&gt;` entonces doy en color de fondo, que es `background-color: #F8F8FA;` y luego lo más importante de toda página web: los márgenes que en este caso están definido así; margen superior `0`, margen derecho `auto` (se autoajusta dependiendo el ancho de la resolución de pantalla), margen inferior `0` y el margen izquierdo `0`. De esta forma tendremos los cuerpos principales orientados hacia la izquierda.





Luego el `padding: 0` esto es una medida de seguridad contra navegadores viejos que optan por poner un `padding` por defecto en vez de utilizar márgenes. Luego nos focalizamos en las áreas que habíamos definido (delineado):




    
    <code>div#header {
    	width: 755px;
    }
    div#content {
    	border-right: 1px solid #999;
    	border-bottom: 1px solid #999;
    	border-top: 1px solid #999;
    	width: 754px;
    	background-color: #fff;
    	margin-bottom: 0;
    }
    div#footer {
    	width: 754px;
    	background-color: #fff;
    }</code>






Esas reglas que he definido (`div#header`, `div#content`, `div#footer`) posicionan absolutamente toda la página, las tres áreas, incluídos todos los módulos que se encuentren bajo sus dominios.





Ahora queda la parte más crucial, la posición de el cuerpo del contenido, y la columna de los menús, es por eso que he creado dos clases únicas, `div#left` y `div#right`, éstas están preparadas para situar el contenido en ambos lados (derecho e izquierdo).





    
    <code>div#left {
    	border-right: 1px solid #999;
    	width: 70%;
    	float: left;
    }
    div#right {
    	width: 225px;
    	float: right;
    	padding-top: 15px;
    }</code>





Como conocemos los problemas de posicionar mediante el método `float` tomamos medidas para ello, para esto, hice un hack muy simple, que lo que hace es que se respeten los límites de las divs contenedoras, aparte de ello, empuja hasta los limites a las otras divs, obteniendo los efectos deseados sin usar trucos raros dentro del código de CSS.





Para ello, debemos poner un elemento "dummie" en zonas específicas como lo es en la cabecera y en el cuerpo de contenido, ponemos un `&lt;p class="clear"&gt;&lt;/p&gt;` esto es un elemento en bloque, si no conteniene contenido alguno será un sonido sordo, pero generará espacios en blanco, esto es por que los navegadores lo entienden como algo normal, pero, con una simple regla de CSS haremos magia y colores…





    
    <code>p.clear {
    	clear: both;
    	margin: 0;
    	padding: 0;
    }</code>





Con esto tendremos parte de las posiciones de los objetos principales del documento, a esta altura se tiene que comenzar a realizar los cambios gráficos, los mismos elementos traen por defecto posiciones que se pueden alterar con CSS a gusto, es recomendado respetar la naturalidad de los mismos.





Podéis observar [el resultado final](/utilidades/lanacion/) con todos los retoques que le hice a la hoja de estilos.





## Notas finales





Como podrán observar, después de tanto tiempo escribiendo artículos y notas relacionadas con CSS nunca habíamos hecho algo parecido, un ejemplo real careciente de funcionalidad y ventajas que proporcionan los estándares que en solo 1 día de trabajo se ha convertido en un ejemplo lleno de las mismas, además tienen a disposición el código del ejemplo tanto el archivo CSS como el XHTML para echar una mirada a cada línea y decifrar los cientos de conceptos aplicados… esa es la emoción de aprender a hacer una página, descubrir las miles de posibildidades que ofrecen todos [los elementos del XHTML](/utilidades/xhtml/).





> En este curso, hemos cambiado notablemente la funcionalidad de la página, utilizando solamente código XHTML, que le brinda al contenido un valor semántico alto, pueden comprobarlo escuchando el contenido con un lector de pantalla, también existen funcionalidades con el teclado, permitiéndole al usuario realizar comandos básicos con sólo teclear Alt+I para ir a las instrucciones ó Ctrl+M para empezar por el primer enlace de la sección de los menús.





> Debéis mirar el código minusciosamente para descubrir la funcionalidad, por que está explicita y fácil comprención, documentar todo me llevaría unos días de más, pero se podría terminar.





### Cambios documentables de la página





Ahora comprobaremos algunos de los cambios hechos, los más notables mirando el código HTML del ejemplo original y mirando el resultado final del XHTML.





### Lineas de código


	


El ejemplo real contiene 988 líneas de código HTML contra las 308 del ejemplo que he programado, de todas formas esto varía, pero el promedio del ejemplo real varía entre las 900 y 1000, mientras que el que he hecho rara vez puede llegar a las 400.





Un dato importante son las lineas que se utilicen, por que cada espacio, cada interlineado, cada caracter es peso, podríamos sacrificar muchos espacios pero son útiles para desarrollar y comprender el código, pero hay veces en donde el método de desarrollo genera muchas lineas, por ejemplo no es lo mismo hacer algo con tablas que con un simple `&lt;h1&gt;`.


	


### Mejora de símbología





En el ejemplo original se aprecian muchos símbolos como por ejemplo:





> US$, DT, PJ, S.A., 22&deg;.





Estos símbolos estaban mal ejemplificados, no gramaticalmente, sino que fueron mal programados, por que los lectores de pantalla y las personas que tienen un perfecto sentido de la vista no reconocen muchos símbolos, algunos son obvios, pero no siempre, no hay que fiarse, y definir estos símbolos con abreviaturas y acrónimos, esto beneficia sobre todo a los robots que buscan y analizan información en Internet. Los hemos mejorado, y hemos comprobado que a oído y vista mejora la calidad, además no malgastamos 1 byte en código XHTML en esta página.





### Mejora de elementos gráficos





Esta claro que si hay algo que falta en este mundo es picardía para hacer muchas cosas con poca cosa… y hemos logrado muchos efectos visuales con unas pocas líneas de código, sin descuidar de la importancia semántica del documento. Un ejemplo lo podemos ver ahora en la página actual:




    
    <code>&lt;spacer type="block" width="1" height="1"&gt;<br></br>&lt;br&gt;<br></br>&lt;body background="Index_data/fondo.png" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0" bgcolor="#ffffff"&gt;<br></br>&lt;td width="607"&gt;</code>





Eso es una pequeña muestra del código que se ha mejorado, eso no existe más, todo tipo de atributo que agregue un aspecto gráfico utilizando HTML fue eliminado, erradicado totalmente, fuera del concepto, gracias a ello, nos hemos valido por CSS, que nos ha beneficiado el 100% de las cosas. Pueden ver que no he utilizado una etiqueta para hacer una línea, tampoco he utilizado 





### Peso de página





A nivel estadístico la página ha reducido drásticamente la mitad de su peso, incluso sin optimizar este ejemplo dobla el ahorro de bytes que el servidor debe enviar, esto es gracias a la correcta utilización de los estándares. También es funcional en los navegadores 5.x y 6, aunque posee funcionalidades extras si el usuario utiliza alguna versión 6.x de Netscape o Mozilla, Opera, de todas formas, ningún usuario queda desabilitado para utilizar este ejemplo si carece de los mismos.





No se ha utilizado ninguna línea de Javascript, tampoco se han utilizado atributo alguno de HTML para graficar sobre el ejemplo, todo es debido gracias a CSS.





### Código XHTML y los sintetizadores de voces





El código de HTML ha mejorado notablemente, podrán notarlo cuando lo escuchen en un lector de pantalla, gracias a los atributos de lenguaje, las palabras extranjeras son pronunciadas correctamente en su idioma, los símbolos de monedas, abreviaturas y acrónimos también. Todos los enlaces tienen atributos y relaciones mejorados para la comprención y análisis de robots web y navegadores, dado el caso de la correcta utilización de las relaciones `rel="atributo"`. Los atributos visuales como las italicas fueron reemplazados por los énfasis, para darle un sentido y una razón a los lectores de pantalla para pronunciarlos distinto, lo mismo le ha pasado a las negritas que fueron reemplazadas por los `&lt;strong&gt;`, ahora los nombres propios, lugares, libros, etc. llevan etiquetas `&lt;cite&gt;` que me permiten darle más sentido a la frase o palabra.





Espero que este curso sirva, tanto a la gente que desarrolla, como al diario LA NACION, para que mejore su aspecto y funcionalidad, ofreciendo un mejor servicio a las personas discapacitadas y al resto también. Una de las cosas que más deseo siempre es que una empresa recapacite y se dé cuenta que gente como yo u otros no hacen estas cosas solamente para molestar o desprestigiar, sino para ayudar… un lector hace poco dijo… en vez de decir que es lo que está mal porqué no ayudar a cambiarlo, si bien esa no es mi tarea por que nadie me paga por esto, lo he tomado como un reto y contento hice este artículo, lo hice por que el diario LA NACION se ha preocupado &mdash;o tiene la molestia de ser uno de los primeros en pensar en los usuarios&mdash; por hacer algo diferente al resto, que sirva de ejemplo para las administraciones, gobiernos, diarios, revistas, portales, etc. que tanto deben mejorar y servir a las personas.






## Bibliografía





El artículo no está basado en ningún concepto escrito, pero la documentación que puedo ofrecer como material bibliográfico son las especificaciones web del W3C.






[CSS2]

    ["Cascading Style Sheets, level 2 (CSS2) Specification"](http://www.w3.org/TR/REC-CSS2), B. Bos, H. W. Lie, C. Lilley, I. Jacobs, 12 Mayo 1998. Disponible en: [http://www.w3.org/TR/REC-CSS2](http://www.w3.org/TR/REC-CSS2)

[HTML]

    ["HTML 4.01 Specification"](http://www.w3.org/TR/html40/), D. Raggett, A. Le&nbsp;Hors, I. Jacobs, 24 de Agosto 1999. Disponible en: [http://www.w3.org/TR/html40/](http://www.w3.org/TR/html40/)

    ["Extensible Markup Language (XML) 1.0 Specification"](http://www.w3.org/TR/REC-xml), T. Bray, J. Paoli, C. M. Sperberg-McQueen, 10 de Febrero, 1998. Disponible en: [http://www.w3.org/TR/REC-xml](http://www.w3.org/TR/REC-xml)

[XMLNAMES]

    ["Namespaces in XML"](http://www.w3.org/TR/REC-xml-names), T. Bray, D. Hollander, A. Layman, 14 de Enero, 1999.

[CHTML]

    "[HTML Compacte per a Petites Compilacions d'Informació](http://www.w3.org/TR/1998/NOTE-compactHTML-19980209)", Nota del W3C, T. Kamada, 9 de
Febrer de 1998. Disponible en: [http://www.w3.org/TR/1998/NOTE-compactHTML-19980209](http://www.w3.org/TR/1998/NOTE-compactHTML-19980209)

[GUIDELINES]

    "[Guia d'HTML 4.0 per a Accés Mòbil](http://www.w3.org/TR/NOTE-html40-mobile/), Nota del W3C, T. Kamada, T. Asada, M. Ishikawa, S. Matsui, eds., 15 de Març de 1999. Disponible en: [http://www.w3.org/TR/NOTE-html40-mobile/](http://www.w3.org/TR/NOTE-html40-mobile/).

[WCAG10]

    "[Guia d'Accessibilitat per a Contingut Web 1.0](http://www.w3.org/TR/WAI-WEBCONTENT/)", Recomanació del W3C, W. Chisholm, G. Vanderheiden, I. Jacobs, eds., 5 de Maig de 1999. Disponible en: [http://www.w3.org/TR/1999/WAI-WEBCONTENT-19990505](http://www.w3.org/TR/WAI-WEBCONTENT/).


  *[US$]: United State Dollars
  *[S.A.]: Sociedad Anónima
  *[HTML]: Hypertext Markup Language
  *[DT]: Director Técnico
  *[PHP]: PHP: Hypertext Preprocessor
  *[eds.]: editores
  *[XHTML]: Extensible Hypertext Markup Language
  *[CSS]: Cascading Style Sheets
