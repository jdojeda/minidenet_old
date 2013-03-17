---
comments: false
date: 2003-09-24 18:26:00
layout: post
slug: 25-errores-comunes-en-los-desarrollos-web
title: 25 errores comunes en los desarrollos Web
wordpress_id: 1190
categories:
- Internet
---

Conoce 25 errores típicos en desarrollos Web, desde problemas en el entendimiento de lo que es el HTML hasta típicos errores de arquitectura, pensamiento de sistemas.





Un popurrí de problemas, que todavía en el año 2003 teniendo tanta tecnología apta de buena calidad para desarrollar cosas sin problemas y en el menor tiempo, se sigan viendo ejemplos mediocres.





Como este es un artículo largo, recomiendo que lo imprimas, puedes hacerlo libremente sin apretar en ningún enlace raro que contenga Javascript, PHP, o cosas que interfieran, basta con buscar la opción de imprimir en tu navegador y esperar a que la impresora termine su trabajo.








  1. Error 1: Peso en la página


  2. Error 2: DTD inexistentes


  3. Error 3: Páginas sin el idioma especificado


  4. Error 4: Títulos de página molestos y enigmáticos


  5. Error 5: Sin imágenes navegar una página es imposible


  6. Error 6: URL matemáticas, casi imposibles de entender y recordar


  7. Error 7: Código prehistórico reemplazable con CSS


  8. Error 8: Olvidarse de la semántica, los documentos son una pila de información sin clasificar…


  9. Error 9: Sin estilos la página no se entiende, ni tiene significado…


  10. Error 10: Documentos Web que son enemigos de la impresora


  11. Error 11: Ventanas emergentes, inútiles, sin sentido y no muy accesibles.


  12. Error 12: Instale Flash, o de lo contrario no podrá navegar el sitio Web


  13. Error 13: Javascript supera todas las tecnologías de lenguajes, HTML, CSS, PHP, Javascript es la hostia…


  14. Error 14: HTML no es un lenguaje de modelaje de páginas


  15. Error 15: HTML comentado, es igual a más peso en la página


  16. Error 16: Utilizar hojas de estilo en línea o embebidas en los documentos


  17. Error 17: Javascript no modularizado


  18. Error 18: Elementos Meta inservibles…


  19. Error 19: Mapa Web del sitio


  20. Error 20: Buscador ciego… buscador inútil


  21. Error 21: La Web no es la televisión


  22. Error 22: Frames no, _si us plau_.


  23. Error 23: Formularios inaccesibles


  24. Error 24: Tipografías mal aplicadas


  25. Error 25: Archivos multimedia, PDF, etc.





### Error 1: Peso en la página





Por mucho ADSL que podamos tener instalado, simplemente tener una página de 150 KB a 200 KB es un crimen. Por ende el peso ideal tiene que rondar los 50 KB a 80 KB como mucho, aunque mucha gente posee ADSL, mucha gente también está bajando archivos, escuchando música en radios online, y la cuota de velocidad de descarga empieza a descender.





Incluso en entornos de trabajo, donde hay una red de más de 5 máquinas utilizando 1 línea de ADSL podemos notar un grave descenso de la velocidad, así que el factor "ADSL" afecta y mucho.
Las páginas deben pesar lo mínimo posible, esto podemos solucionarlo con código estándar, bien programado, sin necesidad de eliminar atributos importantes como el `alt="…"` o el `title="…"`, ni quitar demasiadas imágenes.





Un ejemplo de sitios muy pesados:







  * Banco Santander: 140 KB


  * Correos de España: 110 KB


  * ELPAIS.es 204 KB


  * BBVA.es 132 KB


  * Administracion.es 214 KB


  * ya.com 135 KB





Esto por supuesto es una medida hecha en la página de inicio de cada URL, pero con el paso de las revisiones, vemos que se repiten muchas cosas como porciones de código, y más errores los cuales hacen que el peso de la página crezca a lo largo de toda una trayectoria de estancia.





Esto significa que cada usuario en vez de descargar el mínimo posible de bytes, cada vez que ingresa a una página descarga código extra.





En un caso ideal, puedo recomendar que en la página de inicio se carguen los archivos más esenciales, como las hojas de estilos (luego hablaremos de ella) y algunas imágenes vitales, de modo que el usuario pueda descargar por ejemplo 700 Kb de información visitando 20 páginas y no 1,3 MB como en algunos exámenes  que hemos verificado.





Esto sin dudas optimiza la cantidad de ancho de banda que la empresa que mantiene el sitio se ahorra, sino que cada usuario se descarga los elementos necesarios.





Menor peso, mejor estancia.





## Error 2: DTD inexistentes





Es común ver que todos los documentos de un sitio no tienen una DTD que los identifique positivamente como un documento HTML, de hecho, cada navegador al no encontrarse con un DTD se limita a cualquier cosa.





