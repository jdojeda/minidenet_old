---
comments: false
date: 2004-08-28 18:44:25
layout: post
slug: 13-leyes-de-oro-para-dar-el-gran-paso
title: 13 leyes de oro para dar el gran paso
wordpress_id: 1943
categories:
- Internet
---

Amigos, aquellos que están decididos pero no saben cómo entrar en el mundo XHTML, este post quizás les aclare algunas cosas. El gran paso al mundo XHTML es simple: las reglas.





En todo lenguaje encontraréis reglas básicas. XHTML no es un lenguaje distinto a HTML, para nada, sólo tiene unas reglas básicas que lo hacen especial. Esas reglas te permiten hacer páginas válidas. Que una página sea válida no asegura que sea buena o que solucione todos los problemas. Para ello, sólo mejor es estudiar _el propósito de cada etiqueta_. Esto nos permite discernir que etiquetas debemos utilizar. Esto (las reglas y los propósitos) nos permitirán no sólo crear estupendos ejemplos de código (simple, semántico y accesible) sino también páginas que validan, son fáciles de mantener y re-utilizar.





Volviendo al primer escalón de nuestro gran paso... las reglas, ¿Dónde están las reglas? En cualquier lenguaje (Ej. PHP) pueden averiguar comprando un manual, o bien, yendo a la página oficial. Para XHTML basta con acercarse a la web de W3C y buscar dicha especificación.





