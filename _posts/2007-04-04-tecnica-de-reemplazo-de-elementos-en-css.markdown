---
comments: true
date: 2007-04-04 16:26:48
layout: post
slug: tecnica-de-reemplazo-de-elementos-en-css
title: Técnica de reemplazo de elementos en CSS
wordpress_id: 3045
categories:
- Internet
---

En general, cuando entramos a una página que se jacta de ser «estándar» podemos ver como, con una no tan simple, pero efectiva técnica, montan todo un sitio colorido, lleno de detalles de diseño, usando imágenes por doquier. De hecho, creo que a muchos les habrá parecido lógico pensar que él HTML de esa página estaba llena de elementos `img`, pero no. Entras al código HTML y te das cuenta que sólo hay puros `divs`, `p`, `h1`, etc. Esto genera una duda, ¿cómo lo harán? Miras el CSS y empiezas a entenderlo todo: reemplazan elementos.





Cada elemento en HTML tiene un _output_ (salida) tanto visual como sonora. Además, tiene una salida semántica, la que sólo entienden determinados dispositivos o programas automatizados, pero de esto ahora no quiero charlar… Decía, cada elemento por naturaleza, tiene un aspecto: ocupa una línea entera, sólo la porción necesaria de esta, tiene propiedades de posición o, simplemente, es un elemento con pocas posibilidades de modificación. Para el que no me esté siguiendo en la conversación, cuando me refiero a «elemento», no quiero referirme al carbono o el hidrógeno, sino a las etiquetas que utilizamos en HTML. Un elemento es `p`, que es un elemento de texto que genera párrafos. Tiene unas propiedades por defecto pero se le puede agregar más. Desde el momento que cambiemos una característica base, dejará de ser el elemento que conocíamos y pasará a ser otro, poco o muy distinto.





CSS y HTML va de esto: clasificación de los elementos y jerarquizar contenidos en base a elementos. Algo que todo desarrollador debe entender y dominar para controlar todos los aspectos semánticos, visuales y sonoros de una página web.




<!-- more -->



### Clasificación de los elementos





