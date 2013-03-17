---
comments: false
date: 2001-12-01 03:48:30
layout: post
slug: xhtml-y-el-weblog
title: XHTML y el weblog
wordpress_id: 84
categories:
- Internet
---

La verdad me ha llevado lágrimas hacer que este sitio valide perfectamente en XHTML 1.1 usando la plataforma [Blogger](http://www.blogger.com), una de las razones ya pronto podrá ser leída en un artículo que estoy escribiendo en el cual explico muchas cosas sobre XHTML, CSS y la forma de desarrollar. Esto por supuesto no solamente nos hace la vida más sana… sino que estamos implementando muchos factores… como aprovechar los recursos de XML, CSS al máximo, usar GUIs estándares, implementar usabilidad, accesibilidad.





La historia de hoy se centraliza en Blogger y los estándares… si bien Blogger da algunos consejos, Blogger _no incentiva_… lo cual es erróneo. El por qué reside en su sistema de posting, éste ya debería estar implementando estándares web… un consejo… cuando uno edita en blogger usando Internet Explorer tiene ciertos features, que nos permiten seleccionando un texto con el cursor del mouse y luego presionando sobre el botón `&lt;b&gt;` obtener codigo con tags de html ya ubicados, nos ahorra el tiempo de escribir algo asi:





> `&lt;b&gt;un ejemplo&lt;/b&gt;`





Lo cual nos automatiza un montón… pero vale, el tag `&lt;b&gt;` ya es un deprecated tag en HTML 4.01 (en castellano sería: una etiqueta desaprobada), esto que genera… que multitudes de weblogs sigan generando código no estándar, yo a veces me pongo en un estado de crisis con el tema de estándares webs, pero sólo deben imaginarse lo que sería dentro de 1 o 2 años, con la popularidad de los weblogs, y la cantidad de contenido que generan, obtendríamos seriamente el doble o más de información malformada.





Que hay de malo en eso se preguntarán, bueno es simple, quizás mucha gente deje tirado su [weblog](http://minid.pitas.com), pero hay personas que podrían tenerlo 10 o 20 años online, lo cual no erraría al decir que nunca se valla a poner a editar 3 o 4 años de posts con tags llenos de tags no válidos, esto también influirá en la forma en la que accederemos a la web, yo sé exactamente que tampoco quiero ser Nicholas Negroponte ;) pero imagino que dentro de unos años browsear páginas webs con PDAs, teléfonos móviles, pads, etc será moneda corriente… y las limitaciones serán muchas, para eso W3C impone el XHTML en favor a desarrollar para que en un futuro nadie pierda el tiempo ni la cabeza editando tags malformados, ni contenido del pasado.





Siguiendo con este larga historia, Blogger no ayuda en ese sentido… no está mal que la gente haga las cosas “ciegamente”, me refiero a que utilize la plataforma blogger para escribir y agregarle los tags automáticamente, mi mamá por ejemplo no tiene la más idónea idea de que pasa si usa `&lt;b&gt;` en vez de `&lt;em&gt;`, es por eso… que Blogger debería modificar este tipo de cositas que al fin y al cabo ayudarían a que esa gente que tampoco quiere aprender demasiado sobre los estándares a hacer las cosas bien.





Cómo logramos esto… la primera alternativa que veo posible para que todo empieze yendo bien es que los tags automáticos como `&lt;b&gt;`, `&lt;i&gt;` y el famoso `&lt;br&gt;`, sean reemplazados en favor (en el mismo orden que he escrito anteriormente) por `&lt;strong&gt;`, `&lt;em&gt;` y `&lt;br /&gt;`. De esta forma, la gente que recién se inicie en el mundo de los weblogs y HTML y no tenga la más pálida idea, haga las cosas bien, aún sin saber que las está haciendo bien.





La otra es el tema detección de `&lt;br /&gt;` que uno puede usar sin necesidad de presionar el botoncito de `br`, esto muchos y lo saben es utilizar los caracteres invisibles que los forms generan cuando uno presiona enter para hacer un interlineado, uno no ve nada, pero en realidad ahi hay un caracter por así decirlo invisible que es iso que indica que se presiona enter, eso el motor de Blogger lo interpreta y lo traduce en muchos `&lt;br&gt;` mal formados. Esa es una de las salidas que encuentro fácil de hacer… prevenir _es curar_ (parece una campaña contra el sida esto de los estándares).





Muchos dirían… okey pero el tag `&lt;i&gt;` valida, pero en realidad no es así… `&lt;i&gt;` va a cumplir el mismo destino que `&lt;b&gt;` que será morir… por que `&lt;i&gt;` incentiva a usar presentación en vez de utilidad, en cambio `&lt;em&gt;` cumple una mejor función ya que por ejemplo si una persona utiliza un lector de pantalla, una palabra encerrada entre `&lt;i&gt;``&lt;/i&gt;` no va sonar de la misma forma que encerrada por el tag _énfasis_ `&lt;em&gt;``&lt;/em&gt;` … son pequeños detalles que muy pocos están al tanto… pero como no todo el mundo debe estarlo, haría bien que se desabilitara todo tipo de tag no válido para los estándares.





Otro factor importante es que todos los templates que se encuentren en el rango de HTML, que sean traducidas al XHTML, [Eric Costello](http://www.glish.com), ha desarrollado un template para blogger el cual esta hecho usando DOM, CSS 2, y XHMTL 1, bastante respetable, y con ese mismo yo hice este website, solamente que yo le hice 10.000 ajustes a mi gusto, thanks very much Eric.





Otra cosa que Blogger debe arreglar es tan y más prioritaria que todo lo mensionado antes, es el tema de los permanent links ó bien dicho a la lengua castellana los enlances permanentes, blogger genera un código numérico por ejemplo `7548569`, dado que en XHTML el atributo `name` ha sido reemplazado en favor del uso del atributo `id`, `name` no conllevará a la validación del documento, para esto debemos usar `id` entonces, pero el tema no termina ahí ya que el atributo `id` no soporta el uso único de números, a que voy… a que un documento que use un `id="7548569"` para identificar un link, éste impide la validación, para esto tuve que recurrir a un método llamado “_lo atamos con alambre_”, y tuve que ubicar una letra al comienzo del tag que genera blogger o sea.





> 
**En vez de:**  

  

`#&lt;$BlogItemNumber$&gt;`





**Agregamos una letra delante el de tag:**





> `#a&lt;$BlogItemNumber$&gt;`
> 
>   

  

Y al anchor tag le agregamos la letra a también, heh, sino a dónde nos lleva el link… entonces el anchor quedaría de esta forma `&lt;a id=&#34;a&lt;$BlogItemNumber$&gt;&#34;&gt;&lt;/a&gt;`





De esta forma el documento valida. Esto que acabo de escribir ojalá sirva de ayuda a alguien que se encuentre desarrollando _algo como blogger_, ya que sería una total _innovación_ hacerlo cubriendo _estos aspectos_.





La lista puede seguir… y si se te presentó algun inconveniente relacionado con el tema puedes [escribirme](mailto:diego@minid.net) ;).




 
