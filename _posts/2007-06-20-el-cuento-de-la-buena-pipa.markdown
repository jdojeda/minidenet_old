---
comments: true
date: 2007-06-20 04:36:12
layout: post
slug: el-cuento-de-la-buena-pipa
title: El cuento de la buena pipa
wordpress_id: 3074
categories:
- Internet
---

Según la Wikipedia, el estudio de [la historia](http://es.wikipedia.org/wiki/Historia) es, en sí misma, una buena base para la comprensión de los hechos posteriores y, así poder evolucionar mejor. La palabra "historia" deriva del griego ἱστορία ("investigación o información"), del verbo ἱστορεῖν ('investigar'), y de allí pasó al latín _historia_, que se conservó en castellano. Parece que, _absit invidia_, la misma historia no ayudó  mucho a la nueva web de Congreso.es. Pero seamos realistas, existen docenas de acontecimientos que vuelven a repetir los mismos errores del pasado, aún sabiendo que están descritos, analizados, estudiados y repudiados en muchos casos. Sin embargo, los repiten.





Y la historia tiene mucho que ver en esto, porque el sitio de [Congreso.es](http://www.congreso.es), a pesar de haber visto la luz este año me hizo recordar a los años 98 y 99, ¡cuánto tiempo!.





¡Cuánta historia escrita sobre este tema! Deben existir, al menos, una centena de libros de HTML y CSS en todos los idiomas. Sin embargo se sigue practicando un HTML de la década del 90'. Ahora bien, los que peor salen aquí no son los organizadores, sino, los que empollaron este sitio. Los que tuvieron que trabajar y diseñar este sitio, esta sopa, esta maraña de código. Me consterna, la verdad, imaginarme la desilusión que deben llevar ahora, sabiendo que esto es un desastre y, todas esas cientos de horas extras que habéis hecho no sirvieron de nada, y que muy pronto vais a tener que cambiar. La gente que lea esto también debe, en vez de insultar, compadecerse de esta pobre gente que debe haber sufrido lo peor.





### Un sitio para los ciudadanos





Un sitio que será destinado para el uso de los ciudadanos, debe cumplir, casi con rigor extremo esta serie de puntos:






	
  * Principio de degradación.

	
  * Estándares.

	
  * Nivel de accesibilidad consistente y real.

	
  * Correcta arquitectura de _toda_ la información.

	
  * Muy buen grado de separación de estilos y contenido.

	
  * Independencia de gestión de contenido.





### Principio de degradación





Pocas veces habrán escuchado esta frase: _principio de degradación_. En diseño web, este principio muestra cómo un sitio web se va «degradando» de la forma más ecológica posible frente a navegadores antiguos. Mucha gente piensa que, todavía se debe diseñar para Netscape 2 y 3, o para Internet Explorer 4 y 5, lo cual nos lleva a pensar que, debe ser una de las razones por las cuales siguen diseñando con tablas. El miedo a que algo no se observe bien en navegadores antiguos, el miedo a no saber programar de forma semántica les debe alentar a ir a por cosas seguras: tablas.





Lo cierto es que un sitio bien degradado permite a cualquier usuario con un  navegador antiguo seguir leyendo las noticias de forma vertical, sin estilos de por medio. Un usuario con un dispositivo móvil que _no_ soporta CSS podría aprovechar mejor la información si está bien degradada. Las imágenes –relacionadas con contenido– seguirán viéndose, mientras que las imágenes «decorativas» pasarán a un segundo o tercer plano.





La mejor forma de conseguir esto es, utilizando el elemento `STYLE` y la regla-arroba `@import` aseguran que navegadores antiguos _no_ procesen dichas reglas.





### Estándares





Si hay algo que observo desde hace algo así como… 3 años, es el _síndrome crónico de la estandaritis autoproclamada_ (SCEA). Sí, es un caso patológico _grave_. El síntoma más característico: cualquier tipo de desarrollo que respeta o no los estándares llevan logos presuntos de la organización mundial W3C.


	


Se exhiben de forma bien visible y como si se tratara de una certificación ISO. Pero en realidad es un trozo de código que el desarrollador de turno pone, conforme le _parece_ a él que el sitio valida con los estándares; sea malo el código empleado, sea inaccesible al lectores de pantalla, sea inoperable en un navegador solo-texto, el desarrollador gastará 35 pixeles de visibilidad en la página para exhibir las imágenes.





Grandes empresas, organizaciones exhiben sendas sonrisas al ver los bannercillos, como si se trataran de medallas ganadas. Pero en realidad, no lo son. Lo peor de todo, es encontrarse un sitio que, además de no respetar ningún tipo de reglamento o fundamento web, exhiba dichas condecoraciones como lo hizo el sitio de congreso.es y aún puede comprobarse mirando el código (lo han escondido con un comentario de HTML, no lo han quitado).





#### La semántica la dejamos en casa…





Si bien el diseño del sitio no sea de gusto para algunos, yo encuentro gravísimo el abuso del marcado de contenido que se ha aplicado a este sitio. La primera prueba, creo yo, es mirar la inexistencia de definición de documentos. No existe ni `DOCTYPE`, por lo que genera un grave problema para el navegador, sobre todo para Internet Explorer que entra en modo «Juan Palomo, yo me lo guiso, yo me lo como», haciendo que trabaje de más.





Pero existen otras fallas graves que generan más trabajo para todos los que están ahora mismo trabajando en ese sitio:




    
    <code class="html">&lt;div class="TITULO_CONTENIDO"&gt;VIII LEGISLATURA&lt;/div&gt;       
    &lt;div class="SUBTITULO_CONTENIDO"&gt;Sesión nº:&lt;span&gt;62&lt;/span&gt;&lt;/div&gt;</code>





El problema es que, mi navegador de texto no sabe cuál es el título y cuál es el contenido. Para éste, son dos simples lineas de texto. Si el documento fuera semántico en otros grados, podría encontrarme un código parecido a éste:




    
    <code class="html">&lt;h1&gt;VIII LEGISLATURA&lt;/h1&gt;       
    &lt;h2&gt;Sesión nº:&lt;strong&gt;62&lt;/strong&gt;&lt;/h1&gt;</code>





Sin dudas, unos cuántos caracteres menos en el código del sitio. Podemos aprovechar más las posibilidades de CSS y la propiedad de cascada que tiene el lenguaje para definir mejor los estilos de los documentos.





Otra de las cosas que no entiendo es por qué necesitan ponerle un `class` a cada párrafo creado, ejemplo que podéis encontrar en cualquier documento web del sitio:




    
    <code class="html">&lt;p class=&quot;apartado_iniciativa&quot;&gt;Intervenciones:&lt;/p&gt;                        
    &lt;p class=&quot;texto&quot;&gt;Grupo Parlamentario&lt;/p&gt;</code>





No entiendo el por qué. Si lo que querían era diferenciar párrafos y titulares, creo que podrían haber diferenciado los tipos de títulos que uno se puede encontrar dentro de una nota, marcarlos con elementos propios y más aptos: `H1`, `H2`, `H3`, `H4`, etc.. Creo que es mejor y, si desde el CMS que utilizan para mantener esta web pudieron crear un título que genera un párrafo con clase podrían haberse ahorrado eso y haber generado directamente un tipo de elemento de título, como los que he especificado. Hubiera quedado estupendo y quitando esfuerzos de esta forma:




    
    <code class="html">&lt;h5&gt;Intervenciones:&lt;/h5&gt;                        
    &lt;p&gt;Grupo Parlamentario Mixto&lt;/p&gt;</code>





El grave problema de utilizar elementos `P` como titulares es que no podemos aprovechar la propiedad de cascada de CSS, así nos veremos forzados a definir cada `&lt;p&gt;…&lt;/p&gt;` que salga en el documento, por ende, más código, más código en el documento CSS.





#### Idiomas





Otro problema de estandarización que deberán arreglar, porque me enerva bastante tener que configurarlo cada vez que entro al bendito sitio: es la estandarización del lenguaje. Actualmente, el sitio no tiene `DOCTYPE` (ya lo hemos comentado) pero tampoco tiene una definición de lenguaje con un elemento `META`. Algo tan simple como:




    
    <code class="html">&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;/&gt;</code>





Sin embargo, al mirar un poco más la sopa de etiquetas, voy divisando `DOCTYPES` en el medio del documento, junto a etiquetas `META` con valores de codificación nada apropiados, como lo es `windows-1252`.





Sin embargo, el sitio responde mejor cuando configuro mi navegador para que me muestre el sitio como si se tratara del estándar UTF-8. Que les felicito si tenían esa intención  de usar. Pero, igualmente, no es culpa directa de nadie que aparezcan `DOCTYPES` y `META` en medio del documento. En realidad esto es producto del CMS que están utilizando, que genera toneladas de basura porque, bien no se enteran como mejorar los _portlets_ que tiene o bien, las plantillas no están bien codificadas. Juraría que es un Vignette lo que está corriendo ese sitio, aunque es probable que me estuviera equivocando.



El sitio web de la Generalitat de Catalunya por ejemplo, se han tomado la molestia de _no_ poner ninguna medallita del W3C acerca de validación con ningún estándar. Dan por hecho que debe ser así, lo cual encuentro, perfecto. Incluso, si miramos el código, podemos ver cómo ejemplifican un documento web:


    
    <code class="html">&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot;
    	&quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;
    &lt;html xml:lang=&quot;ca&quot; xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
    &lt;head&gt;
    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=iso-8859-1&quot;</code>



Aún así les reprocharía el uso de iso-8859-1 en favor de UTF-8, lo que les cuesta ahora tener que pasar a entidad un montón de caracteres que se utilizan en catalán.



#### HTML, CSS y el excesivo peso por documento





¿Cómo puede ser que un sitio de estas características tenga tanto peso utilizando CSS? Si miramos un poco el código de la página, notaremos que tiene una tonelada de líneas de CSS en la cabecera. Esta práctica no está desaprobada, es válida, pero a estos niveles, tanto código, me parece que se les ha ido un poco la mano. Además, ¿tanto CSS escrito para un sitio hecho con HTML a la antigua?. Yo no veo nada complejo a nivel gráfico que no se pueda montar con al menos un 80% menos de código, y eso que no estoy alardeando nada.





Tanto CSS por página hace que el _cache_ sea un elemento utópico de la web. La página de inicio pesa alrededor de los 130KB, algo extremadamente denso de bajar al ordenador. Mientras que otras webs gubernamentales, programadas con un poco más de conciencia, sólo arriban a los 28KB. Juzgad vosotros los resultados de comerse cada vez que regreséis al documento de inicio los 230KB de HTML, CSS, imágenes y otros elementos.





Como de CSS puedo explayarme con propiedad, pude observar que se repiten una y otra vez las mismas reglas, para las mismas clases. Incluso, pude ver a simple vista cientos de patrones que permitirían reducir ese código a unas cuántas líneas menos de las que tiene ahora. El sólo hecho de aprovechar las propiedades de cascada, la agrupación de selectores y otras bondades reducirían notablemente el sitio.





### Accesibilidad





¿Debo explayarme más en esto? Rehacer bien el sitio, por favor. Una persona con discapacidad sabe de lo que estoy hablando en este momento. Si uno no acaba loco de sordera o ciego de leer letras a tamaño 10px es que alguien del equipo no entiende, no tiene un familiar con algún tipo de discapacidad, esta web le puede interesar a mi abuelo, que tiene 80 años.





Por cierto, en mi lector de pantalla, al realizar las pruebas de sonido me produce un mareo constante y no puedo enfocarme en el contenido de la página.





### Resumen





Aunque este texto quede y sea parte de la historia. Seguramente vendrá otro proyecto de este mismo calibre y cometerán los mismos errores garrafales. Es clavado, es como el repetivivo _cuento de la buena pipa_. Uno a veces, intenta tomarse esto con pinzas de depilar, con paciencia, compadeciendo las complejidades y la burocracia del asunto. Pero la verdad, es que, los desarrolladores sólo sufrirán uno o dos años más, en cambio los ciudadanos que quieran utilizar esto lo padecerán hasta que alguien se digne a mejorar esto enserio.



Lo peor de todo, y la experiencia me lo ha recalcado en más de una vez, es que, la diferencia entre el sitio de congreso.es y un sitio mal hecho con código estándar, es que el primero probablemente tenga que cambiarse todo de pi a pa, mientras que el segundo puede ir «ajustándose» hasta quedar mejor. Uno requerirá nuevos presupuestos de mantenimiento (que en realidad será rehacer todo otra vez) mientras que el otro tendría más posibilidades de mejorarse sin tener que toquetear todo el código del sitio.





Conste no nos hemos mojado en las frías aguas del presupuesto invertido en este sitio. [La entrada que ha escrito aNieto2K](http://www.anieto2k.com/2007/06/14/la-nueva-pagina-web-oficial-del-congreso/) es muy divertida, quizás, va más al grano en algunos puntos que yo he decidido pasar de opinar ya, porque realmente no me quiero hacer más malasangre.
  *[etc.]: etcétera