[Según el W3C](http://www.w3.org/TR/html401/sgml/dtd.html#inline) los elementos de HTML se pueden clasificar en:


	


> 
	
> 
> 
	   
>   * `%inline;`: Elementos en el nivel de letras y cadenas de texto.
> 
	   
>   * `%block;`: Elementos de nivel de bloque. ejem. párrafos y listas.
> 
	



	


Es posible explicar esto de una forma amena, y no tan escueta. En parte, esto es culpa del W3C por no empeñarse en realizar textos más «didácticos» para el público que para fabricantes. Cuando en cursos y charlas explico la clasificación de elementos, siempre me refiero a ellos como: _elementos en-línea, bloque y elementos remplazados_. Me gusta más esta forma que la resumida propuesta por el W3C. Esta forma fue propuesta por [Eric A. Meyer](http://meyerweb.com/eric/) explica en sus libros de CSS.





#### Elementos de bloque





Los elementos de bloque son todos aquellos que en su estado natural **ocupan toda una línea de pantalla**, forzando el desplazamiento de otros elementos a la siguiente línea en pantalla. Desplazan hacia abajo a otros elementos de bloque, línea o reemplazados. Estos elementos son: `p`, `ul`, `ol`, `dl`, `dt`, `dd`, `h1` (o cualquiera de la escala), `object` y `blockquote`. Los elementos de bloque sólo pueden ser «hijos» de otros elementos de bloque y sólo en algunas circunstancias.





#### Elementos de línea





Los elementos de línea son todos aquellos que en su estado natural o siendo elementos reemplazados **se agolpan uno al lado del otro ocupando una línea** y se desplazan hacia abajo cuando el ancho de la pantalla no les deja espacio donde acomodarse. Estos elementos conforman una larga lista pero, entre los más populares están: `b`, `i`, `strong`, `em`, `a`, `u`, `img`, `label`, `input`, `textarea`, `select` y `span`. Pueden ser «hijos» de cualquier otro elemento.





#### Elementos reemplazados





Los elementos reemplazados son todos aquellos que un día fueron algo y hoy por determinada causa **no lo son**. Si una imagen (elemento en línea) gracias a una propiedad escrita en CSS pasa a ser un elemento en bloque, este no es un elemento en bloque _sino un elemento reemplazado_ que cumple las características de un elemento en bloque.





Entendido esto, sabemos como afectar los elementos. Por ejemplo, si queremos dar márgenes a una imagen necesitamos, en primer lugar, convertirla a un elemento de bloque. Esto lo podemos hacer con CSS, utilizando la propiedad `display: block;` y automáticamente este elemento dejará su naturaleza de elemento en línea y se convertirá **en un elemento reemplazado con cualidades de elemento en bloque**. Ahora, teniendo esas cualidades, podemos usar reglas de marginado para desplazar la imagen a gusto.





### La propiedad `background` en CSS





Voy a comenzar esta parte del artículo sobreentendiendo que ya tenéis conocimiento del [modelo de cajas](http://www.w3.org/TR/REC-CSS2/box.html) en CSS. De no tener conciencia cómo está compuesto esto, te costará entender las propiedades que se puedan aplicar a un tipo de elemento u otro. Es probable que, apliques márgenes a un elemento en línea y no obtengas el resultado deseado, esto se debe porque, en primer lugar no sabes qué tipo de elemento era y segundo, no sabías que determinados propiedades sólo pueden aplicarse cuando se cumplen las reglas del modelo de caja. Explicarlo aquí sería alargar demasiado el artículo, por ende, lo dejo para otra ocasión.





En la especificación del W3C, [la propiedad `background`](http://www.w3.org/TR/REC-CSS2/colors.html#q2) dice:





> Authors may specify the background of an element (i.e., its rendering surface) as either a color or an image. In terms of the box model, "background" refers to the background of the content and the padding areas. Border colors and styles are set with the border properties. Margins are always transparent so the background of the parent box always shines through.



Y es así como la propiedad `background` conforma el 100% de esta técnica. Básicamente, se aprovecha esta propiedad para aplicarlo en cada elemento de HTML y así, poder utilizar cada elemento como si se tratase de una capa genérica de divisiones. De modo que, no necesitamos depender del elemento `div`, por ejemplo, para darle vida a la página.

Un ejemplo claro de técnicas de reemplazo lo podéis encontrar en el famoso [CSS Zen Garden](http://www.csszengarden.com/). Hay cientos de ejemplos usando estrictamente el mismo documento de HTML. Lo único que van variando es el documento CSS y con eso es suficiente.



#### Poniendo en práctica el asunto





Para comprender esta técnica, recurriré a un simple ejemplo: un logotipo usando la técnica de reemplazo, valiéndome sólo de las propiedades de `background` en CSS y un HTML que no tiene ningún elemento `img` a la vista.





Si realizara este simple paso a la antigua, lo haría de esta forma:




    
    <code class="html">&lt;div id="header"&gt;
    	&lt;img src="/images/logo.png" alt="Acme" class="logo" /&gt;
    &lt;/div&gt;</code>





En mi hoja de estilos escribiría algo así:




    
    <code class="css">div#header img {
    	display: block;
    	margin: 10px;
    	border: 0;
    }</code>





Okey, ese ejemplo mostraría un logotipo en la esquina superior izquierda de una página. Ahora bien, existen algunos dilemas semánticos y prácticos con este ejemplo.





Los dilemas semánticos están relacionados a cómo se aprovecharía esta información: si no hay posibilidad de ver imágenes, _¿qué haríamos?_ Si una persona entra en el sitio con un lector de pantalla, _¿qué debería escuchar?_ _¿una imagen o un texto más acorde a la situación?_.





Los dilemas prácticos están relacionados directamente con la técnica de separación de contenido de la presentación: _¿Es un logotipo parte del contenido o es parte de la presentación?_ Si quiero cambiar de imagen en un futuro o, dependiendo la situación, página o sección _¿tengo que volver a tocar todos los documentos?_ Por eso, si controlamos todo por CSS, ganaríamos un nivel de semántica diferente y un nivel práctico escalable.





Si montáramos esto de la forma más semántica posible, obteniendo el mismo resultado visual, pero a la vez, ganando sonoridad (frente a lectores de pantalla), compatibilidad con dispositivos que no procesan imágenes y además, escalable (controlar la presentación desde un fichero CSS), quedaría así:




    
    <code class="html">&lt;div id="header"&gt;
    	&lt;h1&gt;Acme&lt;/h1&gt;
    &lt;/div&gt;</code>





En este código HTML he ganado dos cosas: reducción de caracteres utilizados y legibilidad al 100%. Esto, en todos los dispositivos que puedan procesar HTML, será visto o escuchado. Ahora, necesitamos aplicar reglas de CSS, utilizando la técnica de reemplazo de elementos:




    
    <code class="css">div#header h1 {
    	width: 200px; /* el largo de nuestro logo */
    	height: 75px; /* el alto de nuestro logo */
    	background-image: url(/images/logo.png);
    	background-repeat: none;
    	margin: 10px;
    }</code>





Este CSS contiene toda la información que necesita el elemento `h1` para ubicarse en la página y mostrar una imagen de fondo que antes era utilizada en el mismo código HTML pero que ahora viene de CSS. Es perfecto en caso de que un dispositivo no soporte CSS, muestre la palabra "Acme" con las propiedades del elemento `h1` o que se escuche por un lector de pantalla con otro tono e informando el logotipo como el titular más importante del sitio y no como una imagen más del montón. El logotipo, que anteriormente poníamos como una imagen más, tiene una medida de 200px largo por 75px de alto, el cual debemos colocar en la hoja de estilos. Para ello y, para que no existan otros problemas, debemos transformar las características espaciales de la capa contenedora (en este caso es el `h1`) para que tenga las mismas características que la imagen. Es por eso que en el ejemplo ofrecido, el h1 tiene el mismo alto y ancho, además de las otras características de posición, como lo son los márgenes. Resumiendo: debemos preparar la capa para que la imagen encaje _a la perfección_.





![Lotipo y contenido superpuestos](http://www.minid.net/images/lotipo_y_contenido_superpuestos.png)





Sobre la imagen de fondo, saldrá la palabra que contiene todavía el `&lt;h1&gt;Acme&lt;/h1&gt;`, aquí nos topamos con la primera dificultad y decisión para quitarlo. Existen formas; algunas requieren de código HTML adicional, otras requieren cambios en el CSS que dejan de lado a los lectores de pantalla, y algunas, no tan drásticas y mejor adaptadas al caso, pero aún así eliminan el «foco», que es un factor importante cuando se navega con teclado. Voy a mostrar todos los casos, para seguir ampliando la información.





#### Con código adicional de HTML





Este ejemplo muestra como podemos esconder la palabra «Acme» y tener nuestro logotipo funcionando. En nuestro documento HTML escribimos:




    
    <code class="html">&lt;div id="header"&gt;
    	&lt;h1&gt;&lt;span&gt;Acme&lt;/span&gt;&lt;/h1&gt;
    &lt;/div&gt;</code>





En nuestro documento CSS escribimos la siguiente regla:




    
    <code class="css">div#header h1 {
    	width: 200px; /* el largo de nuestro logo */
    	height: 75px; /* el alto de nuestro logo */
    	background-image: url(/images/logo.png);
    	background-repeat: none;
    	margin: 10px;
    }
    
    	div#header h1 span {
    		visibility: hidden;
    	}</code>


	


El primer problema que le encuentro es que, visibility: hidden elimina el elemento de la pantalla. Se pierde foco y es muy probable que el 97% de los lectores de pantalla no mencionarán la palabra «Acme» como hemos pactado que tenía que salir. Y si en vez de usar eso, utilizamos esta otra posibilidad:




    
    <code class="css">div#header h1 {
    	width: 200px; /* el largo de nuestro logo */
    	height: 75px; /* el alto de nuestro logo */
    	background-image: url(/images/logo.png);
    	background-repeat: none;
    	margin: 10px;
    }
    
    	div#header h1 span {
    		display: none;
    	}</code>


	


