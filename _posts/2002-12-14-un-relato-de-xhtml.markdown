---
comments: false
date: 2002-12-14 20:08:35
layout: post
slug: un-relato-de-xhtml
title: Un relato de XHTML
wordpress_id: 741
categories:
- Internet
---

XHTML es eXtended HiperText Markupt Language, y es algo muy parecido a HTML, sólo que es el nuevo futuro de los lenguajes de etiquetas que se utilizarán, aquí aprenderás más sobre de que se trata XHTML, sus bondades, por qué elegirlo por qué no.





**Atención:** Este es un artículo largo, recomiendo que impriman esta página y la lean luego, también viene con ejemplos claros, pero desde un principio se tiene en cuenta que los que lean esto _deben tener algún conocimiento previo de HTML_.





## Introducción





Es tiempo de que pongamos las cartas sobre la mesa, hace tiempo que ha llegado la noticia que la W3C lanzó su especificación acerca de un nuevo lenguaje estructural o de etiquetas que esta basado en XML, y se lo ha llamado XHTML.





XHTML es un gran avance en la lucha por tener un/a mejor Internet, si bien para cuando había escrito este artículo ya estaba impuesto el XHTML 1.0, W3C ya ha sacado otra versión más la cual no varía demasiado sólo se han eliminado unos cuantos atributos y el nuevo spec es el XHTML 1.1, y es éste el cual utilizaremos en este artículo.





Como les relataba, XHTML es un lenguaje muy muy parecido al HTML que todos conocemos, la diferencia es que XHTML esta basado en el popular XML, se usan las mismas reglas que XML, y en cierto modo cada vez se lleva a estos lenguajes a una estandarización, o mejor dicho a una _modularización_, esto nos quiere decir que cada porción de información se aloja en un módulo, tal cual como explico en mi teoría del desarrollo modular.

            







## Las ventajas





Entre las ventajas del XHTML está la que mejor le asienta a mi felicidad y es _la separación del contenido del estilo_, separar totalmente la estructura de contenido en módulos, diferenciados por tags que únicamente indican de que se trata el contenido, estos se separan por ejemplo con éstos tags: ` &lt;p&gt;`, `&lt;strong&gt;`, etc.





Los antiguos tags de HTML 4.0 o 4.1 conocidos como ` &lt;font&gt;`, ya no tienen validez, por que en XHTML no hace falta que los tags lleven definiciones, toda la presentación de los documentos se cargan en una plantilla de estilos ó bien dicho CSS, _Cascading Style Sheets_.





O sea, si antes teníamos que escribir:





> `&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;Este es un texto&lt;/font&gt;&lt;/p&gt;`





Ahora solamente tenemos que hacerlo de esta forma:





En el CSS:





> `p { font-family: Arial; }`





Luego en el HTML:





> `&lt;p&gt;Este es un texto&lt;/p&gt;`





Si observan en el primer ejemplo, podrán observar la cantidad de atributos de más que posee, además del tag `&lt;font&gt;`.





Simple, sólo utilizamos el tag ` &lt;p&gt;`, limpio de atributos, sacamos el tag `font` ya que tampoco nos sirve, el cual debemos especificar en nuestra plantilla que el tag `&lt;p&gt;` debe estar formateado con la letra Arial.





### Render del XHTML en navegadores





Esto básicamente ya es utilizado en HTML, pero lo bueno es esto es que XHTML fuerza a usar CSS en los documentos, y también fuerza a no usar atributos en los tags.





Aunque los navegadores que existen en el mercado siguen haciendo las cosas mal, ustedes pueden utilizar atributos en los tags, los navegadores reconocerán y armaran la página aunque usemos XHTML 1.1 stricto, esto esta mal, los navegadores deberían prohibir mostrar el documento cuando se infringe una ley del XHTML.





Esto en XML no pasa, si en XML escribimos mal un tag, el documento no solo no va a validar sino que el la página se mostrará en blanco, o indicará un error dependiendo de la configuración de nuestro navegador.

 





Si programamos con XHTML y hacemos todo prolijo, el navegador mostrará todo mucho más rápido.