Esto en el ambiente de desarrolladores, se conoce como Quirck Mode, y cuando un navegador entra en Quirck Mode, utiliza en su totalidad todo su motor de armado de páginas, incluye un soporte de visualización de navegadores, viejos, nuevos.





Explicado de una forma más cotidiana, imaginen que un amigo te regala algo, y tu amigo dice que te traerá algo de sorpresa y que tienes que prepararte, ahora… ¿Qué haces? ¿Sacas todos los muebles de la casa? ¿Limpiarás la cochera?





En realidad no sabes lo que te espera, puede que te regalen un tremendo coche, o algo como una torta de cumpleaños de 20 centímetros de diámetro, esto hace **que tengas incertidumbre** y termines preparando toda tu casa para algo que no sabes que va a ser… pero si tu amigo te hubiera dicho que te traía un cuadro de 2 x 2 metros, hubiéras preparado el mejor lugar y la pared justa para colgarlo sin tener que remover en toda la casa.





Los navegadores actúan de forma similar, cuando reciben un documento que no posee una DTD que lo identifique el navegador automáticamente se hace **un lío utilizando su motor en su totalidad**, técnicamente esto tiene muchas desventajas, por ejemplo la utilización de todo el motor del navegador es como si tuviéramos que utilizar el 100% de nuestra capacidad cerebral para comprender una simple oración, cuando deberíamos utilizar solamente nuestros conocimientos de lengua castellana.





Al utilizar un DTD uno no sólo se define en qué tipo de documento desarrolla, ayuda a otros desarrolladores a saber qué tipo de código deben escribir, sino que también ayudan al navegador a utilizar sólo una porción de su motor, por ende el beneficio es mayor, y el rendimiento del navegador es ultra óptimo.





Una de las cosas que sorprende, es que por ejemplo el Banco Santander Central Hispano no tiene DTD, es algo tan simple como poner **121 bytes de texto** al principio de cada documento:






> `&lt;!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"&gt;`





Pues tanto como el Santander Central Hispano no lo hace, tampoco lo hace BBVA, ni tampoco lo hace el sitio de la Administración de España de forma correcta, por que utiliza la versión sin referencia al DTD de la W3C, esto hace entrar en  modo de compatibilidad (lo que antes mencionamos como "quirck mode").





> `&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"&gt;`






Por ende la solución es ponerle a todos los documentos los DTD correspondientes, primero fijarse sobre qué versión de HTML o XHTML se está trabajando, de esta forma, evitaremos poner un DOCTYPE equivocado, si programamos en HTML 4.01 utilizar el DOCTYPE de HTML 4.01 en la versión que más nos plazca.





## Error 3: Páginas sin el idioma especificado





_Benvinguts!_. Seguro que no identifican a simple vista que significa esta palabra, **pues imaginen los parentescos entre palabras** que puede haber en una página, y el significado distinto que te puedes encontrar, uno puede buscar la palabra "home" y recibir una página en inglés con la palabra "home" que significa _casa_, pero… si "home" significa "hombre" en catalán, pero… ¿Qué hago mal?





**Define idiomas en el comienzo de cada documento**, es fácil, todos los elementos de HTML heredan el idioma, solo basta ponerlo en elemento `&lt;html&gt;` y todos los tags dentro de `&lt;html&gt;…&lt;/html&gt;` contendrán contenido en un idioma específico.





Ejemplo:





> `&lt;html xmlns="http://www.w3.org/1999/xhtml" **xml:lang="es" lang="es"**&gt;`





Si especificamos un idioma **estamos mejorando la semántica del documento**, diciéndole a un motor de búsqueda que quiere indexarnos _que nuestro contenido está plagado de palabras en idioma castellano_, pero puede que dentro de ese documento se encuentren palabras en inglés, catalán, francés.





Un lector de pantallas o un navegador sonoro para gente con discapacidad auditiva, pronunciará mejor o utilizará una voz de sintetizador distinta cuando se encuentre una palabra en otro idioma, de esta forma se pronuncian las palabras de forma correcta, de lo contrario podrá escuchar una voz de sintetizador con pronunciación inglesa relatando texto en castellano, y eso se traduce a un caos de pronunciación, acentos distintos y hasta la incomprensión total de una simple oración.





Si dispones de navegadores auditivos, puedes hacer la prueba entrando a cualquier sitio Web que no tiene lenguajes especificados y comprobar como suena todo.





Cuando una palabra tiene un idioma distinto al especificado en el elemento raíz del documento (`&lt;html&gt;`) debemos incluir el atributo correspondiente `lang="…"`:





> Los documentos fueron encontrados por John Walker y gracias a él pudimos hacer el _printing_.





## Error 4: Títulos de página molestos y enigmáticos





