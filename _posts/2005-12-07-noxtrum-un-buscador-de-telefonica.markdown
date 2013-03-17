---
comments: false
date: 2005-12-07 18:19:44
layout: post
slug: noxtrum-un-buscador-de-telefonica
title: Noxtrum un buscador de Telefónica
wordpress_id: 2687
categories:
- Internet
---

Hoy estuve usando [Noxtrum](http://www.noxtrum.com), un buscador que ha creado la empresa Telefónica. La presentación en sí del sitio la encuentro aceptable. Desde mi punto de vista, la neutralidad de los colores ayuda, el formato gráfico me parece más tendencioso que utilitario, la típica «hoja» con sombras y puntas que podemos ver en una centena de diseños. Más allá de los detalles gráficos y para que esto no se convierta en una égloga, quería recalcar en algunas cosas importantes: el por qué estos sitios deberían ser al revés de lo que son ahora. El código es aviso, y hay casos que me hacen petar el navegador, pero esto solo me pasa de vez en cuando.





No se busca una asepsia total de truquitos de HTML. No se busca un código _kosher_, sino algo más simple: código esencial, estructural y enfocado a los datos. Usar código de presentación es complicarse la vida. _No_ quiero recalcar en otros adjetivos porque sería ofensa, pero, estando en el 2006 y ver cosas de este estilo me crispa. Y créanme, imagino que no es culpa del maquetador, sino de otra cosa: el sistema que mueve esto. No veo otro posible origen del problema. A mí me pasa día a día. Tengo que tratar con un sistema que no hace más que complicarme el camino a un código estándar, simple, sin vueltas y con beneficios. Me obliga a re-pensar estructuras que serían la mar de simples en cosas complejas y rebuscadas, que ofrecen un buen resultado al usuario de todas formas, pero que podrían hacerse más rápidas y eficientes.





Volviendo al tema, pude localizar algunas perlas del código. Predomina el abuso de divs y spans. Los _estandaristas_ nos quejamos de estos detalles, y les parecerá chocante y un disparate el asunto, como una _dividititis_ aguda afecta a una estructura, acompañado de un cementerio de `id` y `name`. La falta de imaginación es el primer síntoma, aunque no descarto lo que mencioné con anterioridad. Luego la manía loca de comentar cosas y olvidar borrarlas. La paleontología del HTML en todo esplendor, la belleza de las líneas de HTML que quedaron muertas desde hace tiempo y nadie se da cuenta que siguen ahí enterradas. Esta desgracia me compele a descargarlas cada vez que realizo una búsqueda, ustedes también. Mirando el código puedo ver mares blancos, producidos por algún desarrollador de compulsivos golpes a la tecla Enter o algún JSP vengativo. Ver el código se transforma en un dolor de muelas, lo que me invita a pensar en otro tipo de problemas. A ver, unos cuantos retornos de carro _no_ harán explotar el mundo, ni van a retirar las tropas de Irak... pero tantos, no. Otra de las cosas que me pregunto es el por qué  de tanto JS. ¿Para qué? ¿Cuántas cosas no se pueden reemplazar? ¿Qué hace de maravilloso tanta implementación de JS? Y por último:




    
    <code>&lt;img id="moxqumeImg3" border="0" height="0" width="0" style="display:none"/&gt;</code>





No entiendo la finalidad de esto. A ver, alguien me explique para qué sirve eso. Es cómico que una imagen, de tamaño cero, ancho cero y con un `display:none` tenga que pertenecer al muestrario paleontológico del sitio. Nada supera al CSS muchachos, nada.





Pero ey, no se aflijan, si comparamos el código de Google con éste de Noxtrum estamos 10 años adelante, por fin una. Google sigue usando etiquetas `&lt;font&gt;` y novatadas del tipo:




    
    <code lang="en">&lt;table cellpadding=0 cellspacing=0 border=0&gt;
    &lt;font size=-1&gt;</code>





Así que, no es tan malo de momento. Sólo deberían aprovechar ahora antes de que se haga intocable el asunto. El resto, una experiencia de uso positiva, faltaba más. Es rápido y cómodo, letras grandes y colores suaves se agradecen en cantidades ingentes. Busqué algunas cositas y salieron buenos resultados, así que, de momento sigo con Google y Yahoo.
