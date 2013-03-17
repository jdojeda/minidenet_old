---
comments: false
date: 2003-01-13 19:49:10
layout: post
slug: libero-un-truquito-de-css
title: Libero un truquito de CSS
wordpress_id: 791
categories:
- Internet
---

Bueno, espero que a muchos les alegre ver sus weblogs en puro XHTML y CSS sin gaps raros como el que suelen tener [isopixel](http://www.isopixel.net/archives/000747.html) y los chicos de ABB, el tema es que ellos usan una imagen con una propiedad de floated hacia la derecha o izquierda… y esto hace que cuando escriban un post de muy poco texto ésta imagen corrompa el div que encierra todo el post.





A ver si mi hack funciona, vah en realidad es un hack que se viene utilizando pero como estoy escribiendo esto a la marcha seguramente se aplica… ya que según cualquier elemento en HTML que sea ya inline, block, o replaced que posea un modificador del tipo `float: left | right | none;` se convierte automáticamente en un elemento de bloque.





Esto afecta tanto a las imágenes como a cualquier elemento, es por eso que este hack que voy a explicar ahora puede que les funcione. ya me dirán luego…





En el CSS que estén utilizando, abran una nueva propiedad, como un tag `P` con una clase llamada “clear” de esta forma:





> `P.clear { clear: both; }`





Muy bien ahora en nuestro código HTML,  ubicamos a final del div que encierra a cada post esto:





> `&lt;p class="clear"&gt;&lt;/p&gt;&lt;/div&gt;`





Muy bien sigamos, ahora con esto logramos que el tag `&lt;p&gt;` no dejara que ningún elemento se colara tras él, la imagen se verá contenida dentro del `&lt;div&gt;` como corresponde… pero hay algo… el tag `&lt;p&gt;` deja un tremendo espacio vacío… entonces nos dirijimos de nuevo al CSS:





> `P.clear { clear: both; margin: 0; padding: 0; }`





Listo este ejemplo funciona en muchos navegadores, incluso tiene el mismo efecto que el `&lt;br clear="all" /&gt;`, pero incluso si en vez de usar un `&lt;p&gt;` usamos un `&lt;br /&gt;` vamos a tener resultados no deseados en algunos navegadores como el Opera, Internet Explorer 5, 4, etc.





Espero que este truquillo les aclare la imaginación ya que sirve de mucho para posicionar `&lt;div&gt;` flotadas y hacer tremendos layouts… ahora me voy corriendo a casa a hacer las tareas y a mirar [C.S.I](http://www.tvtome.com/CSI/)!!!




 