Muchos ejemplos de los que he revisado tienen títulos de páginas totalmente molestos y no muy explicativos. Un caso muy peculiar que ha realizado la gente de administración.es en su portal:





> `::::::::::: administracion.es | el portal del ciudadano ……………………`





Esto no solamente es un gasto de peso (se utilizan caracteres) sino que es totalmente inconcluso para los lectores de pantalla, por ejemplo un lector de pantalla leería algo así como:





> (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos) (dos puntos)(espacio) (administración)(punto)(es)(barra vertical)(el) (portal) (del) (ciudadano) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto) (punto)






Algunos de los que leen esto ahora comenzarán a entender de lo que hablo, cuando uno utiliza un sintetizador de voz, cada vez que ingresa a un documento lo primero que se lee es el título de una página, por ende, a más cosas escriban, más inútil y largo será el relato, el ejemplo antes mencionado tarda 34 segundos en relatarse.





34 segundos para luego proseguir _a relatar otras partes del documento_. O sea que el usuario podría **gastar todo un día para leer una simple página** o navegar la Web institucional, ¿se imaginan qué desepción?





Otras de las cosas que me causan gracia **es la usabilidad de estos títulos**, por ejemplo observen esta imagen:





![Barra de tareas Windows](/archivos/barradetareas-mala.png)





Como podrán observar mucha gente no utiliza una sola ventana de navegador, puede incluso tener 10 ventanas en la barra de tareas de Windows, de modo que encontrar algo en la barra a simple vista cuesta mucho más que si utilizaran en primer lugar el nombre del sitio.





![Barra de tareas Windows](/archivos/barradetareas-buena.png)





Esto sin dudas abre un nuevo paréntesis en usabilidad, no solo dentro del navegador, sino que fuera del navegador existen problemas también, incluso yo, un usuario avanzado cuando tengo muchas ventanas de navegadores abiertas, me cuesta recordar o reconocer de entre las 5 o 10 cuál pueda ser la que busco…





Incluso pasa en los avanzados elementos que nos ayudan, como las pestañas del Mozilla, que son la maravilla hecha realidad, pero aún así, cuando tengo una ventana de navegador con 15 pestañas abiertas, cuesta mucho reconocer una página con el elemento title malformado.





> `![Pestañas del Mozilla](http://www.minid.net/images/pestanas-malas.png)`





## Error 5: Sin imágenes navegar una página es imposible





No debería de ser necesario la presencia de imágenes para navegar, aunque le agregan un sentido gráfico y proporcionan una ayuda visual muy grande, existe gente que **tiene discapacidad** y _no puede apreciar las imágenes_, también puede que el servidor al cual se accede no termina de enviar las imágenes, _dando un error_, cuando pasa esto, la página queda cargada parcialmente, y se puede navegar en modo texto, si las imágenes tuvieran especificado el atributo `alt="…"` se podrían diferenciar muchas cosas, sin tener que recargar las imágenes o esperar a que el servidor Web funcione.





El Banco Santander Central Hispano _lo hace de una forma casi perfecta_, la Web se puede navegar sin imágenes dentro de todo se merece un aplauso, la gran mayoría de las imágenes **tienen explicaciones coherentes** y cortas, faltaría especificar los atributos `title="…"` en cada enlace o cada imagen para desplegar un cuadro amarillo de ayuda conocido como Tooltip.





La web de La Moncloa, más allá si la información es interesante o no para algunos, es innavegable sin imágenes.





![Muestra de atributos alt](/archivos/moncloa.png)





En la web de La Caixa, ubica el atributo alt a sus imágenes pero no define un atributo `title="…"` de modo que esto solo beneficia los navegadores Internet Explorer.





![Muestra de atributos alt](/archivos/no-title.png)





El Banco Santander Central Hispano lo realiza de forma perfecta, incluye en la totalidad de sus imágenes ambos atributos.





![Muestra de atributos alt](/archivos/santander-bien.png)





## Error 6: URL matemáticas, casi imposibles de entender y recordar





Si, matemáticas, algunas URLs son **tan complejas de entender** que si no disponemos de una ayuda visual, solemos tener problemas para navegar, en todas las páginas cuando se posa el cursor del ratón en una dirección podemos ver en la barra de tareas del navegador a qué URL vamos a ir si hacemos clic, se imaginan leer una url como esta:





> `http://www.la-moncloa.es/web/gob01.htm`





¿Adónde voy a parar? ¿Cómo se llama la sección esa? ¿Web o Gobierno? **No entiendo**, y a que vosotros tampoco os daréis cuenta… esto se debe a **que no posee ninguna ayuda visual**, ni tampoco las imágenes son accesibles debido a su carencia de atributos alt="…" y title="…", entonces al depender de elementos como las imágenes, es raro que podamos navegar con URLs de este tipo.