### Modularización y desarrollo genérico





Siguiendo con las ventajas, XHTML nos brinda una nueva forma de ordenar la información, gracias a que nos fuerza a modularizar el contenido, y nos fuerza a usar etiquetas limpias de atributos, podemos obtener un código limpio y que se armará y descargará rápidamente.





XHTML fue pensado también para que todo tipo de documento sea transportado a cualquier plataforma, XHTML podría ser sinónimo de hacer las cosas genéricas, compatibles con cualquier sistema operativo, pantalla, colores, resoluciones y tipografías.





Portar esta página a un sistema PDA como un PocketPC por ejemplo llevaría menos tiempo que si utilizara HTML, ya que usando HTML debo re-editar todo el documento para que se muestre legible y presentable en una PDA.





### Pensado para ser Cross-Browsing





Volviendo al caso de que no podemos usar atributos, ni tags propietarios de navegadores XHTML nos brinda una mayor compatibilidad entre navegadores, si algo se ve mal en XHTML es por que el **navegador tiene un bug**. En caso contrario, la página será casi sin excepción igual en todos los navegadores.





No se si habrán notado, este efecto de este tag se ve distinto en otro browser que imita o trata de soportar ese tag. Bueno eso se acabó.





Para que esto no pase, debemos tener en cuenta cómo desarrollamos nuestro código, y si algo persiste pueden reportar el error a su compañía favorita de navegador.





### Menor complejidad de los documentos





Si miramos una página HTML por dentro y miramos una hecha en XHTML vamos a notar que la primera esta más compleja que la segunda, ya que la segunda depende más del CSS que de los tags de presentación del HTML.





Desarrollar algo es menos complejo (A nivel de código hablo), más ordenado. Gracias al uso obligado de CSS podemos armar, cambiar páginas webs en muy poco tiempo.





Como no vamos a necesitar tocar o cambiar dentro del documento `.html`, `.asp` ó `.cualquierextension`, vamos a tocar más los CSS, y podremos hacer cosas más funcionales y de mejores prestaciones, por ejemplo que cada usuario pueda utilizar el color que desee para leer mejor ó que un usuario pueda configurar desde la misma página el tamaño de las letras.





### Descargas más rápidas





Dado que hacemos los documentos más limpios, y usamos estilos (CSS) que quedan en guardados en el caché de nuestra máquina, las páginas son más livianas y más rápidas a la hora de descarga.





### Mucha más importancia a la accesibilidad





XHTML obliga a utilizar más recursos que hacen las páginas más accesibles, de acuerdo con las guías de accesibilidad de la W3C.





Un ejemplo claro, es que XHTML incita a usar tags con funciones semánticas en vez de usar tags con funciones de presentación.





Por ejemplo el tag `&lt;b&gt;` y el tag `&lt;strong&gt;`, parece tonto pero los dos se ven igual en las páginas, pero ante un browser para discapacitados por ejemplo un browser para ciegos, el tag `&lt;b&gt;` suena totalmente distinto al tag `&lt;strong&gt;`, triste pero real.





Igualmente no quiero imaginarme lo que debe ser editar 200 documentos en html 4 que contienen el tag `&lt;b&gt;`, para eso ofrezco una solución y es usar Aural Style Sheets, con esto podemos especificar que el tag `&lt;b&gt;` suene al mismo tono que el tag `&lt;strong&gt;`.





Aunque nos hubiéramos ahorrado de hacerlo en un futuro podrían desarrollar directamente como les recomiendo.





### XHTML ingiere XML





Si hacemos las cosas mal, XHTML **no va a validar**, esto nos permite tener 0 error (siempre y cuando usemos una herramienta para validar), en cambio HTML acepta más errores, por ejemplo el uso de la sensitividad de las letras en los tags, la ausencia de comillas dobles, y muchás cosas más.





XHTML prácticamente tiene las mismas características del XML, solo que éste es de contención y el XML es de almacenamiento.



    



## Desventajas





Por que no todo lo que brilla es oro… XHTML lamentablemente tiene desventajas, tontas pero lo son.





