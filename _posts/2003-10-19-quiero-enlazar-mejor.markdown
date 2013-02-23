---
comments: false
date: 2003-10-19 20:08:28
layout: post
slug: quiero-enlazar-mejor
title: Quiero enlazar mejor
wordpress_id: 1243
categories:
- Internet
---

Hoy me he planteado una mejor forma de enlazar, quizás estoy equivocado, pero suele ocurrir que cuando intento llegar a un punto interesante de la semántica mediante los elementos de HTML, encuentro que un simple enlace no es suficiente.





No hablo de describir “vas a este enlace” sino “este enlace está fuera de este dominio y sirve de ayuda o para complementar este tema”.





En [la definición de los tipos de enlaces del W3C](http://www.w3.org/TR/html401/types.html#type-links) encuentro varias opciones, una de ellas es alternate, y dice:





> #### Alternate
> 
> Designates substitute versions for the document in which the link occurs. When used together with the lang attribute, it implies a translated version of the document. When used together with the media attribute, it implies a version designed for a different medium (or media).





Simple, crear un enlace que sea `&lt;a href="http://www.blogalia.com" rel="Alternate"&gt;Blogalia&lt;/a&gt;` no dice correctamente que eso es algo exterior, “más información”, sino que expresa “alternatividad”. Esto significa que en el documento que escribo existe _otra versión alternativa_, preparada para otro Agente de Usuario (Eje. Un  navegador) y no que es un enlace externo con información relevante al tema.





Antes en el pasado existía algo que ayudaba pero era puramente de presentación, por ejemplo utilizando el `target="_blank"` podíamos intuir que iba a otra página, pero como esto está desaprobado, busco entre las opciones, y he llegado a la conclusión leyendo la documentación que lo mejor puede que sea utilizar el atributo `rel="help"`.





¿Por qué utilizar “Help”? Veamos la definición:





> #### Help
> 
> 

> 
> Refers to a document offering help (more information, links to other sources information, etc.)





No está tan mal esto, la definición bien lo explica -en inglés lo siento- _referers to a document offering help_, que refiere más información ofreciendo ayuda, esto podemos interpretarlo como “apunta a un enlace a una página de ayuda”, pero también “apunta un documento donde explica mejor o más detalladamente el tema”.





La explicación concluye con  _more information, links to other sources information, etc_. esto sin dudas, da la pista final, (más información, enlaces a otras fuentes de información.





Creo que un buen enlace por ejemplo a la nota de  Dean Allen: Pompignan Wine podría hacerse de esta forma:





> `… pueden ver una &lt;a href="" rel="help" title="Pompignan Wine" hreflang="en" lang="en"&gt;nota sobre la cosecha de vino&lt;/a&gt; y luego…`





Y para dar un toque visual, que mejor que aprovechar uno de los trucos hechos por Brad Choate para sus enlaces externos, todo con CSS y escribiendo unas pocas líneas de CSS, las cuales he modificado a mi gusto:





> <code>
>     a[rel="help"] {
>     padding-right:12px;
>     background-image:url(/images/external.gif);
>     background-position:right;
>     background-repeat:no-repeat;
>     }</code>





La reglas de CSS son simples, he utilizado un selector de atributos, digo que cada vez que exista un elemento `&lt;a&gt;` y contenga un atributo `rel="…"` que a su vez éste `rel="…"` sea `"help"` entonces se aplican estas reglas.





De modo que no tendré que escribir cientos de veces `&lt;img src="…" /&gt;` cada vez que enlace un documento, tampoco tendré que utilizar una clase como lo hace Brad, pro que utilizar clases en los enlaces no es del todo semántico según mi nivel de comprensión en el tema.





Ahora, ¿Qué opinan sobre esto? ¿Creen que es bueno empezar a tomar esta medida? ¿Alguna otra sugerencia semántica o “coherente”?




 
  *[Eje.]: Ejemplo