> `http://www.elpais.es/articulo.html?xref=20030923elpepucul_1&br />type=Tes&anchor=elpporcul`






¿A que sección del diario irá? ¿Cómo se llama el artículo?





Muchos lectores de pantalla, leen o relatan las direcciones de los enlaces, estos enlaces se crean de una forma terriblemente matemática haciendo casi imposible un relato entendible, y ni hablar de recordar esta dirección.






Algo como intuitivo y decente sería:





> `http://www.elpais.es/secciones/politica/el_psoe_confirma_la_ruptura_definitiva.php`






Muchos sistemas de contenido tienen la posibilidad de crear este tipo de enlaces, algunos se basan en los títulos del artículo, otros tienen campos con los que arman las URLs a gusto del editor.





En minid.net por ejemplo, podréis apreciar que las URLs son **más intuitivas**, de hecho _ha mejorado notablemente el indexado en los buscadores_, dado que también los enlaces tienen connotaciones semánticas para Google.





> `http://www.minid.net/archivos/categorias/internet/idiotas_en_el_espacio.php`





O también pueden entrar al sitio del diario El País (www.elpais.es) y encontrarse con una dirección como esta:





> `http://www.elpais.es/clientes/SuscripcionPortada.html?  
backURL=http%3A%2F%2Fwww.el  
pais.es%2Farticulo.html%3Fd_date%3D%26  
xref%3D20030923elpepuint_3%26type%3DTes%26  
anchor%3Delpprint`






Y entonces el lector de pantalla tarda un buen rato en relatar todo.





No veo razón para que esta dirección Web sea así:





> http://www.elpais.es/clientes/suscripcion.php





O también podemos decir:





> `http://www.elpais.es/suscripcion/`





URL fáciles de reconocer aumentan la navegabilidad, indexación y comprensión del sitio.





## Error 7: Código prehistórico reemplazable con CSS





En muchos casos se pueden ver cosas, como en la Web de correos de España, donde utilizan el tag `&lt;font&gt;` con una clase de CSS para hacer las letras en **negrita**, lo hace de esta forma:





> `&lt;p&gt;&lt;font class="txtNegrita"&gt;Lugares y medios de exposición.&lt;/font&gt;&lt;br /&gt;
En las Jefaturas Provinciales de Correos y Telégrafos, Ceuta y Melilla…&lt;/p&gt;`





Cuando deberían haber hecho:





> `**&lt;h3&gt;**Lugares y medios de exposición**&lt;/h3&gt;**
&lt;p&gt;En las Jefaturas Provinciales 
de Correos y Telégrafos, Ceuta y Melilla…&lt;/p&gt;`





Luego en una plantilla CSS darle el aspecto gráfico que quieras, este ha sido un ejemplo, imaginen si sacaran todos los elementos innecesarios y se ubicaran los elementales se ahorrarían mucho peso entre páginas.





Otro ejemplo mal aplicado lo podemos ver en la Web de correos, cuando quieren hacer una negrita o un énfasis en una palabra utilizan de nuevo el tag `&lt;font&gt;` con una clase, cuando podrían usar el tag `&lt;b&gt;` o el tag `&lt;strong&gt;` para dar más significado semántico al asunto:





> `&lt;p&gt;Junto a este viaje al pasado, el &lt;font class="txtNegrita"&gt;Museo Postal y Telegráfico&lt;/font&gt; abre una ventana al futuro con la exposición de una maqueta del satélite Hispasat.&lt;/p&gt;`





Nótese la cantidad de veces que tendrán que escribir en cada documento la clase `class="txtNegrita"` en cada página donde requieran negritas y títulos, si comparamos `class="txtNegrita"` con la cantidad de caracteres que pueda llevar escribir los elementos de un título por ejemplo notaremos un ahorro tremendo de caracteres como por ejemplo `&lt;h3&gt;&lt;/h3&gt;` son 9 caracteres **contra 18 caracteres** de `class="txtNegrita"` si se quitaran todas estas clases inútiles podrían ahorrar hasta 1 MB de caracteres de atributos basura, caracteres de más a toda la totalidad de documentos.





El ejemplo correcto sería:





> `&lt;p&gt;Junto a este viaje al pasado, el &lt;strong&gt;Museo Postal y Telegráfico&lt;/strong&gt; abre una ventana al futuro con la exposición de una maqueta del satélite Hispasat.&lt;/p&gt;`





Y en la plantilla de CSS ponerle el color o el tipo de letra que desees.





## Error 8: Olvidarse de la semántica, los documentos son una pila de información sin clasificar…