Las únicas y pocas desventajas que he encontrado en el XHTML son, el que realizar cosas en XHMTL son mucho más complejas cuando se quieren hacer sitios al mejor estilo DHTML, Javascript. Dado que requerimos de mucha estructuración y no podemos utilizar atributos de presentación en los tags todo se torna más complejo, es por eso que XHTML requiere de **cierto atrevimiento**, pensar las cosas y hacerlas, pero les comento que esto no es un problema cuando se sabe utilizar CSS.





### Portar documentos en HTML 4 a XHMTL traen dolores de cabeza





Dado que muchos de los proyectos en los cuales estoy trabajando se encuentran mal desarrollados de un principio en HTML, y esto contradiciéndome en una forma de decir trae dolores de cabeza y una gran inversión de tiempo.





Igualmente la tecnología de hoy esta haciendo posible que programas como el [HTML Tidy](http://tidy.sourceforge.net/) convierta documentos mal formateados de HTML a documentos de XHTML bien formateados y que validarán con los estándares.



   



### Pocas referencias sobre XHTML





Un grave problema que existe es la escaseo  de referencias sobre desarrollar en XHTML, es por que es que escribo este artículo, además ya de por sí hay infinidades del sitios que hacen referencia a HTML y ni siquiera se ven buenos resultados.





Tratar de aprender XHTML leyendo los documentos de la W3C requiere de cierto conocimiento adicional, los specs están muy crípticos y no son del todo didácticos. Prácticamente asumen que todos somos genios para descifrar esos manuales.





Hay pocos sitios hechos en XHTML que demuestren que XHMTL vale la pena, si bien la mayoría de los sitios que hacen buen uso del XHTML son **sitios personales** en vez de **sitios comerciales**, pero poco a poco con esfuerzos de grandes desarrolladores (como ustedes y yo que compartimos el mismo ideal) estamos llevando poco a poco al XHTML a la práctica.





### El sub-mundo de los programas de desarrollo





Programas como Macromedia Dreamweaver _matan la posibilidad_ de tener documentos bien hechos en XHTML, dado que incentivan más el uso del mouse, en vez del uso del teclado para armar la página.





Además estos programas **no incentivan a aprender** a desarrollar buenos documentos, sino que incentivan a los desarrolladores a ser falsos innovadores o peor incentivan más a aprender a usar ese mismo programa, hay gente que compra libros de GoLive en vez de comprar un libro de HTML, el otro problema es que están siempre impartiéndoles desarrollar ciegamente sin mirar el código que han escrito, ej. Microsoft Frontpage, GoLive, Dreamweaver), ni tampoco ayudan en la validación de los documentos, pero atención no quiero generalizar, ni tampoco meter a todos los programas dentro de la bolsa.





En un futuro, estos programas ofrecerán más soporte a los estándares.





Cada vez que conozco a algún diseñador/a gráfico/a que utiliza estos programas siempre trato de incentivarlo/a a que aprenda todo a hacerlo a mano, no por cuestiones de elitismo, sino por cuestiones sanas.





## Cuando conviene desarrollar en XHMTL y cuando no





Como convenir, les diría que les conviene 100%, la web sería un lugar espléndido de usar. Te conviene por todas las ventajas antes nombradas.





Si estás por armar algún website el cual debe estar en varias plataformas como PDAS, kioscos interactivos, terminales, o otros medios electrónicos, XHTML es la opción que debes tomar.





Si lo que deseas hacer es algo más propio, sin necesidad de portarlo a otras plataformas, haciendo hincapié en presentaciones menos estandarizadas, no te recomiendo que desarrolles en XHTML, no vas a obtener los resultados deseados.





## Algunas reglas importantes del XHTML





Para que puedas ver cómo se desarrolla, porta, traspasa algo de HTML a XHTML debemos tener en cuenta ciertas reglas:





### Todos los documentos deben tener definidos un  &lt;!DOCTYPE





XHTML requiere que todos los documentos tengan definido un ` &lt;!DOCTYPE`, en XHTML existen tres tipos de documentos:





XHTML 1.1 Stricto





