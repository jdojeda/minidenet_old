---
comments: false
date: 2004-08-30 13:01:00
layout: post
slug: de-una-a-la-otra
title: De una a la otra
wordpress_id: 1945
categories:
- Internet
---

¿HTML a XHTML? Ya me sé todo, pero me quedan cosas en el tintero… ¿Cómo encuentro un reemplazo de una etiqueta a otra? Esta es otra de las preguntas que no he podido cubrir en el artículo anterior [_las 13 leyes de oro para dar el gran paso_](http://www.minid.net/archivos/categorias/xhtml/13_leyes_de_oro_para_dar_el_gran_paso.php).





![Gráfico](http://www.minid.net/images/apply-lang.png)





Antes de empezar hay que cambiar un concepto que muchos tienen en la cabeza todavía, se trata de para qué sirve XHTML y para que servía HTML. Como he mencionado cientos de veces en varios artículos tanto HTML como XHTML fueron creados para contener y estructurar información y no para dar colorcitos a la página, hacer formas, etc. La idea es que comiencen a pensar en XHTML u HTML como una herramienta para destacar contenido a nivel auditivo, semántico y de jerarquía.





#### Auditivo





Antes en HTML 4 las etiquetas abundaban en temas gráficos y no tanto en los auditivos. Uno de los ejemplos claros y que más hablamos aquí son las famosas `&lt;b&gt;` e `&lt;i&gt;`. Tanto `&lt;b&gt;` como `&lt;i&gt;` fueron concebidas para ser etiquetas visuales y no de jerarquía o auditivas. Entonces hay que encontrar opciones que den lugar a la activación sonora y no a la visual.





#### Semántico





A nivel semántico estamos refiriéndonos al significado de algo, entonces, lo que conviene es armar el contenido (texto e imágenes) para que sea ameno para muchos dispositivos. Un ejemplo claro de semántica es la utilización de los atributos `alt="…"`, `title="…"`, `hreflang="…"`, `lang="…"` en las etiquetas más utilizadas para jerarquizar el contenido.





#### Jerarquía





Esta es una de las menos utilizadas de todas y una de las más importantes. Saber definir jerarquías de contenidos dentro de una página es lo más importante. Veamos, si abrimos un diario, un libro o una revista, nos encontraremos con ciertas convenciones. Desde un índice hasta títulos, orden de importancia de artículos etc. En las páginas web, podemos no solo definir una jerarquía visual como en un diario sino que además definirla a nivel código (interpretable por máquina). Hay que saber cómo jerarquizar contenido: --esto es un título, utilizaremos una etiqueta de títulos. --Esto es un párrafo, utilizaremos una etiqueta de párrafos. Y así con todo.





Entonces resumiendo:







  * Mirar el contenido y clasificarlo con jerarquías.


  * Reemplazar y comenzar a utilizar etiquetas que tengan más importancia semántica y auditiva.


  * Completar las etiquetas con atributos que enriquezcan el contenido y ayude a la semántica de las mismas.





### La famosa etiqueta `span` que todo lo puede





Esta parte me gusta. Esta etiqueta es una de las más utilizadas, abusadas de todas. La veréis por todos lados, en todas las circunstancias y sobre todo en las menos indicadas, pero realmente ¿para qué sirve? Una definición del W3C:





> The DIV and SPAN elements, in conjunction with the id and class attributes, offer a generic mechanism for adding structure to documents. These elements define content to be inline (SPAN) or block-level (DIV) but impose no other presentational idioms on the content. Thus, authors may use these elements in conjunction with style sheets, the lang attribute, etc., to tailor HTML to their own needs and tastes.





Como bien lo explica el W3C el elemento SPAN fue concebido para diferenciar ciertas cosas con lenguajes y clases a los elementos en línea, ¡pero no para crear nuevos elementos!





Esto tranquilamente se puede solucionar, hay que evitar usar span todo lo posible y aprovechar la semántica de los otros elementos. Un ejemplo claro de lo que hablo:





> #### Ejemplo imaginario:
> 
> Quiero hacer negritas con colores rojos dentro de mi texto. Entonces para ello crearé una clase llamada rojito en mi hoja de estilo para luego hacer que ciertas palabras fueran negritas y rojas en mi HTML usando una span. Abro el HTML y escribo:
>
>> `… este es un texto que va en &lt;span class="rojito"&gt;negrita y de color rojo&lt;/span&gt; ¡que guay! …`





No. No y no, no es lo mejor. Hay un método más apto que usar span. Podemos buscar en la lista de elementos y ver las opciones para primero: usar negrita en estado natural, que el mismo elemento ofrezca esta posibilidad. Luego buscar que ese elemento ofrezca el énfasis que estamos buscando auditivamente hablando. Finalizamos con ver si todas las negritas que queremos en nuestros textos sean de un color o si dado el caso queremos que solo una tenga color rojo. Si esto pasa, deberemos crear una clase que tendrá nuestra etiqueta seleccionada. El ejemplo más corto y fácil de hacer:





> Busco una etiqueta que cumpla los objetivos que quiero: enmarcado, énfasis y valor auditivo. He notado que strong cumple todos los requisitos. En mi texto cambio los span por strong:
>
>> `… este es un texto que va en &lt;strong class="rojito"&gt;negrita y de color rojo&lt;/strong&gt; que guay! …`
> 
> Luego en mi CSS hago una clase universal para color rojo:
>
>> `.rojito { color: red; }`
> 
> Listo. Ya puedo usar la clase .rojito para otros elementos que requieran el color rojo.





Pero… la etiqueta span es casi reemplazable! Siempre es útil la etiqueta span para muchos casos, no para éste que es perfectamente reemplazable por p:





> `&lt;span class="text"&gt;9 / 10 Charterhouse Buildings,&nbsp; Goswell Rd,&nbsp; London EC1M&nbsp; 7AT,&nbsp; United Kingdom &lt;/span&gt;&lt;span class="text"&gt;&lt;br&gt;&lt;/span&gt;&lt;span class="text"&gt;Telephone : + 44 (0)20&nbsp; 7253 4308 / Fax : + 44 (0)20 7253 5711 &lt;/span&gt;`





¿Para qué usar &lt;span class="text"&gt; cuando podemos usar una etiqueta más sonora, apta, sin clases, jerárquica y semántica como `&lt;p&gt;`? Veremos que el resultado visual es perfectamente el mismo y con más ventajas incluso:





> `&lt;p&gt;9 /10 Charterhouse Buildings, Goswell Rd, London EC1M 7AT, United Kingdom&lt;/p&gt;  

&lt;p&gt;Telephone : + 44 (0)20 7253 4308 / Fax : + 44 (0)20 7253 5711 &lt;/p&gt;`





¿No es más corto? ¿No es más semántico? ¿No es más jerárquico? Continuemos con otro ejemplo de span mal aplicado:





> `&lt;span class="titulo-principal"&gt;Argentina gana el oro en fútbol&lt;/span&gt;  

&lt;span class="subtitulo-texto"&gt;La selección arrasó en la categoría fútbol, con 17 partidos ganados, valla invicta y máximo goleador.&lt;/span&gt;  

&lt;span class="texto"&gt;Así es, la selección tuvo su mejor…&lt;/span&gt;`





Ahora que no me digan que estoy loco, o que soy un fanático, pero hay que ser fanático para tomar esta forma de hacer las cosas. ¿Por qué utilizan span para hacer títulos, subtítulos y textos? ¿Es que no hay otras alternativas?





> `&lt;h1&gt;Argentina gana el oro en fútbol&lt;/h1&gt;  

&lt;h2&gt;La selección arrasó en la categoría fútbol, con 17 partidos ganados, valla invicta y máximo goleador.&lt;/h2&gt;  

&lt;p&gt;Así es, la selección tuvo su mejor…&lt;/p&gt;`





En vez de utilizar `&lt;span class="titulo-principal&gt;` me aprovecho de que existe `&lt;h1&gt;`. `&lt;h1&gt;` es el nivel o cabecera más importante que podemos obtener a niveles jerárquicos en un documento de HTML, XHTML. Tanto así que sus propiedades no sólo son aptas a nivel auditivo, sino a nivel visual: por naturaleza `&lt;h1&gt;` es más grande, con más énfasis que el resto de los `&lt;h&gt;`. Uso `&lt;h1&gt;` para el título principal, luego para el subtitulo (otro título con menos importancia) uso `&lt;h2&gt;`, luego si tengo que volver a utilizar otro título que baje de importancia o dependa de un tema del que se está hablando uso `&lt;h3&gt;`, `&lt;h4&gt;` y así sucesivamente.





Fácil, simple, jerárquico, semántico y auditivo.





Una buena aplicación de `&lt;span&gt;` es cuando llegado el no hay etiqueta o la opción no es adecuada para que auditivamente resalte del resto. Ahí, en este caso podemos servirnos de span para declarar que esa porción de textos lleva alguna palabra en otro idioma:





> `&lt;p&gt;Looks i was watching &lt;cite lang="fr"&gt;Mêlée: garçons &lt;span lang="en"&gt;in the house&lt;/span&gt;&lt;/cite&gt;&lt;/p&gt;`





Este ejemplo es un caso concreto. No queremos poner más `&lt;em lang="…"&gt;` ni otra etiqueta dentro de la etiqueta `&lt;cite&gt;`, así que recurrimos al `&lt;span&gt;` con un atributo `lang="…"` para poder definir esa pequeña porción de texto en otro idioma.





Otra aplicación interesante es visual. Utilizamos span para definir dentro de una etiqueta que lo jerarquiza todo:





> `&lt;h1&gt;Este es nuestro &lt;span class="negre"&gt;titulo&lt;/span&gt;, veamos el weblog de &lt;span class="inicial-rojo"&gt;tinta&lt;/span&gt;&lt;span class="azul"&gt;china&lt;/span&gt;&lt;/h1&gt;`





Aquí no deseamos poner otros tags con preferencia auditiva sino que deseamos tener más variedad visual dentro de la jerarquía `&lt;h1&gt;`. Con la ayuda de las etiquetas `&lt;span&gt;` y algunas clases `class="…"` en nuestra hoja de estilos podemos definir más de un color de un `&lt;h1&gt;`





### Ejemplos prácticos de una a la otra





Veamos algunos ejemplos que anteriormente hacíamos equivocadamente por unas prácticas más fáciles con mejores resultados:






Negritas, itálicas

    

Cambia las `&lt;b&gt;` por los `&lt;strong&gt;`. El resultado visual es el mismo, pero auditivamente las palabras suenan con más énfasis.

Cambia las `&lt;i&gt;` por los `&lt;em&gt;`. El resultado visual es el mismo, pero auditivamente las palabras suenan con más énfasis.


Los títulos y los párrafos

    

Cambia los `&lt;span class="titulo"&gt;` y los `&lt;span class="textos"&gt;` por cabeceras `&lt;h1&gt;`, `&lt;h2&gt;`, `&lt;h3&gt;`, `&lt;h4&gt;`, `&lt;h5&gt;`, `&lt;h6&gt;` y para los párrafos de texto utiliza `&lt;p&gt;`, `&lt;blockquote&gt;`.


Citas, comillas, listados

    

Cambia la usanza de excluir `&lt;ul&gt;`, `&lt;ol&gt;` y solo utilizar `&lt;li&gt;` para hacer listados. Los buenos ejemplos se diferencian en que aprovechas los beneficios automáticos de `&lt;ul&gt;` para listas sin orden, `&lt;ol&gt;` para las listas ordenadas. También obvia hacer listas ordenadas escribiendo los puntos a mano:

> `1. esta es la primera opción  
2. Esta es la segunda opción.  
3. Esta es la tercera opción.`

Suenan distinto y no tienen un orden jerárquico bien definido.

Las palabras que sean citas, nombres propios o excepciones de otra lengua, pueden expresarse bien usando `&lt;cite&gt;`

Cambia el uso de las comillas dobles en los textos " por unas semánticas utilizando el tag `&lt;q&gt;`. Además de ser práctico, se pueden utilizar otras opciones como atributos de lenguajes, títulos, ID, classes. He escrito un buen artículo sobre ello llamado [_especial con comillas_](http://www.minid.net/articulos/css/especial_con_comillas.php).


Abreviaturas, acrónimos

    

Muchas veces escribimos FTP, UNESCO, Ejem., etc., TV y muchas veces no sabemos de qué se trata. Para ello existen dos etiquetas aptas y especiales para estos casos: `&lt;abbr&gt;` para las abreviaturas y `&lt;acronym&gt;` para los acrónimos. He escrito un artículo especialmente para aprender a usar `&lt;abbr&gt;` y `&lt;acronym&gt;` llamado [_Consejos sobre el uso de acronym y abbr_](http://www.minid.net/archivos/categorias/internet/consejos_sobre_el_uso_de_acronym_y_abbr.php).






### Resumen





Aprenderse qué es cada cosa no cuesta nada. Es más fácil saber para qué sirve cada etiqueta que hacerlo todo sin saberlo. Luego los arreglos toman tiempo y le quitan las ganas a uno. Los cambios son sin duda lo mismo pero: más sintético, fácil de aplicar y recordar, de cometer errores, de tener problemas de relaciones.





Este paso de síntesis del código, les ayudará en un futuro a quienes se están entrenando en el uso del CSS. Dado que con un código bien armado y sintético podrán aprovechar el verdadero potencial del CSS que son las herencias, cascada, etc.
