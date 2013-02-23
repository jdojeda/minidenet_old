---
comments: false
date: 2005-09-19 15:30:22
layout: post
slug: los-minilinks
title: Los minilinks
wordpress_id: 2568
categories:
- Internet
---

Ni bien puse los mini-links –si se le puede llamar así– en el _weblog_ llegaron las preguntas de cómo implementarlo en otros _weblogs_. Lo que hice no es más que lo que hicieron otros ya con tiempo en sus _weblogs_. Los mini-links o “asides” son posts que no tienen textos y salen cronológicamente con las publicaciones que hace un webloguer. Implementarlos es fácil si tienes Wordpress 1.5.2 instalado, no sé que tan difícil será implementarlo en versiones anteriores pero estos son los pasos que he seguido para tenerlo en línea.







  1. Crear una categoría nueva en Wordpress. Yo le puse “baúl” puede ser cualquier otra.



  2. Anotar el ID de esta categoría. Esto es fácil desde el panel de gestión de categorías en Wordpress, posamos el ratón sobre el enlace de «Editar» o «Borrar» y en la barra de dirección te muestra el ID=numero. Anota ese número.



  3. Ponemos el primer código de los mini-links. Corta y pega este código antes del `&lt;?php get_header(); ?&gt;`:



    
    &lt;?php function stupid_hack($str) {
    return preg_replace('|&lt;/ul>\s*&lt;ul class="asides"&gt;|imsU', '', $str);
    }
    ob_start('stupid_hack');
    ?&gt;



  4. Luego, después de esta línea `&lt;?php while (have_posts()) : the_post(); ?&gt;` pega esto:
    
    &lt;?php if (in_category(90) && !$single) { ?&gt;
    &LT;ul class="asides"&gt;
    &lt;li id="p&lt;?php the_ID(); ?&gt;"&gt;&lt;?php echo wptexturize($post->post_content); echo ' '; comments_popup_link('(0)', '(1)', '(%)')?&gt; &lt;?php edit_post_link('(e)'); ?&gt;
    &lt;/ul&gt;
    &lt;?php } else { ?&gt;



  5. En el código anterior a este punto, debes escribir el ID de tu categoría de minilinks, si es 4 –por decir un número– reemplaza el número «90» por «4» y listo.



  6. Pasando la parte de "publicado por" y demás datos del _post_, te encontrarás un `else` seguramente, debes reemplazarlo por esto:
    
    &lt;?php } endwhile; ?&gt;






Ahi ta. Si no te funciona, miratelo todo de nuevo, seguro te saltas un paso o no tienes una versión de Wordpress actualizada.