Este DTD es estricto y prohíbe al máximo todo tipo de presentación atributos y elementos de presentación en los documentos, una buena opción para llegar al punto máximo de desarrollo genérico. El ejemplo:





> `  

&lt;!DOCTYPE   

html PUBLIC   

&quot;-//W3C//DTD XHTML 1.1//EN&quot;  

&quot;http://www.w3.org/TR/&lt;br /&gt;xhtml11/DTD/xhtml11.dtd&quot;&gt;  

`





XHTML 1 Frameset





A diferencia con el 1.1 strict (estricto), éste agrega módulos que permite usar frames, si vamos a tener un sitio con frames lo mejor es usar este DTD en vez de la versión 1 por que si no la página no valida.





> `&lt;!DOCTYPE html PUBLIC &#34;-//W3C//DTD XHTML 1.0 Frameset//EN&#34;
> 
> 
        &#34;http://www.w3.org/TR/&lt;br /&gt;2000/REC-xhtml1-20000126/DTD/&lt;br /&gt;xhtml1-frameset.dtd&#34;&gt;`





XHTML 1 Transitional





Su definición lo dice todo, éste es la &#34;transición&#34; entre el DTD del HTML 4.1 al DTD del XHTML. éste agrega todos los atributos del HTML 4.1 y los del XML, es más permisivo que los anteriores, ya que se trata de una transición pero con la diferencia que ya se implementan las reglas nuevas del XML.





> `&lt;!DOCTYPE html PUBLIC &#34;-//W3C//DTD XHTML 1.0 Transitional//EN&#34;
> 
> 
    &#34;http://www.w3.org/TR/2000/&lt;br /&gt;REC-xhtml1-20000126/DTD/&lt;br /&gt;xhtml1-transitional.dtd&#34;&gt;`





### Todos los tags que no se cierran deben terminar con &#34;/&#34;





En el prehistórico HTML, existían tags como `&lt;hr&gt;`, `&lt;img&gt;`, `&lt;link&gt;`. Ahora también existen pero con la excepción de que todos los tags deben terminar con un espacio y una barra.





Ejemplo mal hecho:





> `&lt;h1&gt;Mi foto&lt;/h1&gt;&lt;img src=&#34;/imagenes/mifoto1.jpg&#34; alt=&#34;mi foto&#34;&gt;`





Ejemplo **bien** hecho:





> `&lt;h1&gt;Mi foto&lt;/h1&gt;&lt;img src=&#34;/imagenes/mifoto1.jpg&#34; alt=&#34;mi foto&#34; /&gt;`