[W3C](http://www.w3.org/) te ofrece [muchas especificaciones de XHTML](http://www.w3.org/MarkUp/). Tanto de las [versiones 1.0](http://www.w3.org/TR/xhtml1) como [1.1](http://www.w3.org/TR/xhtml11/), [2](http://www.w3.org/TR/xhtml2/), [básicas](http://www.w3.org/TR/xhtml-basic/), [por módulos](http://www.w3.org/TR/xhtml-modularization/), etc. No hay motivos para asustarse al ver tantas opciones. Les explicaré la razón de ello. XHTML no es un invento nuevo del HTML. _Es una mejora_, _una revisión de lo que se hizo en el pasado_. Los científicos y desarrolladores que colaboran en estos proyectos van mirando las necesidades y las nuevas posibilidades de estos lenguajes, creando así nuevas versiones con reglas cambiadas. Como HTML no satisfacía dichas condiciones, se creó XHTML, que es HTML pero con reglas principales de XML. XML es un lenguaje tan abierto y mutante que necesita reglas. Esas reglas básicas se aplicaron a HTML dando por creado XHTML. XHTML no deja de ser un HTML con unas reglas más estrictas que permiten una cierta uniformidad a la hora de hacer cosas. Esta uniformidad asegura a cualquier fabricante **un margen o unos límites** para sus herramientas (Ej. Un navegador). Imagínense que HTML siga siendo un lenguaje anárquico, que existan miles de etiquetas provenientes de muchos lados en donde existen reglas. En estas condiciones, **no habría uniformidad**, no existirían patrones de los cuales los fabricantes se puedan coger para hacer una herramienta que muestre, analice y aproveche el HTML, sino que sería el caos (muy lejos de eso no estamos todavía).





Entonces, primero las reglas. XHTML tiene unas reglas muy básicas. Citaré paso a paso las reglas del XHTML:





### Regla 1: Todos los documentos XHTML necesitan especificarse con un DTD





No es válido, **bajo ninguna circunstancia** un documento sin un DTD. Un DTD es un _Document Type Declaration_. Es otro documento que especifica la naturaleza del nuestro. Por eso, todos los documento tienen que llevar por cojones esta instrucción. Esa instrucción, sirve **para diferenciar el tipo de XHTML**, o sea, si el documento es estricto _tendrá un DTD estricto_, si el documento es transitorio (que está pasando una transición a un lenguaje estricto) _llevará un DTD Transitional_ y si el documento tiene frames o es modular llevará el que le corresponda.





> #### Metáfora aplicable:
> 
> De la misma forma que un agente de la policía **necesita una tarjeta** que lo acredite como tal, un documento de XHTML **necesita un DTD** para presentarse ante el navegador y responder como tal.





Sin DTD, **la página no valida**. El navegador **no sabe que tipo de documento mostrará** al usuario, por lo que estará a la expectativa poniendo todo su motor y esfuerzo para mostrar el documento bien… eso lo podemos traducir en: _más trabajo para el navegador_.





### Regla 2: El elemento raíz de cada documento deberá ser la etiqueta `&lt;html&gt;`.





Si no se encuentra esta etiqueta **no hay documento de XHTML**. Además esta etiqueta tiene que especificar una cosa importante: el `namespace`. El `namespace` es una dirección donde se justifican los tags que utilizaremos. Sin esto, es como si un agente de policía te mostrara su identificación y tú no veas de qué central de policía es, cómo se llama o a quién reclamarle algo.





Además, la etiqueta `&lt;html&gt;` requiere de dos atributos importantes: _los idiomas_. Como todos los documentos **tienen que llevar un idioma especificado**, éstos deben anunciarse en **la primera etiqueta** utilizando los atributos `xml:lang="…"` y `lang="…"` a la vez. `xml:lang="…"` servirá para aquellos navegadores o dispositivos (Ej. Un teléfono móvil) que soporten atributos en XML (recuerden que, XHTML es básicamente el HTML que se quiere convertir en XML). Entonces, hemos de poner este atributo que no existe en el mundo HTML pero si en XML. Luego, debemos invertir golpes de tecla en otro atributo que sí pertenece al mundo HTML y es el atributo `lang="…"`. Este atributo ayuda a especificar en qué idioma estará escrito el documento, de la misma forma que lo hace xmlang pero escrito a la HTML.





### Regla 3: Los documentos deben ser gramaticalmente correctos





Aquí viene una regla fácil de conseguir. La gramaticalidad en HTML, XML, XHTML o cualquier documento de la web la relacionaremos con **la ortografía que escribiremos las etiquetas y ciertos atributos**. Si escribimos mal las etiquetas o nos olvidamos de ciertos detalles, lo que ocurrirá será en forma incierta que nuestro documento no valide o el mismo navegador obvie mostrarlo.





Por ello, aplicaremos una política _kosher_ para hacer nuestros documentos XHTML. Debemos tener en cuenta muchas cosas al escribir XHTML porque como había comentado anteriormente, los documentos son más estrictos que HTML y no nos dejan por ejemplo pasar siquiera la utilización de mayúsculas en las etiquetas de XHTML.





Los documentos tendrán que tener una característica de escritura y estar bien anidados. Anidados es otro término que confunde hasta el más experimentado en el tema. Creedme que hasta el más entrenado a veces se olvida de cerrar elementos de HTML o XHTML. Para ello, en XHTML esta regla es la más estricta de todas, no se puede uno **pasar por alto nada**, si empieza con una etiqueta, se debe cerrar al terminar de utilizar. Esto en HTML no es problema porque muchas equiquetas permiten el no cierre (Ej. `&lt;p&gt;`) pero en XHTML no.





Un ejemplo correcto:




    
    <code>&lt;p&gt;he aquí un &lt;em&gt;párrafo&lt;/em&gt; enfatizado.&lt;/p&gt;</code>





Como vemos en el ejemplo, hemos comenzado con la etiqueta `&lt;p&gt;` luego en medio con `&lt;em&gt;`, terminamos de usar `&lt;em&gt;` y lo cerramos con su correspondiente `&lt;/em&gt;` que luego terminamos cerrando todo con la etiqueta `&lt;/p&gt;` que antes habíamos usado con `&lt;p&gt;`.





Un ejemplo mal hecho:




    
    <code>&lt;p&gt;he aquí un &lt;em&gt;párrafo&lt;/p&gt; enfatizado&lt;/em&gt;</code>





Aquí notarán que algo no cuadra, si empezamos con `&lt;p&gt;` y luego abrimos otra etiqueta `&lt;em&gt;`, para cerrar bien debemos primero cerrar la segunda (la `&lt;em&gt;`) y no la primera. Usando `&lt;/em&gt;` antes que `&lt;/p&gt;` y luego sí `&lt;/p&gt;`.





Otro caso común y que a cualquiera le puede pasar:




    
    <code>&lt;p&gt;he aquí un &lt;i&gt;&lt;b&gt;párrafo&lt;/i&gt;&lt;/b&gt; enfatizado&lt;/p&gt;</code>





Aquí el error está dentro del mismo texto. Hemos hecho bien la primera parte (abrir y terminar el párrafo con `&lt;p&gt;` y `&lt;/p&gt;` pero dentro hemos abierto con `&lt;i&gt;` y cerramos con `&lt;/b&gt;`. Ahí está el problema. Debería ser:




    
    <code>…un &lt;b&gt;&lt;i&gt;párrafo&lt;/i&gt;&lt;/b&gt; enfatizado…</code>





Abrimos con un `&lt;b&gt;` y cerramos con un `&lt;/b&gt;`. Dentro de `&lt;b&gt;…&lt;/b&gt;` lo mismo, abrimos un `&lt;i&gt;` y cerramos con un `&lt;/i&gt;`.





Debido a la naturaleza de `&lt;b&gt;` e `&lt;i&gt;` éstos pueden ir en el orden que queramos: primero el `&lt;b&gt;` o el `&lt;i&gt;`. El resultado será siempre el mismo siempre y cuando se encuentren bien anidados.





Ojo con anidar elementos que no son propios de su naturaleza o los resultados serán desastrosos. Más adelante hablaré de la naturaleza de cada etiqueta.





### Regla 4: Los nombres de elementos y atributos deben escribirse en minúscula





Los documentos XHTML deben usar minúsculas para los nombres de todos los elementos y atributos HTML. Esta diferencia es necesaria porque XML es sensible a minúsculas y mayúsculas Ej. `&lt;li&gt;` e `&lt;LI&gt;` son etiquetas diferentes aunque se escriban igual. Por eso recuerden **las mayúsculas para escribir XHTML no están permitidas bajo ninguna circunstancia.**





### Regla 5: Todas etiquetas que no sean vacías deberán cerrarse





Con HTML 4.0, basado en SGML, en algunos elementos podía omitirse la etiqueta de cierre, de tal manera que la apertura de los elementos que les sucedían implicaba dicho cierre. **Esta omisión no está permitida en XHTML**, basado en XML. Todos los elementos que no estén declarados en la DTD como `EMPTY` deben tener una etiqueta de cierre.





Ejemplo:





La etiqueta `&lt;p&gt;` como no es una etiqueta vacía como `&lt;img&gt;` requiere de una misma etiqueta `&lt;p&gt;` adaptada de cierre: `&lt;/p&gt;`.





### Regla 6: Los valores de los atributos deben ir entre comillas dobles (importante)





Todos los atributos usados en XHTML deben llevar comillas dobles: `lang="…"`. Las comillas simples pueden funcionar en otros tipos de documentos, la ausencia de las comillas también, pero en XHTML es importante **que cada atributo tenga comillas dobles**. Sin estas, el documento nunca validará y las cosas pueden ir a mal.





Antes podíamos escribir cosas como estas:




    
    <code>&lt;table cellspacing=2 cellpadding=5&gt; o &lt;table cellspacing='2' cellpadding='5'&gt;</code>





Ahora debería ser así:




    
    <code>&lt;table cellspacing="2" cellpadding="5"&gt;</code>





### Regla 7: Minimización de atributos





HTML soportaba la minimización de los atributos. Por ejemplo, `nowrap` era un atributo que se utilizaba en las celdas (`&lt;td&gt;`) de las tablas (`&lt;table&gt;`) para que no rompieran las líneas de textos o contenidos dependiendo el ancho natural de la página. Antes podían verse cosas como:




    
    <code>&lt;td nowarp&gt;Texto&lt;/td&gt;</code>





Esto no funciona en XHTML, deberías escribirlo como:




    
    <code>&lt;td nowrap=""&gt;</code> o <code>&lt;td nowrap="nowrap"&gt;</code>





### Regla 8: Elementos vacíos deben llevar una barra de cierre





¿Recuerdan todas esas etiquetas que no llevan una misma etiqueta de cierre? Ej.: `&lt;img&gt;`, `&lt;hr&gt;`, `&lt;input&gt;`. Bueno, todas estas etiquetas se llaman “elementos vacíos” porque no encierran contenidos sino que los referencian. Estos si o sí tienen que tener una barra de cierre /, sino el documento no valida y en algunos casos pueden obtenerse resultados no deseados:





#### Bien hecho:




    
    <code>&lt;p&gt;Esta es una imagen de mis vacaciones en Granada: &lt;img src="granada.png" alt="foto" /&gt;&lt;/p&gt;</code>





#### Mal hecho:




    
    <code>&lt;p&gt;Esta es una imagen de mis vacaciones en Granada: &lt;img src="granada.png" alt="foto" &gt;&lt;/p&gt;</code>





Nótese la barra al final de la etiqueta “/>”. También podemos verla en la etiqueta `&lt;hr&gt;` de esta forma `&lt;hr /&gt;`. ¿Por qué el espacio entre la barra y el nombre de etiqueta? Por motivos de compatibilidad con navegadores viejos. En un futuro, no hará falta.





### Regla 9: Elementos con atributos `id` y `name`





En HTML se utilizan atributos que tienen una función muy específica: definir identificadores o nombres que señalan algo. En HTML utilizabamos `name` y `id` para espeficar muchas cosas. En XHTML el uso de name está restringido tal es que sólo está permitido en la versión XHTML 1.0 transitional, o sea que si nuestro documento no tiene una DTD transiotional cualquier uso de name hará que nuestro documento no valide.





Otro factor importante que siempre se me pregunta en las charlas, curso que imparto son, ¿qué diferencias hay entre `name` y `id`? Bueno, name especifica lo mismo que id solo que id es único en todo el documento. Es una forma de decir este es la única etiqueta con este valor sirve para diferenciar una etiqueta de otras iguales.





En XHTML 1.0 transitional los valores que tengan name deberán incluirse un `id`:




    
    <code>&lt;td name="nombre" id="nombre"&gt;</code>





En XHTML 1.0 estricto o XHTML 1.1 los valores que tengan name deberán ser `id`:




    
    <code>&lt;td id="nombre"&gt;</code>





Bajo ninguna causa pueden llevar `name`. `id` al ser único, no puede repetirse este valor, o sea:




    
    <code>&lt;td id="nombre"&gt;&lt;a id="nombre"&gt;Enlace&lt;/a&gt;&lt;/td&gt;</code>





Los name pueden llevar números y letras indistintamente. Los `id` también pero deberán comenzar con una letra de la a &rarr; z ó de la z &rarr; a y luego números. Si esto se olvida **el documento no valida** y los resultados pueden ser no deseados.





### Regla 10: Conocer los elementos de bloque, linea y reemplazados





Cada elemento o etiqueta de XHTML y HTML tienen una naturaleza. Esta naturaleza se traduce en 3 estados conocidos como: _elementos de bloque, elementos de línea y elementos reemplazados_.





_Los elementos de bloque_ son todos aquellos que en su estado natural ocupan **toda una línea de pantalla**, y desplazan hacia abajo a otros elementos de bloque, linea o reemplazados.





_Los elementos de linea_ son todos aquellos que puestos en su estado natural se agolpan uno **al lado del otro** y se desplazan hacia abajo cuando el ancho de la pantalla no les deja hueco donde acomodarse.





_Los elementos reemplazados_ son todos aquellos que **un día fueron algo y hoy por determinada causa no lo son**. Si una imagen (elemento en linea) gracias a una propiedad escrita en CSS pasa a ser un elemento en bloque, este no es un elemento en bloque sino un elemento reemplazado que cumple las características de un elemento en bloque.





Aprenderse qué elementos son de linea o bloque es una tarea esencial para no cometer errores. En la siguente regla explico porqué es importante.





### Regla 11: No todos los elementos pueden ser anidados por otros elementos y viceversa





Tanto en HTML como XHTML se dan los casos que encerramos etiquetas dentro de otras etiquetas. Esto sirve para definir capas y ciertas cosas propias del documento. Ejemplo, todas las etiquetas de una página están encerradas por la etiqueta raíz `&lt;html&gt;` dada que ésta tiene esa peculiar función se le permite todas las excepciones. Pero hay casos que no, incluso por más que el navegador respete nuestra decisión de anidado de etiquetas, éstas no cumplirán ciertas reglas básicas:






`a`

    

No puede contener otros elementos `a`.


`pre`

    

No puede contener los elementos `img`, `object`, `big`, `small`, `sub` o `sup`.


`button`

    

No puede contener los elementos `input`, `select`, `textarea`, `label`, `button`, `form`, `fieldset`, `iframe` o `isindex`.


`label`

    

No puede contener otros elementos `label`.


`form`

    

No puede contener otros elementos `form`.






Por decirlo así, no debemos caer en ciertas irregularidades como:





#### Un elemento de linea que encierre a un elemento de bloque:




    
    <code>&lt;em&gt;&lt;p&gt;Este es un párrafo con &eacute;nfasis.&lt;/p&gt;&lt;/em&gt;</code>





#### Mejor así:




    
    <code>&lt;p&gt;&lt;em&gt;Este es un párrafo con &eacute;nfasis.&lt;/em&gt;&lt;/p&gt;</code>





Debéis tener sumo cuidado con el anidado. Esto se puede solucionar sabiendo qué elementos estáis usando, si son de línea, si son de bloque, etc.





### Regla 12: Aprenderse para qué sirve cada etiqueta





Es común entre los pasantes de HTML a XHTML que comentan la típica atrocidad de utilizar etiquetas que cumplen una función básica por otra que no la cumple. Un ejemplo claro que todos pueden ver en el diario [Clarín](http://www.clarin.com.ar) (**aviso:** no tengo nada contra esta gente), que utiliza HTML y CSS pero lo realiza con prácticas erróneas:




    
    <code>&lt;!--/VOLANTA--&gt;
    &lt;!-&lt;del&gt;TITULO&lt;/del&gt;-&gt;&lt;span class="tu1"&gt;
    El básquet juega 
    con Italia por el oro&lt;/span&gt;
    &lt;br clear="all"&gt;
    &lt;span class="sep"&gt;&lt;br&gt;
    &lt;br&gt;&lt;br&gt;&lt;br&gt;
    &lt;br&gt;&lt;br&gt;&lt;/span&gt;
    &lt;!--/TITULO--&gt;</code>





Como podrán observar, quieren reemplazar a una etiqueta importante como lo es `&lt;h1&gt;` por una de menos importancia como lo es `&lt;span&gt;`.





`&lt;h1&gt;` sería la etiqueta correcta para aplicar a un título en una página y, con el uso debido de CSS se puede obtener el mismo resultado y con mejores prestaciones que usando `&lt;span&gt;`. `&lt;span&gt;` es una etiqueta muda e invisible en el mundo HTML, sirve para crear elementos de línea con determinada `&lt;/p&gt;` función de CSS pero no para definir la estructura de un documento.





Otro caso me lo ha enviado una lectora que está trabajando en un proyecto que requiere el traspaso del antiguo HTML a XHTML:





> `Muchas gracias,&lt;br /&gt;He visto la luz. Ahora lo entiendo !!!!`
> 
> 

> 
> `Es decir, mi editor, en vez de meter una &lt;b&gt; puede meter un &lt;div id="negrita"&gt; y ese id esta recogido en una CSS estandar q le aplicará el estilo apropiado.`
> 
> 


> 
> `Ya se por donde tengo q seguir mirando.`





Aquí está claro, quieren reemplazar el viejo `&lt;b&gt;` (que sigue siendo válido pero a futuro no lo será) por una etiqueta `&lt;div id="negrita"&gt;` que tiene como intenciones reemplazar a la etiqueta `&lt;b&gt;`. En este caso lo correcto sería utilizar la etiqueta `&lt;strong&gt;`, porque es buena para marcar palabras y resaltarlas, tanto visualmente como auditivamente. `&lt;strong&gt;` cumple más funciones adecuadas para este caso que utilizando `&lt;span&gt;`, `&lt;div&gt;` u otra etiqueta que visualmente no se delate.





Sumo cuidado con estos cambios.





### Regla 13: Que una página valide no significa que ¡ya está todo dicho!





¡No! Equivocación número uno de todos los principiantes. No se asusten, pero es fácil hacer validar una página, ¡pero eso no quita que esté mal programada!. Comprobarlo con cualquier página bien programada. Puedo hacer un documento que valide pero que por dentro utilice métodos anticuados como el caso que hemos visto del Diario Clarín. Hay que tener mano y conocimientos para hacer una página que valide y esté bien estructurada. Por ello les recomiendo las reglas anteriores y por sobretodo saber discernir para que sirve cada etiqueta y utilizarlas para su función y no para su visualización. Para la visualización utilicen CSS.





#### Un caso válido pero mal aplicado:




    
    <code>&lt;p&gt;Este es un párrafo y 
    esta es una &lt;span class="negrita"&gt;negrita&lt;/span&gt;.&lt;/p&gt;</code>





#### Esto puede validar perfectamente pero:







  1. Se está empleando el tag `&lt;span&gt;` por otro que tiene más relevancia en estos casos como lo es `&lt;strong&gt;`.


  2. Se está escribiendo un atributo para luego en una plantilla de CSS seguir definiendo propiedades de grosor de letra, color, etc. Cuando el tag `&lt;strong&gt;` por naturaleza no necesita definición alguna.


  3. Se está llenando el código de etiquetas con fines visuales y no estructurales.


  4. Un lector de pantalla o un dispositivo que no entienda de CSS mostrará las etiquetas mal empleadas a su manera y no a la correcta.





Bueno, estas **13 reglas de oro** son simples. Saltarlas no les hará más que un daño que no tiene porqué. Se pueden obtener **iguales resultados y escribir menos** sabiendo qué usar y cómo. Los cambios en el futuro podrían ser menos dolorosos y no requerirán de tener que hacerlo todo de nuevo.





#### Cualquier duda consultar si o si estos recursos:







  * [Especificación XHTML 1.0](http://home.worldonline.es/jlgranad/xhtml/xhtml1.htm) en castellano del W3C


  * [Plantilla Maestra de XHTML](http://www.minid.net/utilidades/web/plantilla_maestra_de_xhtml.php) para tener una guía rápida y a mano de todos los elementos y sus funciones principales.


  * Un buen editor de HTML


  * [El validador del W3C](http://validator.w3.org/) a mano.





Con estas reglas y recursos ya puedes dar el gran paso.
  *[XHTML]: Extensible Hypertext Markup Language
  *[HTML]: Hypertext Markup Language
  *[PHP]: PHP: Hypertext Preprocessor (HTML-embedded scripting language)