Este ejemplo elimina la palabra _Acme_ de la pantalla, pero tiene un inconveniente: también elimina el foco, los lectores de pantalla no lo reproducirán. Es como si el elemento `span` no existiera en el árbol DOM. Es por eso que este ejemplo debemos desecharlo también. La propiedad `display: none` directamente elimina los elementos del árbol DOM, lo que imposibilita también a todos los lectores a formular el contenido de forma sonora. Mucho cuidado cuando utilicéis esta propiedad





#### La posible vía, la más sana de todas





Trasteando con pruebas, hace ya un tiempo, di con un caso en el que obtenía todos los valores necesarios, salvaguardando el foco, utilizando una propiedad que controla el texto en una caja: `text-indent`. El ejemplo final debería quedar:




    
    <code class="css">div#header h1 {
    	width: 200px; /* el largo de nuestro logo */
    	height: 75px; /* el alto de nuestro logo */
    	background-image: url(/images/logo.png);
    	background-repeat: none;
    	margin: 10px;
    	text-indent: -20000px; /* saca el texto de foco */
    }</code>





Ahí obtenemos, en mi opinión, mejores resultados ocultando textos y dejando las propiedades de bloque y la imagen de fondo. Es la técnica que utilizo para mostrar el logotipo de minid.net, por ejemplo. El código de la hoja de estilos tiene esta regla:




    
    <code class="css">#header h1 {
    	background: url(/wp-content/themes/naab/images/logotipo.png) no-repeat;
    	width: 592px;
    	height: 193px;
    	margin: 20px auto 0 auto;
    	padding: 0;
    	}
    
    	#header h1 a {
    		text-indent: -9999px;
    		width: 592px;
    		height: 193px;
    		display: block;
    	}</code>


	
	