Eso mismo, una pila de información sin clasificar, la semántica es una de las áreas de los estándares Web que **más importancia tiene que haber** en las páginas que ofrecen contenidos y servicios públicos, de hecho en _todas las páginas debería haber un mínimo de semántica_, uno de los problemas que observo es que muchas empresas grandes que tienen **suficiente dinero** para hacer estas cosas bien, _lo hacen al revés_, cuando la semántica no sólo nos permite darle un significado "esto es un título", "esto es un párrafo", "esto es una cita" sino también que nos dan clasificación y jerarquía dentro de un documento, por ende puede retornar más beneficios.





La jerarquía viene de los elementos como los títulos, listas, definiciones, y la clasificación nos permite editar esas jerarquías desde CSS, en pocas palabras que a mejor jerarquizado y clasificado esté el código, más fácil es controlarlo con un CSS.





Ejemplo horrendo de la Web de [Correos de España](http://www.correos.es), para hacer un título y un párrafo utilizan todo este código:





> `&lt;tr valign="bottom"&gt;&lt;!-- 1--&gt;  

	&lt;td height="24" valign="bottom"&gt;&lt;a href="/identidad/" class="TitSeccionBold"&gt;Una nueva imagen, una nueva identidad&lt;/a&gt;&lt;/td&gt;  

&lt;/tr&gt;  

&lt;tr&gt;  

	&lt;td height="6" valign="top"&gt;&lt;img src="/comun/img/lin_g_sep_largo.png" width="310" height="1"&gt;&lt;/td&gt;  

&lt;/tr&gt;  

&lt;tr class="txtNormal"&gt;  

	&lt;td height="25" valign="top" class="txtNormal"&gt; Correos rediseña su marca y todos sus elementos clave de identificación visual &nbsp;&lt;a href="/00/img/nuevaimg.avi" class="txtLink"&gt;Ver vídeo&lt;/a&gt;&lt;/td&gt;  

&lt;/tr&gt;`






Como podemos apreciar en el código, **prevalecen las ganas de armarlo todo en el mismo documento de HTML**, cuando podría estar mucho más limpio, semántico y controlado por unas pocas reglas de CSS, no entiendo por qué utilizan **el lado más complejo**, es como pintar un edificio entero con un aerógrafo para maquetas.





Yo podría lograr que **el código quede incluso más accesible todavía**, debido a que esta gente utiliza "tablas" para representar contenidos cuando deberían jerarquizarlos con _cabeceras y párrafos_, ellos **han optado por hacer todo en el mismo HTML**, y utilizando técnicas super nocivas de CSS, malaprovechando cualquier recurso a mano, que podríamos mejorarlo de esta forma, en el HTML poner…:





> `&lt;div id="contenido"&gt;&lt;h2&gt;&lt;a href="/identidad/" class="TitSeccionBold"&gt;Una nueva imagen, una nueva identidad&lt;/a&gt;&lt;/h2&gt;  
  

&lt;p&gt;Correos rediseña su marca y todos sus elementos clave de identificación visual. &rarr; &lt;a href="/00/img/nuevaimg.avi" class="txtLink"&gt;Ver vídeo&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;`





¿Notan la cantidad de caracteres, imágenes y código mal utilizado que he ahorrado?





…y en el CSS, creo una regla para que no se tengan que repetir ni usar más clases indebidamente:






    
    #contenido h2 {
    	color: #ccc;
    	font: 1em Arial, Verdana, sans-serif;
    	border-bottom: 1px solid #ccc;
    	margin: 0 0 0px 0;
    }
    
    #contenido p {
    	font: 1em Arial, Verdana, sans-serif;
    	color: #000;
    }
    






Con esta simple regla de CSS y un código de HTML coherente, no deberé escribir más código de más en el HTML, ni clases, ni usar imágenes para hacer líneas o "subrayados" en los títulos, tampoco usarán imágenes transparentes para "acomodar" elementos (uno entre otro o para separarlos), por que con el uso debido de CSS se puede controlar el posicionamiento de cada elemento que se encuentre en el documento.





## Error 9: Sin estilos la página no se entiende, ni tiene significado…





Volvemos a otro error que deriva y tiene mucha relación con el error 8, la clasificación y jerarquías de los elementos de un documento, sin esta práctica el documento no se puede navegar con facilidad sin hojas de estilo, por ejemplo los muchachos que hicieron administración.es tuvieron la demente idea de hacer un sitio aparte para los discapacitados, "una versión texto", una pérdida total de tiempo, pero ya que estamos, esta versión cuando no se visualizan los estilos queda algo así:





![Captura de pantalla administracion.es](/archivos/sin-estilos-admin.png)





No se imaginen la versión con imágenes como se podría ver sin hojas de estilo… mejor ni intentarlo que me deprime…