Nótese que al final del último ejemplo, se agregó un espacio y una barra (&#34;foward slash&#34;).





Esto mismo se debe aplicar a todos los tags que no tienen o depende de un tag para cerrarse… el tag `&lt;b&gt;` no lo necesita por que cierra con un `&lt;/b&gt;`.





No quiero escribir todos los tags que son simples, pero si se olvidan de algunos ustedes se pueden darse cuenta en el validador.





Aquí les dejo algunos ejemplos que usamos cotidianamente `&lt;br /&gt;`, `&lt;hr /&gt;`, `&lt;img src=&#34;&#34; /&gt;`.





### Todos los tags y atributos en minúsculas y quoteados.





Wow la palabra tag la tengo entendida pero &#34;cuoteados&#34;? Hehe… viene del término &#34;quote&#34;, cuando nos referimos a tener todo &#34;cuoteado&#34;, nos referimos a usar signos de exclamación en los atributos.





Los browsers aceptan cualquier cosa… es por eso que que debemos agregar `&#34;&#34;` a todos los atributos, inclusive al famoso `nowrap`, `noshade`.





Ejemplo mal hecho





> `&lt;td&gt;Mi foto&lt;/td&gt;&lt;br /&gt;&lt;td&gt;&lt;img src=/imagenes/mifoto1.jpg alt=mi foto /&gt;&lt;/td&gt;`





Si pueden notar entre `/imagenes/mifoto1.jpg` y el atributo `alt=mi foto`, no hay quotation marks (`&#34;&#34;`), esto funciona en los navegadores, pero no valida el documento.





Ejemplo **bien** hecho





> `&lt;td&gt;Mi foto&lt;/td&gt;&lt;br /&gt;&lt;td&gt;&lt;img src=&#34;/imagenes/mifoto1.jpg&#34; alt=&#34;mi foto&#34; /&gt;&lt;/td&gt;`





Ahora veamos los ejemplos raros, esos que siempre nos tienen dos horas frente al validador de la W3C, el `noshade` y el `nowrap`, que son los más usados.





Ejemplo de un `noshade` mal hecho:





> `&lt;hr noshade /&gt;`





Ejemplo de un `noshade` bien hecho:





> `&lt;hr noshade=&#34;&#34; /&gt;`





Listo, así de vacío funciona, también podemos poner cualquier palabra dentro del mismo que no pasa nada, y el código valida.





éste mismo ejemplo funciona para el `nowrap`.





Todos los tags menos el `DOCTYPE`, deben estar en minúsculas. Sin peros, sin chistar.





&#34;Horror&#34; cometido en xhtml:





> `&lt;p&gt;Mi foto&lt;/P&gt;`





> `&lt;P&gt;Mi foto&lt;/P&gt;`





> `&lt;p&gt;&lt;B&gt;Mi foto&lt;/B&gt;&lt;/P&gt;&lt;BR /&gt;&lt;p&gt;Mi foto&lt;/P&gt;`





Las cosas bien hechas en xhtml:





> `&lt;p&gt;Mi foto&lt;/p&gt;`





> `&lt;p&gt;&lt;b&gt;Mi foto&lt;/b&gt;&lt;/p&gt;&lt;br /&gt;&lt;p&gt;Mi foto&lt;/p&gt;`





Sin excepciones los tags tienen que estar en minúsculas. No traten de hacer todo en mayúsculas, se que es más fácil para muchos de comprender cuando miran el código pero lamentablemente las reglas del XML son así.





### Los tags deben estar bien &#34;anidados&#34; ó bien agrupados.





En XHTML todo tiene que ir por la misma mano… nadie va por el carril opuesto por que se cree que es re-pistola.





Por eso, debemos agrupar bien los tags, **y en el orden correcto**.





En xhtml y html y la mayoría de los lenguajes de este tipo esta regla **es vital** para la validación. Además, debemos **aprender a discernir** entre que elemento es un &#34;in-line&#34; o un &#34;block&#34; element, para eso debemos leer el spec en la W3c sobre cada elemento.





Por ejemplo un elemento en linea (&#34;in-line element&#34;) ej. `&lt;span&gt;`, no puede encerrar a un elemento como `&lt;p&gt;`. A continuación los ejemplos.





Debes ir a prisión por esto:





> `&lt;span class=&#34;gigi&#34;&gt;&lt;b&gt;&lt;p&gt;Yo&lt;/b&gt; el Rey de inglaterra…&lt;/p&gt;&lt;/span&gt;`





Así te ganas libertad condicional:





> `&lt;p&gt;&lt;span class=&#34;gigi&#34;&gt;&lt;b&gt;Yo&lt;/b&gt; el Rey de Inglaterra.&lt;/span&gt;&lt;/p&gt;`





Noten que los tags conviven bien… están bien organizados, cada uno en su lugar si se abre un tag se cierra con el mismo tag… no pueden entrelazarse entre sí.





Así quedas libre y te perdonamos ;):





> `&lt;p class=&#34;gigi&#34;&gt;&lt;b&gt;Yo&lt;/b&gt; el Rey de Inglaterra.&lt;/p&gt;`





En este ejemplo eliminamos el tag `&lt;span&gt;`, y al tag `&lt;p&gt;` le ubicamos la clase `&#34;gigi&#34;`, así de esta forma nos ahorramos código.





### Usa caracteres ISO para identificar caracteres raros, acentos, y simbología





En muchos casos, nosotros escribimos (más la lengua castellana) con acentos, diéresis, etc. también usamos símbolos como &copy;, pero todos nosotros no usamos PC solamente, usamos Macintosh y otros sistemas como teléfonos celulares u otros dispositivos.





Es por eso que necesitamos más que nunca una compatibilidad, si yo en mi sistema Macintosh escribiera un simple acento &#34;á&#34;, las personas que tengan Macintosh podrán verlo perfectamente más si el documento esta en formato Mac, pero si esta en formato DOS o UNIX, aparecerán los famosos símbolos raros y el validador mostrará un error.





Para esto debemos decirle al documento que la letra &#34;á&#34; acentuada en el código HTML debe escribirse así `&#34;&amp;acute;&#34;`, vamos a un ejemplo.





En nuestro código en XHTML mal hecho:





> `Recuerdo el d&iacute;a que salimos por la ventana de nuestra casa.`





Sin darnos cuenta y con buena intención de escribir código a mano usamos la acentuación de nuestro teclado, normalmente como lo hacemos siempre pero nos olvidamos que en muchos casos los acentos y símbolos raros no se ven en muchas máquinas, para eso debemos buscar en nuestro programa si tiene alguna función para convertir los acentos y símbolos que escribimos a entidades de HTML por ejemplo de convertir de &#34;á&#34; a `&#34;&amp;aacute;&#34;`.





La forma correcta sería:





> `Recuerdo el d&amp;iacute;a que salimos por la ventana de nuestra casa.`





Hoy en día, hay muchos programas decentes que hacen esta tarea perfectamente y muy rápido y sin errores, por ejemplo Macromedia Homesite lo hace, también lo hace el [HTML Tidy](http://tidy.sourceforge.net/), pero atención los que quieran usar el [HTML Tidy](http://tidy.sourceforge.net/), si quieren tener buen resultado deben hacer estos tres pasos:





  


  * Lee el manual.


  * Guarda una copia de seguridad del archivo.


  * Lee el manual otra vez.





Tips &copy; J. [Zeldman](http://www.zeldman.com).





## Notas finales





Aprender XHTML es cosa de sentarse a experimentar y seguir ciertas reglas, con un poco de paciencia y dedicación se puede obtener resultados buenos en 10 minutos.





Pueden mirar todo el código de este sitio para darse cuenta cómo están hechas algunas cosas, y si algo en particular que hice les gusta pueden extraerlo a su gusto, **menos el isotipo de mi marca** todo lo demás a gusto ;).





Si están obteniendo algún efecto no deseado por los browsers, traten de aplicar reglas de estilo con CSS, de modo a no usar muchos atributos, y de solucionar el problema.





Por más perfecto sea nuestro código pueden haber débiles desviaciones de terminación en diferentes navegadores.





Aunque es algo duro, los specs de la W3C muchas veces nos salvan, también pueden acceder a listas de correo que se especialicen en CSS, XHTML y XML, hay muchas y muy buenas, no todas son en castellano, es más no conozco una :), pero puedo recomendarles una muy buena en inglés donde hay gente de habla castellana que responde y son las listas de [Evolt.org](http://www.evolt.org).





Si el problema ya es un quiste que duele… y no encuentras la solución [puedes escribirme](mailto:biotwo@hotmail.com), pero realmente me gustaría que me sugieras cosas que has descubierto y no que yo termine siendo tu &#34;decodificador de bugs&#34;. No soy malo… siempre respondo, sólo que a veces se torna un caos.





últimamente me encuentro traduciendo los specs de XHTML, CSS 3 y XPath al idioma castellano para la W3C.





Suerte en tu aventura por el **XHTML!**





## Links relacionados al tema





Trato de ubicar links donde puedan aprender XHTML en castellano por hay tan pocos lugares, igualmente apunto a muchos que están construidos para que vean como lo lograron, igualmente algunos sitio buenos en inglés van a ser recomendados.





  


  * [Bitácora Tremendo](http://www.tremendo.com/bitacora/)


  * [Maelmori](http://www.maelmori.com)


  * [Zeldman.com (inglés)](http://www.zeldman.com)


  * [evolt.org (inglés)](http://www.evolt.org)


  * [Glish.com (inglés)](http://www.glish.com)


  * [W3C.org (inglés)](http://www.w3c.org)





Si conoces un sitio o tienes un sitio en castellano al cual podamos agregar aquí bienvenidas sean las segurencias.




 