De esta forma he cambiado 3 variaciones del logotipos sólo subiendo la imagen a la carpeta; usando el mismo nombre y cambiando los valores en la hoja de estilos. Así ninguna de las cabeceras de HTML fueron modificadas. Podría hacer más cambios sin necesidad de tocar un sola letra en mis documentos HTML.





#### Arreglando el problema del foco





El último ejemplo que he dado produce un problema, menor en mi opinión, en la visualización del documento. Cuando saltamos de «foco» presionando la tecla Tab, vemos como se dibuja una _outline_ (línea exterior) sobre el enlace, dejando un aspecto horrendo cuando se utiliza el `text-indent: -9999px;`. Pueden comprobar el efecto haciendo Tab ahora mismo por este documento. Observarán como se dibuja la línea exterior sobre el logotipo y sigue hasta perderse por el margen izquierdo. Para solucionar este problema, utilicen esta regla sobre el elemento al que habéis aplicado `text-indent`:




    
    <code class="css">h1 a:focus {
    	outline: none;
    }</code>





En este caso, aplico la propiedad `outline: none;` al elemento `a` porque es el causante de generar un foco, ya que es un enlace. De esta forma, tenemos varios flancos protegidos: el ejemplo sigue siendo semántico, es práctico en cuanto mencionemos la palabra "escalable" y generamos menos código, lo cual se traduce en: menos trabajo y mejor orden.





### Resumen





Entendiendo esto, podemos aplicar esta técnica para un montón de casos. Algunos muy buenos se pueden ver, como revelé unos párrafos más arriba, en el sitio del [CSS Zen Garden](http://www.csszengarden.com/), donde hacen el uso intensivo de esta técnica, superponiendo imágenes de fondo, reemplazando títulos por imágenes y dando estilo con pequeños detalles a elementos que, de forma natural, necesitan un poco de mano y cariño.





Los que podáis leer en catalán o, entenderlo a medias, pueden seguir este ejemplo de [técnica de reemplazo de imágenes](http://css.artnau.com/metode-de-reemplacament-dimatges-definitiu-rid/) en la web de Arnau.





La próxima charla, me gustaría más debatir el modelo de caja, las propiedades de los elementos con respecto al espacio, pero es un tema largo y necesita un buen análisis para no marear al resto.
  *[W3C]: World Wide Web Consortium
  *[HTML]: Hipertext Markup Language
  *[etc.]: etcétera
  *[ejem.]: Ejemplo
  *[CSS]: Cascading Style Sheet