¿Pero cómo se hace bien entonces? Pues la respuesta es utilizando etiquetas correspondientes, sin navegan mined.net sin estilos **notarán que se puede navegar de manera más ordenada**, y los títulos son _títulos gráficamente y semánticamente_, no hace falta envolver los títulos con caracteres inapropiados como corchetes [título] ni nada parecido a --título--, por que volviendo al tema accesibilidad, las personas con discapacidades escuchan cualquier cosa menos castellano, sino que escucharán una mezcla de chino básico matemático mezclando el inglés relatado por un español (así como si fueran a decir espíderman en vez de spider man)






Un ejemplo digno de seguir es:





![Captura de pantalla minid.net](/archivos/sin-estilos-minid.png)





Mi página web por ejemplo, no requiere de un esfuerzo visual para comprender entre lo que es un título y un párrafo, de hecho, cuando vemos una página de este modo podemos comprender la forma en que un lector de pantalla lee…





## Error 10: Documentos Web que son enemigos de la impresora





Leer en la pantalla es muy molesto según indican las pruebas con usuarios, de hecho casi todos los días en el metro puedo ver como la gente lee páginas Web o documentos impresos desde el navegador, y la calidad de ellos es de regular a muy mala cuando debería ser buena, apta para la lectura.





Un error común es ver el típico "imprimir página", dado que todos los navegadores tienen incorporado la versión de imprimir (iconos, botones, accesos directos) esto me supone más que una ayuda una molestia más, un botón más al que hay que prestarle atención en una página, otro botón más que se confunde entre la maraña de enlaces y botones hechos en el documento Web, y además de funcionar con Javascript, lo cual le quita ya la ventaja de ser accesible.





Otro error común es hacer una "versión apta para impresión" **la cual no tiene nada de apta**, como la que han hecho los profesionales desarrolladores de administración.es, en un navegador, **ingresa esta dirección y hagan un "vista preliminar"** desde el menú de impresión de su navegador favorito (_el autor no quiere que gasten papel ni tinta de impresora_):





