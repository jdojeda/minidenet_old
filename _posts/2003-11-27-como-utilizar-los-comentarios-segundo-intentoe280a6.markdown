---
comments: false
date: 2003-11-27 19:30:00
layout: post
slug: como-utilizar-los-comentarios-segundo-intento%e2%80%a6
title: 'Como utilizar los comentarios: segundo intento…'
wordpress_id: 1322
categories:
- Internet
---

Voy a explicar claramente como explotar la capacidad de escribir comentarios en este weblog, no se trata de decirles sobre qué temas, que tono --sean buenos y respetuosos-- sino que esto está más relacionado a los "comodines" o los "códigos" para que los comentarios salgan perfectos.





#### Cómo funciona el sistema de comentarios de este weblog





Este weblog está montado con Movable Type, y tiene 3 modos de escribir los comentarios:







  * **Sin formato:** Escribas lo que escribas, MT no procesa las líneas, y también pueden estar desactivados todo tipo de tags.


  * **Con autoformato:** Cuando escribes una URL MT instantáneamente te la auto--enlaza, también puedo desactivar todos los tags, pero en este caso, el autoformato reconoce las rupturas de lineas que hacemos, si presionamos la tecla Enter una sola vez, MT nos pone en ese punto del parrafo un `&lt;br /&gt;`, si presionamos dos veces la tecla Enter, MT nos auto formatea todos los parrafos, muy útil para que nuestros comentarios queden bien legibles.


  * **Textile:** Textile es un filtro de escritura muy bueno, parecido al autoformato de MT pero con cosas adicionales, es mucho más poderoso que el anterior, pero ineficiente para postear en minid.net, pero al contrario bastante práctico para utilizar en los comentarios.





#### ¿Cómo funciona Textile?





Para comentar con todos los juguetes en minid.net tienes que aprenderte los códigos escenciales de Textile, eso es tán sencillo como escribir, no hace falta escribir nada tan complejo como un tag, vamos a los ejemplos…:





Para los ejemplos voy a tomar un comentario de [A. Rivadulla](http://www.minid.net/archivos/categorias/software/xscope_el_set_de_herramientas_que_me_faltaba.php#a8708):





> "Respecto a redimensionar el tamaño de pantalla hay una extension de firebird (Web developer) que trae esa funcion, pero claro, es solo para diseño web."





#### Las negritas





> ##### Cuando queríamos hacer negritas antes, usabamos `&lt;strong&gt;` o `&lt;b&gt;`
> 
> 


> 
> … Respecto a redimensionar el `&lt;strong&gt;`tamaño de pantalla`&lt;/strong&gt;` hay una extension de firebird (Web developer) que trae esa funcion, pero claro, es solo para diseño web …





> ##### El resultado en un comentario era:
> 
> 


> 
> … Respecto a redimensionar el **tamaño de pantalla** hay una extension de firebird (Web developer) que trae esa funcion, pero claro, es solo para diseño web …





> ##### Ahora con Textile es más fácil:
> 
> 


> 
> … Respecto a redimensionar el `*`tamaño de pantalla`*` hay una extension de firebird (Web developer) que trae esa funcion, pero claro, es solo para diseño web …





> ##### El resultado en un comentario queda:
> 
> 


> 
> … Respecto a redimensionar el **tamaño de pantalla** hay una extension de firebird (Web developer) que trae esa funcion, pero claro, es solo para diseño web …
> 
> 







En Textile cuando encierras una palabra o una frase con asteríscos `*palabra palabra*` automáticamente te pone los tags, el resto de tags que veremos funciona de la misma forma.





#### Resto de los códigos para hacer los tags en línea:






_Italicas_

    Escribe `_palabra_` para que el sistema lo traduzca a `&lt;em&gt;palabra&lt;/em&gt;`

	
Citas

    Interesante para enmarcar nombres propios, nombres de libros, empresas, lugares. Escribe `??palabra??` para que el sistema lo traduzca a `&lt;cite&gt;palabra&lt;/cite&gt;`.


<del>texto borrado</del>

    Para borrar una frase en el medio de <del>un texto</del> escribe `-palabra-`, el sistema lo traducirá a `&lt;del&gt;palabra&lt;/del&gt;`


--El Guión largo

    Dado que está habilitado [SmartyPants](http://daringfireball.net/projects/smartypants/) en el sistema, si escribes `--palabra--` el sistema lo traduce a `&mdash;palabra&mdash;`, también puedes escribir `--palabra` y el sistema lo traduce a `&mdash;palabra`, ójo que no es lo mismo "&mdash;" que "-".


Los puntos suspensivos

    Al igual que el ejemplo anterior, al tener [SmartyPants](http://daringfireball.net/projects/smartypants/) instalado los puntos suspensivos "…" se traducen a la entidad correspondiente "&hellip;".


Acrónimos ABC

    MT Textile soporta acrónimos, y para hacerlos es muy fácil, escribiendo `ABC(Ah Bé Cé)`, el sistema lo traduce `&lt;acronym title="Ah Bé Cé&gt;ABC&lt;/acronym&gt;`, donde ABC puede ser ASP, SIDAR o lo que sea, recuerda que en minid.net hay cientos de acrónimos automáticos, pero si quieres utilizar un acrónimo muy inusual fuera de los términos informáticos por ejemplo SGAE.


`Código`

    Para representar código en un comentario, debes escribir `@palabra@` entonces el sistema lo traduce a `&lt;code&gt;palabra&lt;/code&gt;`.


"Comillas dobles" y 'simples'

    El sistema de comentarios está educado para cambiar las comillas a sus correspondientes equivalentes en entidades de HTML, de modo que si escribes código y lo encierras propiamente entre arrobas `@html title="…"@` el sistema reconoce que no debe aplicar el "formateo de comillas".







#### Códigos para hacer tags de bloque





Para hacer tags en bloque, como `pre`, bloques de citas, párrafos, es importante que aprendas que estas cosas funcionan cuando se está a dos interlíneas del bloque de texto anterior, ya veréis el porque…





##### El bloque preformateado





Ideal para escribir ejemplos de código que no sean HTML, debes escribir `bc. texto aquí` para que formatee el `pre`.





Ejemplo:




    
    
    Este es un ejemplo de CSS:
    
    bc. home {
    	background-color: aqua;
    	text-align: justify;
    	border: 1px solid #333;
    	margin: 0em 2em 100em 0em;
    	}
    





Y el sistema lo traduce a HTML como:




    
    
    &lt;p&gt;Este es un ejemplo de CSS:&lt;/p&gt;
    
    &lt;pre&gt;home {
    	background-color: aqua;
    	text-align: justify;
    	border: 1px solid #333;
    	margin: 0em 2em 100em 0em;
    	}
    &lt;/pre&gt;
    





##### Las citas





Cuando quieras citar un texto grande, sigue los mismos pasos del código `bc.` pero utilizando `bp. `, recuerda que cuando hagas una cita presionar dos veces Enter para separar el bloque del otro, sino el sistema lo interpreta como un `&lt;br /&gt;`.






Ejemplo:




    
    
    Este es un ejemplo de lo que hablo:
    
    bp. Hola el otro día fui a la casa de faemino.
    
    





Y el sistema lo traduce a HTML como:




    
    
    &lt;p&gt;Este es un ejemplo de lo que hablo:&lt;/p&gt;
    
    &lt;blockquote&gt;
    &lt;p&gt;
    Hola el otro día fui a la casa de faemino.
    &lt;/p&gt;
    &lt;/blockquote&gt;
    
    





##### Las listas ul y ol





Bueno, llegamos a las partes jugosas, los listados, todo el mundo hace listados, pero muchas veces los hacen mal, nadie tiene la culpa, la culpa es mía por no donar explicaciones, así que colaboro en la tarea:





Los listados son elementos de bloque como las citas y los bloques de código que anteriormente he explicado, así que recuerden la tonta regla de presionar Enter dos veces, las listas reaccionan de dos formas las numéricas con `# palabra` y las desordenadas con `* palabra`, como en el ejemplo:




    
    
    Estas son las cosas que me compraré:
    
    # Un PowerBook 12" con 256 MB RAM.
    # Un maletín.
    # Una camiseta con el logo de Apple.
    





Esto resulta en:




    
    
    &lt;p&gt;Estas son las cosas que me compraré:&lt;/p&gt;
    
    &lt;ol&gt;
    	&lt;li&gt;Un PowerBook 12" con 256 MB RAM.&lt;/li&gt;
    	&lt;li&gt;Un maletín.&lt;/li&gt;
    	&lt;li&gt;Una camiseta con el logo de Apple.&lt;/li&gt;
    &lt;/ol&gt;
    
    





Ejemplo mal hecho




    
    
    Estas son las cosas que me compraré:
    # Un PowerBook 12" con 256 MB RAM.
    # Un maletín.
    # Una camiseta con el logo de Apple.
    





Otro ejemplo mal hecho:




    
    
    Estas son las cosas que me compraré:
    
    # Un PowerBook 12" con 256 MB RAM.
    
    # Un maletín.
    
    # Una camiseta con el logo de Apple.
    





Otro ejemplo mal hecho:




    
    
    Estas son las cosas que me compraré:
    # Un PowerBook 12" con 256 MB RAM.
    
    # Un maletín.
    
    # Una camiseta con el logo de Apple.
    





Otro ejemplo mal hecho:




    
    
    Estas son las cosas que me compraré:
    
    #Un PowerBook 12" con 256 MB RAM.
    #Un maletín.
    #Una camiseta con el logo de Apple.
    





Las listas desordenadas se hacen con el caracter `*`




    
    
    Estas son las cosas que me compraré:
    
    * Un PowerBook 12" con 256 MB RAM.
    * Un maletín.
    * Una camiseta con el logo de Apple.
    





El resultado final es:





    
    
    &lt;p&gt;Estas son las cosas que me compraré:&lt;/p&gt;
    
    &lt;ul&gt;
    	&lt;li&gt;Un PowerBook 12" con 256 MB RAM.&lt;/li&gt;
    	&lt;li&gt;Un maletín.&lt;/li&gt;
    	&lt;li&gt;Una camiseta con el logo de Apple.&lt;/li&gt;
    &lt;/ul&gt;
    
    





Se pueden conbinar listas, una dentro de otra sin muchas complicaciones por ejemplo:




    
    
    Estas son las cosas que me compraré:
    
    # Un PowerBook 12" con 256 MB RAM.
    ## 256 RAM adicional.
    ## Un iPod.
    ## Adaptador USB
    # Un maletín.
    ** Que no sea de color gris.
    ** Tenga compartimientos.
    # Una camiseta con el logo de Apple.
    





Esto da como resultado en HTML para el comentario:




    
    
    &lt;p&gt;Estas son las cosas que me compraré:&lt;/p&gt;
    
    &lt;ol&gt;
    	&lt;li&gt;Un PowerBook 12 con 256 MB RAM.
    		&lt;ol&gt;
    			&lt;li&gt;256 RAM adicional.&lt;/li&gt;
    			&lt;li&gt;Un iPod.&lt;/li&gt;
    			&lt;li&gt;Adaptador USB&lt;/li&gt;
    		&lt;/ol&gt;
    	&lt;/li&gt;
    	&lt;li&gt;Un maletín.
    		&lt;ul&gt;
    			&lt;li&gt;Que no sea de color gris.&lt;/li&gt;
    			&lt;li&gt;Tenga compartimientos.&lt;/li&gt;
    		&lt;/ul&gt;
    	&lt;/li&gt;
    	&lt;li&gt;Una camiseta con el logo de Apple.&lt;/li&gt;
    &lt;/ol&gt;
    





### Consideraciones a la hora de escribir un comentario







  1. Revisa tu código Textile bien, no es complejo aprenderse los básicos.


  2. Cuando quieras hacer un paréntesis como éste --esta es una pausa-- recuerda que debes utilizar "--" y no "-" por que sinó el resultado será <del>esta es una pausa</del>.


  3. Antes de enviar un comentario, has clic en Previsualizar para ver el resultado con los códigos aplicados ahí mismo puedes corregir tus errores.


  4. Recuerda separar los párrafos con dos golpes de la tecla Enter y no uno solo.


  5. Respeto hacia tus colegas webloggers y participantes de la Blogosfera.


  6. Céntrate en el tema que se está discutiendo, no te vayas por las ramas.


  7. NO ESCRIBAS TODO EN MAYÚSCULAS, es feo, queda mal, y realmente no tiene ninguna utilidad.


  8. No escribas en tus datos URLs de lugares comerciales, minid.net no quiere hacer favores a ninguna empresa si no se paga, por ende, si trabajas en una empresa de posicionamiento de direcciones webs en buscadores, este no es el mejor lugar para declarar tu URL, acepto direcciones personales, weblogs, y empresas que conozca.


  9. Cualquier comentario ofensivo, o fuera de tema, lugar, será borrado cuando crea conveniente.





Parecen muchas reglas, pero en realidad esto no es nada, un poquillo de orden para que esto no se transforme en un caos.





Por cierto, pueden pobrar en este post los comentarios, y hacer todos los posts de pruebas que quieran.
