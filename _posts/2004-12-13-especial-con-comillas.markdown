---
comments: false
date: 2004-12-13 17:28:00
layout: post
slug: especial-con-comillas
title: Especial con comillas
wordpress_id: 2153
categories:
- Internet
---

> Este es un artículo que había escrito hace tiempo, pero dada las circunstancias del cambio _Movable Type to Wordpress_, quedó en otra sección del sitio. Espero que les sea de alguna ayuda, es un truco muy interesante que funciona únicamente en navegadores bastante actualizados.
> 
> 


> 
> Todo esto vino a razón de un post que hizo [Alvy](http://www.microsiervos.com) sobre las comillas llamado [La Web no es una máquina de escribir](http://www.microsiervos.com/2004_12_01_archivo.html#110267220575182567).





He descubierto algo mágico y muy práctico, que se obtiene mediante el uso de las hojas de estilos. Se trata de las citas. En este weblog, suelo realizar muchas citas. En el desarrollo del weblog, tuve que aplicar un formato a cada tipo de cita, utilizando comillas distintas, lo que me supuso aprender a tipear las comillas dependiendo de idioma en que escribo. Esto supone aprenderse las reglas, los códigos para escribir fuck utilizando las comillas dobles americanas, y cuando digo gilipollas tengo que utilizar las comillas angulares o francesas, y así con el resto de los idiomas, cada palabra o frase con sus comillas.





En este artículo, les voy a contar una posible solución a las comillas. Es una solución semántica, estructurada y cómoda para escribir. Además, es aprovechable con CSS.





#### Qué dice la regla general:





La comilla es un signo ortográfico («^», "^" o '^') que se pone al principio y al final de las frases escritas como citas o ejemplos o de aquellas que se quiere destacar. Según la regla, indica que usaremos comillas (« ») para indicar que las palabras que se encuentran en ellas son literales, reproducción exacta de algo dicho previamente:





> Fue entonces cuando Marcos se lanza del avión para realizar la prueba. A los 5 minutos de caída libre su paracaídas se abre y se rompen las cuerdas yéndose de su cuerpo. En un acto de ahogo antes de dar con el suelo, grita: cabronazo y su cuerpo se estrella contra el suelo a 340 kilómetros por hora, generando así una gran mancha roja que no dejaba rastro físico alguno de su existencia.





Las comillas indican también que la palabra o palabras enmarcadas en ellas tienen algún carácter de diferenciación del resto del contexto. Puede tratarse de palabras pertenecientes a otros lenguajes, vulgares o coloquiales, extranjeras o utilizadas, en ese contexto, con algún matiz especial, normalmente irónico:





> Marcos intentaba desprestigiar a un visitante diciéndole nabo, pero no se daba cuenta de sus actos, el visitante le dió una terrible patada en la cara, una vez hecho esto, el visitante le dijo: ¡zapatero, a tus zapatos!.





Una vez que entendemos la regla --que es muy fácil-- podemos cambiar nuestra forma de enmarcar palabras o frases. También hay que tener en cuenta que otros idiomas disponen de signos especiales para enmarcar palabras. Por ejemplo, si escribimos una frase en ingles, sería válido hacerlo con la señalización correcta. Es sólo una cuestión de respeto gramatical.





Las variantes de comillas son bastantes. En castellano, se utilizan las comillas simples (‘ ’) para enmarcadar significados de palabras o expresiones, o las comillas francesas o angulares (« »). Como norma general es más conveniente utilizar siempre las más conocidas y hacer uso de las simples cuando entrecomillemos partes dentro de un texto ya marcado por comillas.





#### Las comillas en HTML





En HTML hay unas cuantas posibilidades de escribir comillas. La más simple es abrir un documento y escribir valiéndonos del teclado. Esta forma por lo general escapa a todo tipo de estructura y definición. Mientras puedo utilizar comillas dobles ("") para marcar una palabra, no voy a saber en que idioma está escrita. Por ejemplo: merde es una palabra en francés significa: mierda pero realmente no lo sabemos hasta que la estructura del documento lo indique. Ahora me planteo esto: si un parser pudiese identificar el idioma de una palabra o frase con la puntuación entonces debería existir al menos 4500 formas de comillas, veo que no es factible, entonces debo recurrir al HTML. Existe una posibilidad sana de diferenciar palabras en HTML, utilizando la etiqueta `&lt;q&gt;` podemos enmarcar palabras y dotarlas de ciertas características.





El primer ejemplo que hice fue una frase normal, que contiene varias palabras en diferentes idiomas:





> &quot;merde&quot;, &quot;panoli&quot;, &quot;dumbfuck&quot;.





Esto se consigue escribiendo en nuestro documento de HTML:




    
    <code>&lt;q lang="fr"&gt;merde&lt;/q&gt;, &lt;q&gt;panoli&lt;/q&gt;, &lt;q lang="en"&gt;dumbfuck&lt;/q&gt;</code>





El primer ejemplo que hice fue una combinación de tres insultos en diferentes idiomas. He utilizado la etiqueta `&lt;q&gt;` que me permite estructurar el contenido en diferentes niveles, en este caso, utilizo el atributo `lang="…"` para diferenciar los idiomas de cada cita.





Un punto que todavía no he aclarado es que mis documentos tienen un indicador de idioma. Esto se puede indicar agregando un atributo `lang="…"` a la etiqueta `&lt;html&gt;`. Si la etiqueta `&lt;html&gt;` tiene como atributo `lang="…"`, entonces todos los elementos encerrados dentro (y los textos e imágenes) también serán `lang="es"` aunque se especifíque lo contrario. Esto en HTML se denomina herencia, los elementos hijos heredan los atributos más importantes de los elementos padres.





Volviendo al tema, mis tres palabras están marcadas correctamente, pero visualmente son iguales. Esto puede traer o prestar confusión a la hora de leer, o de diferenciar unas de otras. No afirmo que las personas sepan que las comillas angulares pertenecen a este idioma, pero es bueno diferenciar las citas dependiendo su idioma y su condición. Para ello, debo recurrir a  las hojas de estilo, que me permiten generar contenido dependiendo la estructura de un documento.





#### Las hojas de estilos





Sin dudas las hojas de estilo ayudan, sólo hay que saber las posibilidades que hay para explotar su potencial. En este caso, utilizaré las propiedades: quotes: y content: más los selectores de idiomas. La especificación de CSS 2.1 indica:





En CSS 2.1 los autores deben especificar, en un estilo sensitivo y un contexto dependiente  como los agentes de usuarios (navegadores) deben enseñar las comillas. La propiedad quotes especifíca pares de comillas para cada nivel de comillas embebidas. La propiedad content da acceso a esas comillas y las hacen poner antes y después de una cita.





Si leemos la espeficiación de quotes en el W3C obtendremos todos los componentes concretos de la propiedad [quotes/content](http://www.w3.org/TR/2004/CR-CSS21-20040225/generate.html). Ahora les muestro mi ejemplo:




    
    <code>q:lang(es) { quotes: &apos;&#092;00AB&apos; &apos;&#092;00BB&apos;; }
    q:lang(es) q:lang(es) { quotes: &apos;&#092;2018&apos; &apos;&#092;2019&apos;; }
    q:lang(es) q:lang(en) { quotes: &apos;&#092;201C&apos; &apos;&#092;201D&apos;; }
    q:lang(en) { quotes: &apos;&#092;201C&apos; &apos;&#092;201D&apos;; }
    q:lang(en) q:lang(en) { quotes: &apos;&#092;2018&apos; &apos;&#092;2019&apos;; }
    q:before { content: open-quote; }
    q:after  { content: close-quote; }</code>





Como pueden observar, no he escrito caracteres normales sino que lo hago utilizando códigos Unicode. En otra entrega les contaré cómo aprovechar los caracteres unicode.





Les explico brevemente qué hacen estas reglas. El conjunto entero de estas hacen que las comillas sean diferentes dependiendo su idioma: esto es español de this is english, y también a su condición: esta es una frase guay que digo siempre a you're a dumbfuck, so shut your mouth. El idioma indicará en qué tipos de comillas están hechas, mientras que la condición indicará si una comilla está encerrada dentro de una frase entrecomillada, ésta tiene que ser con comillas simples.





Ejemplos:





> Diego que está tranquilo mira a Marcos y le dice: Una escopeta sotolindo del 16, un disparo y te vuelo los sesos.





Como podrán observar, las comillas angulares cambian por unas simples cuando la frase viene entrecomillada por unas comillas angulares. Todo este trabajo lo hace CSS automático, y sólo tuve que escribir tags `&lt;q&gt;`:




    
    <code>Diego tranquilo mira a Marcos y le dice: &lt;q&gt;Una escopeta &lt;q&gt;amstrad&lt;/q&gt; del 16, un disparo y te vuelo los sesos&lt;/q&gt;.</code>





Muy fácil. Ahora, las reglas de CSS también contemplan que dos idiomas se enmarquen unos a otros, por ejemplo:





> Diego le dice a Marcos: No puedo creer lo que dices, eres un dumbfuck con mente de 12 años.





Si miramos el código de ese texto, vamos a ver:




    
    <code>Diego le dice a Marcos: &lt;q&gt;No puedo creer lo que dices, 
    eres un &lt;q lang="en"&gt;dumbfuck&lt;/q&gt; con mente 
    de 12 años&lt;/q&gt;.</code>





La regla contempla que una frase se enmarque con comillas angulares y las interiores por ser una palabra en inglés termine con comillas dobles. Todo esto se puede cambiar en CSS, definiendo cada situación para cada idioma.





En el ejemplo que leerán en la especificación de CSS funciona a medias depende el navegador. En cambio éste que hice a pasado varias pruebas. El único navegador que ha respetado mis órdenes fueron todos los pertenecen a la familia Gecko, o sea: Mozilla, Firefox y Netscape 5.x. El resto degrada normalmente, por ejemplo, Opera muestra perfectamente las etiquetas `&lt;q&gt;`, pero no les aplica el formato visual pactado en la hoja de estilos. Internet Explorer directamente no muestra siquiera señal alguna de comillas, ni simples ni dobles. Probablemente esto funcione mejor cuando algún desarrollador ofrezca soporte o behaviours para las versiones de IE.





La ventaja ahora es que no tengo que acordarme de ningún código, no tengo que configurar mi teclado en otro idioma, tampoco saberme combinaciones de teclas raras para definir una cita de diferente idioma al mío. También aseguro que el documento sea semántico, gracias a la aclaración de cada cita, en qué idioma se encuentran, etc.





#### Bibliografía






Internet

    

Bos, B., Çelik, T., & Hickson, I. (2004) Generated content, automatic numbering, and lists  
Håkon Wium Lie. Retrieved 03. 28, 2004, from http://www.w3.org/TR/2004/CR-CSS21-20040225/generate.html



Libros

    

Llorach, Emilio A. Gramática De La Lengua Española. España: Espasa Calpe, 2000.


    

Real Academia Española. Ortografía De La Lengua Española. España: Espasa, Cartoné, 2000.