[http://www.administracion.es/portadas/perfiles/ciudadano/familia/matrimonio_familia-idcat.html](http://www.administracion.es/portadas/perfiles/ciudadano/familia/matrimonio_familia-idcat.html)





Podrán observar que **de imprimible no tiene nada**, de nada. ¿Para qué hacer otra versión más? Si ni siquiera contiene información vital como medidas en puntos para las tipografías, **y existen elementos que estorban la lectura**… podría utilizar CSS para aprovechar un poco mejor el panorama de la impresión.






Otro error es directamente **no hacer nada**, _ni una versión inútil para imprimir, ni una hoja de estilos_, la solución para esto es agarrar de la oreja a los desarrolladores y explicarles un ejemplo como este:





Hacer una hoja de estilos que adapte a la impresión, en la cabecera, poner esa hoja de estilos identificando como si fuera apta para impresión (usando `media="print"`) luego con el "vista preliminar" del navegador **hacer las pruebas e ir quitando elementos innecesarios**, como imágenes de navegación inútiles, barras de navegación, menús de navegación, banners, etc. dejar sólo los títulos y textos e imágenes de importancia.





Pueden ir a este ejemplo en esta misma Web, este mismo artículo hacer "vista preliminar" o "imprimir" y tendrán mejores resultados que los que hemos visto.





**Cosas de este estilo se ven a montones**, la cantidad de documentos que no se pueden imprimir por una cuestión de dejadez o de hacer las cosas sin saberlas, sin estudiarlas.





> **Cuesta más en tema dinero, tiempo, cantidad de gente** para producir versiones "paralelas" para imprimir, **que hacer 1 documento** que controle la impresión de todo un mar de documentos en el sitio.





## Error 11: Ventanas emergentes, inútiles, sin sentido y no muy accesibles.





Otro tumor en la Web son las ventanas emergentes, las cuales conocemos por "popups". Éstas no son más que un tumor que molesta, permanentemente y no agrega nada de valor.





Es preferible abrir una ventana de un navegador (que posee todos los controles) a abrir una ventana emergente "popup" de 350 píxeles de ancho por 400 píxeles de alto, otra vez en la mira del cañón está administración.es que es un sitio de gran magnitud, "el portal del ciudadano", podrán observar una tontería como esta:






![Ventana emergente](/archivos/popup-idiota.png)






¿Alguno de vosotros observa alguna barra de navegación del propio navegador? ¿Un menú para imprimir? ¿Cómo era la combinación de teclas para imprimir? ¿Cómo hago para leer todo el texto?





_Pues yo tampoco_. Sigo, como observáis existe una gran cantidad de texto en una ventana **no muy amplia**, **no hay barra de desplazamiento** "scroll" **la letra es de menos de 11 píxeles de alto** (calculo que 10 píxeles) y un porrón de contenido sin clasificar, **sin jerarquías**, **sin semántica**… por ende, **100% inútil**.





No quiero creer que siguen a estas alturas pensando en hacer un popup para estos casos, cuando pueden hacer un documento mejor desarrollado, por ejemplo como la página del [Banco Santander de aviso legal](http://www.santander.com/pagina/indice/0,,565_1_2,00.html). La cual no está del todo bien pero por lo menos **no es un popup**.





De lo contrario, daos una vuelta por el [W3C](http://www.w3c.org), y chequeen su página de Copyright, está mejor ordenada semánticamente, pero… con un poco de gusto y mano de CSS quedaría un documento **semántico y prolijo**, y práctico para leer e imprimir.





## Error 12: Instale Flash, o de lo contrario no podrá navegar el sitio Web





Uno de los errores más comunes y que todavía se pueden apreciar en la Web. Me deleita un montón ver ejemplo como [2advanced](http://www.2advanced.com), que no ofrecen su contenido _siquiera en una versión alternativa_, por ejemplo saber que puedo ver sus producciones de video (ya tengo quicktime instalado) o por ejemplo leer sus noticias, y así no tengo que instalar otro programa más.





Puede que sea un poco cerrado el pensamiento, pero la idea es poner (aunque sea) un acceso a algo un "saltar introducción", [Kursor.tv](http://www.kursor.tv) parece no importarle y todo su negocio depende de una película en Flash, basta que alguien no tenga Flash instalado para que se vaya a otra Web de su competencia. Pueden ver que en la página [Kursor.tv](http://www.kursor.tv/intro.htm) no hay indicios de accesos a versiones en HTML, tampoco hay teléfonos a mano…





Si utilizan Flash, hay que pensar por la gente que no lo tiene instalado, puede que esa misma gente incluso no tenga javascript o no tenga la versión correcta del plug-in de Flash, suele ocurrir que todo funciona mal o no se esperan los resultados, los plugins de detección no averiguan a la perfección que tipo de plugin versión 00000000.000000222 tenías instalada…





Otra de las cosas es utilizar Flash y no ofrecer una réplica de tu sitio indexable y navegable para personas con discapacidad motora por ejemplo (usan el teclado para moverse en un sitio…) e_s otro error tirando a crimen._





## Error 13: Javascript supera todas las tecnologías de lenguajes, HTML, CSS, PHP, Javascript es la hostia…





**No abuse del Javascript**, amigo desarrollador, _estoy realmente agotado_ de ver como funcionan los scripts en los navegadores, que si tengo que usar Internet Explorer para **ver un menú importante**, para acceder a mi cuenta bancaria… **basta ya de abusar de Javascript**.





**No quiero decir que dejes de utilizarlo**, sino **haz las cosas con precaución y por favor, examina los resultados** en otro ordenador que no sea tu mega-ordenador con Internet Explorer _build_ 6.001324, por que con mi Portátil PC Asus y Windows 2000 con Internet Explorer 5.993888 no puedo usarlo correctamente, y mi amigo Juan con su Internet Explorer 5.5 (5.789000) tampoco puede… Javascript no es idéntico entre navegadores, menos entre _Internetes Exploretes_, de hecho he podido comprobarlo utilizando 6 PCs distintas con diferentes Explorers y notar diferencias que entre algunas eran abismales.





> Ni hablar de usar otra cosa que no sea el alabado Internet Explorer, pongamos Opera, Netscape 7 o Mozilla, no… ¿para qué?… Tampoco hablar de utilizar Internet Explorer para Mac, no… ¿para qué?





**Javascript no es un lenguaje perfecto** para ser el esqueleto de un website, ni mucho menos para controlar **la interacción entre documentos**, os digo algo, si desactivo Javascript en mi navegador el sitio de [Correos de España](http://www.correos.es) se navegable en un 20%, no llego siquiera a enviar una postal desde la página de "Envíe una postal por Internet", desepcionante.





Por eso, fuera de chistes e ironías y sin ánimos de ofender a nadie, abusar de esa forma de Javascript, no es ideal.






## Error 14: HTML no es un lenguaje de modelaje de páginas





Algo que cuesta de entender, es que, HTML no es un lenguaje de moldeo de páginas, de hecho el HTML no tiene estética alguna, solo significado, es un lenguaje para clasificar contenidos, que luego con otra tecnología se editarán los factores visuales, es por eso, que es estúpido utilizarlo para desarrollar layouts, colorear páginas, posicionar elementos… para esas cosas se ha creado CSS.





Podremos ver que el gran porcentaje de sitios utilizan tablas para hacer layouts, esto no está bien, pueden ver el ejemplo del Error 8, las tablas son elementos que fueron creados para representar datos, no para crear  esquemas o maquetar un sitio entero, es como si utilizáramos gasolina de avión en nuestro coche, la gasolina quizás haga que nuestro motor funcione, pero tarde o temprano funcionará mal, por que la gasolina de avión tiene más octanos y está diseñada para motores grandes, motores de aviones.






## Error 15: HTML comentado, es igual a más peso en la página





He visto cosas aberrantes, pero hay cosas que no se pueden creer, por ejemplo, es común en desarrollos comentar ciertas partes de un código, en programación puede incluso ahorrar mucho tiempo por que cuando se comenta no se borran cosas, o simplemente se comentan para probar cosas… pero en HTML, cuando se comenta una línea, el servidor Web procesa la página, y el código comentado, enviándolo al ordenador cliente, de modo que el mismo navegador es el que no procesa este código comentado.





Un error básico es utilizar los comentarios de HTML para comentar largas porciones de código HTML, los comentarios de HTML están hechos para realizar ayudas, o para hacer anotaciones.
El problema comienza cuando se comenta 10 líneas de código en HTML éste sigue apareciendo y siendo procesador por el servidor, debería comentar esto con otro tipo de lenguaje, de modo que sea procesado directamente en el servidor Web y no en el navegador.






Ejemplo de una porción de código encontrada en la web de correos:






> `&lt;!--&lt;tr&gt; &lt;!-- 4--&gt; 
          &lt;!--&lt;td height="24" valign="bottom"&gt; &lt;a href="/01/02/0102_b.asp" onclick="javascript:pulseExt('men01');" class="TitSeccionBold"&gt; 
            Cartas Certificadas&lt;/a&gt; &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt; 
          &lt;td height="6" valign="top"&gt;&lt;img src="/comun/img/lin_g_sep.png" width="310" height="1"&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt; 
           &lt;td class="txtNormal" height="25" valign="top"&gt;Para enviar con total tranquilidad sus comunicaciones especialmente importantes, con entrega bajo firma.&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt; 
           &lt;td height="5"&gt;&lt;img src="/comun/img/pix_fondo.png" width="1" height="1"&gt;&lt;/td&gt;
        &lt;/tr&gt;--&gt;
&lt;!-- 5--&gt; 
		&lt;!--&lt;tr&gt; 
           &lt;td height="24" valign="bottom"&gt; &lt;a href="/00/04/0004.asp" class="TitSeccionBold"&gt; 
            Acceso a Internet&lt;/a&gt; &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt; 
          &lt;td height="6" valign="top"&gt;&lt;img src="/comun/img/lin_g_sep.png" width="310" height="1"&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt; 
          &lt;td class="txtNormal" height="25" valign="top"&gt;Acceda a internet mediante 
            línea de alta velocidad. Disponible en más de 35 oficinas 
            distribuidas por todo el territorio.&lt;/td&gt; 
        &lt;/tr&gt;--&gt;`






Esto nos ahorrar tener que enviarle al ordenador cliente, código que nunca procesará e utilizará, unos cuantos KB menos de peso en cada página. Esto se logra no utilizando los comentarios normales de HTML `&lt;!-- --&gt;` sino utilizando algún lenguaje de scripting normal como PHP o ASP.





Otra de las cosas que recomiendo **es no comentar largas porciones de código**, sino _directamente borrarlas o extraerlas a otro documento de repositorio_.






## Error 16: Utilizar hojas de estilo en línea o embebidas en los documentos





Un factor importante en los documentos Web debe ser la separación del contenido de la presentación, de modo que el HTML sea para contener y el CSS para presentar, por eso, utilizar hojas de estilos embebidas en el mismo documento no es sano.





En muchas páginas institucionales vemos como embeben el código de las hojas de estilos en la cabecera, en vez de tener 1 hoja de estilos externa con la información para la estructura y posicionamiento de los elementos principales, y otra hoja de estilos que varía de sección en sección, 1 para todas las páginas, con la información mínima, y la otra es una información unica para realizar un posicionamiento de un elemento o algo que se encuentre en 2 o 3 páginas, aquí estamos dividiendo recursos, y economizando trabajo. Algo cómun que vemos en la Web de Correos de España y el diario El País:





> `&lt;head&gt;  

&lt;style&gt;  

.TA  

{  

scrollbar-3dlight-color:#666666;  

scrollbar-arrow-color:#666666;  

scrollbar-base-color:#666666;  

scrollbar-darkshadow-color:#666666;  

scrollbar-face-color:#e2e2e2;  

scrollbar-highlight-color:#e2e2e2;  

scrollbar-shadow-color:#c0bebe  

}  

&lt;/style&gt;  
&lt;/head&gt;`





Nótese que esta estupidez solo hace que un documento de HTML contenga caracteres que no se puedan cachear de ninguna forma tradicional, de hecho cada vez que el usuario recurra a esta página, tendrá que descargarse y procesar esta porción de código, que es poca si, pero cuenten unos 70 documentos, y hagan el cálculo de cuantos KiloBytes llevan sumando.
En la Web de Correos, se pueden observar cosas como porciones masivas de código CSS en todos los documentos, no sólo ubicada entre los elementos 