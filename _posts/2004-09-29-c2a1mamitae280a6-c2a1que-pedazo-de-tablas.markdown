---
comments: false
date: 2004-09-29 16:00:00
layout: post
slug: '%c2%a1mamita%e2%80%a6-%c2%a1que-pedazo-de-tablas'
title: ¡Mamita!… ¡qué pedazo de tablas!
wordpress_id: 1998
categories:
- Internet
---

![Haciendo tablas](http://www.minid.net/images/tables-making.png)No hay nada que me moleste más que el menosprecio que se tienen a las tablas en XHTML. Menospreciarla en todos los sentidos, tanto como si la utilizaran como un elemento para realizar maquetas como cuando se menosprecia su uso creyendo que las páginas estándar no llevan tablas.





Realmente, las tablas son unos de los elementos que más respeto debemos tener, sobre todo hay que concentrarse en un concepto: _tabular data_ (datos tabulares). Las tablas fueron concebidas para representar datos de forma tabular, **no porciones de una página en diferentes celdas**.





Entonces, _¿cómo se aprovecha una tabla?_ Pues el primer paso es averiguando qué elementos juegan un papel primordial en ella y qué atributos la benefician.







### Los elementos básicos





Cómo todo elemento compuesto (ver `&lt;dl&gt;`, `&lt;ul&gt;`, `&lt;ol&gt;`) la etiqueta `&lt;table&gt;` sólo funciona bien si tiene como hijos a otros elementos: `&lt;thead&gt;`, `&lt;tbody&gt;`, `&lt;tfoot&gt;`, `&lt;tr&gt;`, `&lt;td&gt;`, `&lt;th&gt;`, `&lt;caption&gt;`, etc.





### El elemento `&lt;table&gt;`





Este elemento es de primer nivel, esto significa que en la escala de etiquetas que escribes cuando inicias una tabla éste siempre tiene que estar al comienzo de todo, como en este ejemplo:





    
    <code class="html">&lt;table sumary="estadísticas de navegadores"&gt;</strong>
    	&lt;thead&gt;
    		&lt;tr&gt;
    		&lt;th&gt;Navegadores&lt;/th&gt;
    		&lt;/tr&gt;
    		…</code>





Es imprescindible saber que atributos te benefician  a la hora de hacer una tabla limpia de elementos de presentación y, para ser más concreto, tienes que prescindir del atributo `border="…"`, `rules="…"`, `frame="…"`, `background="…"`, `bgcolor="…"`, `width="…"`, `height="…"` (no usen esto por el amor de Dios), `align="…"`. Hay dos tipos de atributos que son perfectamente reemplazables pero no dan muy buenos resultados en algunos navegadores modernos y menos en los antiguos, me refiero a `cellpadding="…"` y `cellspacing="…"`. Para estos dos últimos conviene mejor dejarlos con valor igual a cero (Ejem. `cellpadding="0"`) y luego con CSS darle al grupo de celdas o cabeceras los espacios interiores deseados.





Dentro del elemento table se pueden utilizar atributos de suma utilidad: `sumary="…"`, `title="…"`, `class="…"`, `id="…"`, `lang="…"`. Estos atributos le darán buenas dosis de semántica a la tabla que vayáis a crear. Les recomiendo aprenderse **el valor de usarlas y aplicarlas** siempre que puedan. Ahora les mostraré un ejemplo con todos los atributos, ustedes pueden copiar este código y pegarlo en el editor de HTML favorito y observen los resultados:


		

    
    <code class="html">&lt;table summary="Esta tabla contiene 
    los valores de uso de los 
    navegadores en el sitio Minid.net"&gt;
    &lt;caption&gt;Tabla de uso de navegadores&lt;/caption&gt;
    &lt;thead&gt;
    	&lt;tr&gt;
    	&lt;th&gt;Navegador&lt;/th&gt;
    	&lt;th&gt;Agosto&lt;/th&gt;
    	&lt;/tr&gt;
    &lt;/thead&gt;
    &lt;tfoot&gt;
    	&lt;tr&gt;
    	&lt;td colspan="2"&gt;Datos según el sistema
    	AWSTATS de Agosto.&lt;/td&gt;
    	&lt;/tr&gt;
    &lt;/tfoot&gt;
    &lt;tbody&gt;
    	&lt;tr&gt;
    	&lt;td&gt;Mozilla Firefox&lt;/td&gt;
    	&lt;td&gt;95%&lt;/td&gt;
    	&lt;/tr&gt;
    	&lt;tr&gt;
    	&lt;td&gt;Internet Explorer 6&lt;/td&gt;
    	&lt;td&gt;5%&lt;/td&gt;
    	&lt;/tr&gt;
    &lt;/tbody&gt;
    &lt;/table&gt;</code>


		


Este código les dará una tabla parecida a esta:






Tabla de uso de navegadores




Navegador
Agosto







Datos según el sistema
	AWSTATS de Agosto.








Mozilla Firefox


95%






Internet Explorer 6


5%







##### El atributo summary





Es interesante este atributo. Sirve para describir el sumario de la tabla.. Sirve para muchas cosas, pero la primera aplicación que le encuentro es la comprensión que puede realizar un ordenador y aprovechar esa información para otras cosas. Para el usuario sólo le queda ver las propiedades de esa tabla con su navegador favorito y éste le indica que contiene el sumario de esa tabla:






##### El elemento Caption





Si observan el modelo de tabla que hice en el ejemplo anterior de este artículo, podrán darse cuenta que he insertado el elemento `&lt;caption&gt;`. `&lt;caption&gt;` (del inglés _caption_, _subtítulo_) sirve para poner un título a la tabla. Este elemento tiene una reacción gráfica visible: **se renderiza al comienzo de la tabla** y puede ser formateado con CSS sin problemas, eso se los dejo a vuestra imaginación.





`&lt;caption&gt;` en cierta forma sólo agrega un nivel más de lectura y comprensión para nuestra tabla. no todas las tablas requieren un subtítulo, pero tratándose de dar la mayor cantidad de información pueden usarla sabiamente.





### Los elementos agrupadores `&lt;thead&gt;`, `&lt;tbody&gt;` y `&lt;tfoot&gt;`





Estos elementos sirven para agrupar celdas y cabeceras de una tabla. Lógicamente una tabla renderiza estos elementos de forma visible, además podemos comenzar escribiendo los datos de un pie de tabla (ver ejemplo) y estos saldrán a lo último de todo.





`&lt;thead&gt;` sirve para definir el grupo de celdas, cabeceras que saldrán en la primera línea de la tabla, mientras que `&lt;tbody&gt;` es el cuerpo principal de los datos. Desconozco totalmente la aplicación semántica de estos elementos en cuanto lectura de pantalla para discapacitados fuere, pero sí sé que existe una ventaja abrumadora a la hora de formatear celdas, líneas, y cabeceras usando CSS y las propiedades de cascada. Para que me entiendan bien sobre lo que estoy hablando, voy a poner un ejemplo claro:





Si antes una tabla se componía solo de 3 elementos: `&lt;table&gt;`, `&lt;tr&gt;` y `&lt;td&gt;` ¿cómo podemos diferenciar grupos de celdas con diferentes formatos usando CSS? En este caso nos veremos limitados, a tal punto que comenzaremos a ponerle clases a todas las celdas que queramos cambiar. Se pueden ver miles de ejemplos de tablas que requieren cientos de modificadores a niveles de código para tener partes en otros colores, diferentes tipografías.





Ahora, si agrupáramos tablas en 3 subgrupos, podemos abrir un abanico de posibilidades. Pueden [ver un ejemplo de una tabla](http://www.minid.net/archivos/categorias/anuncios_de_minid/mas_peleitas_de_navegadores_ie_44_y_le_sigue_geckos_con_43.php) que utilizo en este sitio para informar a mis lectores sobre las estadísticas de mi sitio. La tabla se caracteriza por tener una clase universal: `class="compare"`. Con esa clase, ya diferencio una tabla especial para todas las comparaciones que quiera hacer, luego puedo hacer otra llamara class="lista-de-cosas" y darle otro formato, color…





Si observan esa tabla, verán que no tiene un gramo de atributos en el código HTML, sin embargo con CSS y una adecuada selección de atributos podemos darle un formato final de calidad y muy extensible. Ahora les muestro lo simple que es un formato de CSS para la tabla compare que hice:




    
    <code class="css">table.compare {
    	width: 410px;
    	border: 1px solid #999;
    	margin: 0 auto 1em auto;
    	}
    	
    table.compare thead th {
    
    	font: bold .7em/1.4em Verdana, sans-serif;
    	color: #000;
    	text-align: left;
    	padding: .5em;
    	background-color: #FFFFE1;
    	}
    	
    table.compare tbody th {
    	font: .7em/1.4em Verdana, sans-serif;
    	color: #000;
    	text-align: left;
    	padding: .5em;
    	border-top: 1px solid #eee;
    	background-color: #f9f9f9;
    	}
    	
    table.compare tfoot td {
    	font: .7em/1.4em Verdana, sans-serif;
    	color: #000;
    	text-align: left;
    	padding: .5em;
    	border-top: 1px solid #eee;
    	background-color: #f9f9f9;
    	}
    	
    table.compare tbody td {
    	font: .7em/1.4em Verdana, sans-serif;
    	color: #666;
    	text-align: left;
    	border-top: 1px solid #eee;
    	padding: .5em;
    	}</code>



	


Razonando lo que acabo de presentarles se darán cuenta que incluso hasta ahorramos tiempo y golpes de tecla escribiendo cientos de reglitas de CSS para cada antojo que tenemos sobre una tabla…





### El elemento `&lt;th&gt;`





Importantísimo elemento en las tablas. Este elemento es para definir las cabeceras de una tabla. Para que os hagáis una idea de lo que hablo, si en una tabla hay 12 celdas apiladas en 4 grupos de 3 celdas por línea, _¿cuáles de ellas podrían diferenciarse como cabeceras de tablas y cuáles serían datos reales de la tabla?_ Es difícil saberlo sin que un humano tenga que comprender esa información. Para un robot en la web, que lee código y lo analiza, esa tabla tiene directamente 12 celdas de datos estadísticos y no sabrá diferenciar una celda de otra.










Navegador


Abreviatura


Popularidad






Internet Explorer


IE


Mucha






Mozilla


Moz


Mucha






Opera


Op


Media






Esta tabla está hecha como mencionamos con 12 celdas, ninguna dice o afirma que las 3 primeras son cabeceras, dando como resultado una mala clasificación y un problema añadido para los robots.


	







Navegador
Abreviatura
Popularidad







Internet Explorer


IE


Mucha






Mozilla


Moz


Mucha






Opera


Op


Media







Esta tabla claramente diferencia las cabeceras, ayudando a los robots a diferenciar entre una cabecera descriptiva y los datos estadísticos de otras. Sin embargo no he utilizado ningún elemento extra como `&lt;strong&gt;` o `&lt;b&gt;`, sólo he indicado que las cabeceras son `&lt;th&gt;`. Nunca olvides que cada elemento fue hecho para cumplir una misión, una mala aplicación de los mismos te desviará del camino que quieres seguir.





#### El atributo abbr="…"





Al igual que en el elemento en linea `&lt;abbr&gt;`, las cabeceras y las celdas pueden llevar un atributo interesante y de impacto semántico llamado `abbr=""`. Ahí puedes definir de forma extensa la abreviación de una celda o una cabecera. Esto es ideal y práctico para aquellas tablas donde **el espacio horizontal es limitado**. Un ejemplo claro lo pueden ver en los calendarios que son creados en los weblogs:





Donde Lu, Ma, Mie, Jue, Vie, Sap, Dom puede leerse y escucharse como Lunes, Martes, Miércoles, Jueves, Viernes, Sábado y Domingo. Para ello les mostraré este pedacito de código que evidencia dicha propiedad:


	

    
    <code class="html">&lt;table summary="Calendario de notas escritas 
    en el weblog minad.net"&gt;
    &lt;thead&gt;
    	&lt;tr&gt;
    	&lt;th abbr="Lunes"&gt;Lu&lt;/th&gt;
    	&lt;th abbr="Martes"&gt;Ma&lt;/th&gt;
    	…</code>


	


Es interesante ver las cuantiosas propiedades que se le pueden atribuir a una tabla. Este atributo reemplazaría a la utilización del elemento `&lt;abbr&gt;` dentro de una celda. Imagino que se ha creado por una cuestión de practicidad y también de ahorro de caracteres por celda.





Este ejemplo también sería válido usando el elemento abbr:




    
    <code class="html">&lt;table summary=”Calendario de notas escritas 
    en el weblog minad.net”&gt;
    &lt;thead&gt;
    	&lt;tr&gt;
    	&lt;th&gt;&lt;abbr title=”Lunes”&gt;Lu&lt;/abbr&gt;&lt;/th&gt;
    	&lt;th&gt;&lt;abbr title=”Martes”&gt;Ma&lt;/abbr&gt;&lt;/th&gt;
    …</code>





Tanto el primero como el segundo son correctos, pero el primero es más ameno para estos casos y también ayuda en el ahorro de escritura de caracteres por celda.





### El elemento TD





Este elemento es el más conocido y más utilizado en el proceso de creación de tablas. Realmente explicar qué hace me da pereza, pero intentaré resumir su propósito: _crear celdas de datos_. Este elemento en sí se diferencia de las cabeceras `&lt;th&gt;` por su valor neutro, digamos que, en la vida real, un `&lt;td&gt;` puede ser cualquier cosa pero un th siempre será un elemento para definir el significado de una línea o una columna.





### ¿Cómo formatear una tabla con CSS?





Cuando los desarrolladores tenían pensado darle vida a una tabla de HTML con colores y bordes por lo general recurrían a las virtudes de los atributos del HTML. Utilizando `bgcolor="…"` por ejemplo se le daba color a una celda, línea o un columna. Pero con la llegada y popularización de las hojas de estilos las cosas se extendieron de otra forma, trayendo más ventajas que la simple utilización de atributos de HTML.





La principal desventaja usar dichos atributos es:







  * Más código escrito en una tabla.


  * Más trabajo luego para cambiar de estilo.


  * Más peso en bytes en el documento.


  * Tarda más tiempo en renderizar una tabla.





Todo esto con CSS se anula de una forma increíble, pero no todo el mundo sabe hacer esto, intentaré mostrarles algunas formas que utilizo para ahorrarme de escribir muchas clases o hacer trucos extraños para darle una estética buena a cualquier tabla.





#### Paso 1: Una tabla bien escrita en HTML





Es importante tener una tabla bien escrita en HTML para poder formatearla con CSS. Para ello me he servido de un ejemplo que había visto en la web. Simplemente este modelo de tabla es lo más chungo que he visto en 5 minutos de búsqueda en Google.





El primer paso fue limpiar la tabla de todo tipo de etiqueta que he visto de más. En el ejemplo Esto es una tabla chunga, podrán ver que han utilizado para comenzar atributos que no hacen más que molestar y agregar peso a la tabla.





Las cosas que borraré están marcadas con énfasis:




    
    <code class="html">&lt;table border="0" cellpadding="0" cellspacing="0" width="480"&gt;<br></br>
        &lt;tbody&gt;&lt;tr&gt;<br></br>
            &lt;td colspan="5" <strong>valign="top"</strong>&gt;<strong>&lt;font size="2"&gt;&lt;b&gt;</strong>Tabla 3: <strong>&lt;/b&gt;</strong>Ingredientes
            y porcentajes de las diferentes dietas (base fresca)
    
            (Ensayo 2)&lt;/font&gt;&lt;/td&gt;</code>





A los 5 minutos de mirar los datos de la tabla, caí en la cuenta que muchos datos de la misma se pueden representar de mejor forma, sin tener que hacer formas raras, el resultado de la cabecera fue:


		  

    
    <code class="html">&lt;table class="ensayo" summary="Ingredientes y porcentajes de las diferentes dietas (base fresca [Ensayo 2])" cellspacing="0"&gt;
    	&lt;caption&gt;Ingredientes y porcentajes de dietas&lt;/caption&gt;
    	&lt;tbody&gt;
    		&lt;tr class="principal"&gt;
    		&lt;th&gt;&lt;/th&gt;
    		&lt;th&gt;T&lt;/th&gt;
    		&lt;th&gt;V5&lt;/th&gt;
    		&lt;th&gt;V10&lt;/th&gt;
    		&lt;th&gt;V15&lt;/th&gt;
    		&lt;/tr&gt;
    	&lt;tr class="etapas"&gt;
    	&lt;th colspan="5"&gt;Etapa 0-35 &lt;abbr title="Kilogramos"&gt;Kg.&lt;/abbr&gt; peso vivo:&lt;/th&gt;
    	&lt;/tr&gt;</code>


		  


Luego de limpiar la tabla un poco y dejando sólo los `&lt;td&gt;` y los `&lt;tr&gt;`, paso a agregarles las etiquetas de agrupación que antes había mencionado: `&lt;thead&gt;`, `&lt;tbody&gt;` y `&lt;tfoot&gt;`.





##### Agregados de la tabla





Para finalizar el toque de la tabla,  habrá que escribir el sumario de la tabla usando el atributo `summary="…"` y ponerle un `&lt;caption&gt;` como se puede ver en este ejemplo:




    
    <code class="html">&lt;table summary="Ingredientes y porcentajes de las diferentes dietas (base fresca [Ensayo 2])" cellspacing="0"&gt;
    <strong>&lt;caption&gt;Ingredientes y porcentajes de dietas&lt;/caption&gt;</strong>
    	&lt;tbody&gt;
    	…</code>





#### Paso 2: Hojas de estilo





Una vez tengamos la tabla limpia y sin formatear, pasaremos a darle color con CSS. Como primer paso en esta aventura, le ponemos un nombre de clase a la tabla o si quieren, pueden también utilizar un ID único (no conveniente si habrá más de una tabla por página).




    
    <code class="html">&lt;table class="ensayo" summary="Ingredientes y porcentajes de las diferentes dietas (base fresca [Ensayo 2])" cellspacing="0"&gt;
    …</code>





Es importante, que sepan que camino tomar: usando una clase o usando un ID, no vaya a ser que luego no valide la página o se les complique con otras cosas.





Una vez terminadas la inclusión de la clase, pasamos a la hoja de estilo propia… un archivo de CSS incluido en el servidor o escrito directamente en la misma página. En el ejemplo final, observarán que el CSS está en la misma página por cuestiones prácticas.





Comenzaré escribiendo primero las propiedades físicas de la tabla: qué tamaño va a tener, si tendrá un borde externo, qué margenes tendrá con respecto a otros elementos, etc.




    
    <code class="css">table.ensayo {
    	border: 1px solid #ccc;
    	width: 500px;
    	margin: 20px auto;
    	}</code>





Esto es lo que obtenemos de nuestra tabla llamada compare: borde único de 1 píxel, más una anchura de 500 píxeles y un margen superior de 20 píxeles y márgenes automáticos tanto para la derecha como la izquierda… ahora prosigo a crear el resto de las cosas, como por ejemplo el elemento `&lt;caption&gt;`:




    
    <code class="css">table.ensayo caption {
    	font: bold 1em/1.5em "Trebuchet MS", Tahoma, Arial, sans-serif;
    	color: #000;
    	text-align: center;
    	margin: 10px auto;
    	}</code>


	


El `&lt;caption&gt;` tendrá una tipografía, con un color especial y estará centrado también con respecto a la tabla. Luego colorearemos las cabeceras y también les incluiremos un tipo de tipografía y _paddings_ para ir dándole forma:




    
    <code class="css">table.ensayo tbody tr.principal th {
    	font: bold .9em/1.5em "Trebuchet MS", Tahoma, Arial, sans-serif;
    	color: #fff;
    	background: #5FACF3;
    	text-align: left;
    	padding: 5px;
    	border: 0;
    	}
    			
    table.ensayo tbody tr.etapas th {
    	font: bold .9em/1.5em "Trebuchet MS", Tahoma, Arial, sans-serif;
    	color: #fff;
    	background: #DC4503;
    	text-align: left;
    	padding: 5px;
    	border-top: 1px solid #eee;
    	}
    			
    table.ensayo tbody th {
    	font: bold .9em/1.5em "Trebuchet MS", Tahoma, Arial, sans-serif;
    	color: #DC4503;
    	background: #FEFFF1;
    	text-align: left;
    	padding: 5px;
    	border-top: 1px solid #eee;
    	}</code>






Siempre me gusta darle toques de líneas suaves y colores pasteles a las celdas y a las cabeceras ponerles colores un poco más saturados y oscuros, pero es una cuestión de gusto personal (que cambia con el tiempo), ustedes pueden hacer las pruebas que quieran.





Como han observado, todavía no he escrito una clase particular para una celda, sólo hice (porque este caso es bastante especial) una clase para diferenciar un tipo de linea `&lt;tr&gt;` de otras, para poder tener dos tipos de cabeceras `&lt;th&gt;` de diferente color `tr.etapas` (que en HTML se traduce en `&lt;tr class="etapas"&gt;`).





Ahora sólo me queda estilizar las celdas normales:




    
    <code class="html">table.ensayo tbody td {
    	font: .9em/1.5em "Trebuchet MS", Tahoma, Arial, sans-serif;
    	color: #666;
    	background: #fff;
    	text-align: left;
    	padding: 5px;
    	border-top: 1px dotted #eee;
    	}</code>





Nuestra tabla ensayo debería quedar [como esta](/files/tabla-mega-guapa.html) que tengo en mi servidor.





### Resumen de la lección





Esta tabla de ejemplo que les he mostrado tiene cambios significativos de todo tipo, desde los mencionados hasta mejoras semánticas como normalización de las etiquetas, cabeceras, agrupación de datos. De todas formas, me hubiera gustado más cambiar los modelos de datos, presentarlos quizás en otro orden, pero esto era sólo un ejemplo.





Pueden ver [la tabla original](/files/tabla-chunga.html) y [la terminada](/files/tabla-mega-guapa.html).






### Cosas que debes tratar de evitar a la hora de hacer tablas





Hay muchas cosas que podemos obviarnos a la hora de crear tablas. Debemos abstenernos de hacer cosillas raras como esta:




    
    <code class="html">&lt;tr&gt;
            &lt;td&gt;&nbsp;&lt;/td&gt;
            &lt;td&gt;&nbsp;&lt;/td&gt;
            &lt;td&gt;&nbsp;&lt;/td&gt;
            &lt;td&gt;&nbsp;&lt;/td&gt;
            &lt;td&gt;&nbsp;&lt;/td&gt;
    &lt;/tr&gt;</code>





Eso renderizado en el navegador sería una línea de 4 celdas con un caracter de espacio --apretó la tecla de la barra espaciadora-- que cumple la función de separar una linea de la tabla de otra… _¡evita hacer esto por favor!_.





¿Qué hacer en este caso? Pues se pueden hacer varias alternativas, la más cómoda ponerle una clase al elemento `&lt;tr class="…"&gt;` del conjunto de celdas que quieras separar y ahi mismo en el css le indicas una regla que diga algo así:




    
    <code class="css">tr.espaciada td {
    	padding-bottom: 10px;
    	}</code>





Es preferible eso a tener que renderear más celdas; más los caracteres y, sobre todo, arruinar el sentido semántico de la tabla. No se olviden que las tablas **son elementos delicados** que se leen de muchas formas en _los lectores para discapacitados_.


	


#### Otra churrería muy común:





`&lt;tr align="justify" valign="top"&gt;`, `&lt;td align="center"&gt;` todas estas propiedades de una tabla están obsoletas cuando aparece CSS. Limitando sólo a escribir los tags, agrupándolos correctamente y escribiendo reglas de cascada o herencia como Dios manda se podrán tener buenas tablas.





#### El maldito `bgcolor="…"`





Esta propiedad del HTML **se ha ganado mi odio**. Sobre todo por la inutilidad de la misma. Sólo deja especificar un color a una celda, linea o toda una tabla entera. Esto es algo por supuesto reemplazable en CSS, de tal forma que no se imaginan las cosas que se le puede aplicar a una celda con propiedades de CSS… desde una imágen hasta un pilón de colores.





Por eso **NO UTILICES** ESTA PROPIEDAD DE HTML BAJO NINGÚN CONCEPTO.





#### No seas _border_





No uses el atributo `border="…"`, te conviene usar una propiedad de CSS.





#### Centrar una tabla





Algo super cotidiano y digno de un estómago invertido es el fanatismo que tiene la gente por centrar las tablas con métodos raros:




    
    <code class="html"><strong>&lt;center&gt;</strong>
    &lt;table cellpadding="0" cellspacing="0" align="center"&gt;
    &lt;tr&gt;
    	&lt;td&gt;&lt;span class="titulo"&gt;Título&lt;/span&gt;&lt;/td&gt;
    	…</code>





ni `align="center"`, ni `&lt;center&gt;`, ni `&lt;div class="center"` ni pollas, mejor utilizar CSS para estos casos.





#### Dios bendito tráeme el famoso `spacer.gif`





Hace 3 años todos hacíamos esta técnica: utilizábamos un archivo de 1 x 1 píxel para "acomodar y espaciar" objetos dentro de nuestra página. Hoy en día te recomiendo que mires otras opciones.





Cuando utilizamos CSS, podemos indicarle a cualquier etiqueta (con o sin clases y ID) qué distancias tiene que tener con respecto a otros elementos dentro de una misma línea o mismo bloque.





Esto sirve más que nada para acomodar cualquier cosa de forma nativa, sin necesidad de tener que ponerle a una página 5 o 10 imágenes de 1 píxel. Muchos sabrán que a más fragmentación exista dentro de una página más tarda en cargar, renderizarse, etc.





Por eso, ejemplos como éste se pueden mejorar con 2 o 3 cambios en las plantillas de CSS:




    
    <code class="html">&lt;table width="770" border="0" align="center" cellpadding="0" cellspacing="0"&gt;
    	&lt;tr&gt;
    	&lt;td align="center" valign="middle" bgcolor="35A5DB"&gt;&lt;img src="images/spacer.png" width="10" height="10"&gt;<strong>&lt;img src="images/spacer.png" width="1" height="1"&gt;</strong>&lt;/td&gt;
    	&lt;/tr&gt;
    	…</code>


	


La clave siempre está en comenzar a prescindir de dichas imágenes y pasar a una modelación total de cada objeto con CSS, de modo que si queremos cambiar la posición de algún objeto lo hacemos modificando número en una simple hoja de estilo y no borrando y agregando una decena de imágenes.





### Fin de la guía





Ahora es cuestión de que se vayan a la página del W3C y terminen de aclarar cualquier duda técnica. También pueden realizar preguntas en este artículo escribiendo comentarios. Hacer tablas buenas nunca fué tan fácil.
  *[Ejem.]: Ejemplo
