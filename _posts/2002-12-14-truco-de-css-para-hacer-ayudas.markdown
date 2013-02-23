---
comments: false
date: 2002-12-14 19:57:30
layout: post
slug: truco-de-css-para-hacer-ayudas
title: Truco de CSS para hacer ayudas
wordpress_id: 739
categories:
- Internet
---

Imagino que muchos de ustedes habrán visto como en este sitio recreamos un link de ayuda sobre algunas palabras o frases que deseamos explicar, para eso creamos algo parecido que soporta los estandares web y elimina la posibilidad de que en un futuro no tengamos que reemplazar estos tags.





Estamos hablando de los trucos para hacer ayudas, como este ejemplo.





## Introducción





Hacer este tipo de arreglos no cuesta nada, es práctico y bastante eficaz, y nos ahorramos de (usar paréntesis para aclarar cosas), de esta forma evitamos que el usuario se pierda también en el texto que escribimos.





Lo primero que tenemos que hacer es en nuestra plantilla de CSS es crear una clase que por gusto mío la podemos llamar `.help`, luego le debemos especificar tantos modificadores como deseemos, por ejemplo color de la tipografía, tamaño, y le vamos a especificar una propiedad bottom-border la cual hará que éstos vallan a aparecer subrayados como los links pero los vamos a diferenciar de los subrayados de los links.





Después de haber escupido unas cuantas definiciones aquí está el código que nos permite realizar esto.





## Comienza la acción





### En nuestro CSS





> `.help { border-bottom: 1px dashed #333;
> 
> 
  cursor: help;
  }`





Woow, super simple… exacto. Ahora les explico que dice todo ese CSS que he escrito…





`.help` es el nombre de la clase que voy a utilizar luego para indicarle a mis tags span donde empieza y dónde termina mi super truco de css help, siguiendo nos encontramos con `border-bottom:` que es la propiedad de cualquier elemento que se encuentre encerrado en mis futuros tags `&lt;span&gt;`, esta propiedad le dice que cualquier elemento que se encuentre dentro va a estar **subrayado**.





Ahora a `border-bottom:` le vamos a asignar los valores que queremos… `1px` **va a ser el grosor** de la línea y `dashed` para que el punteado sea más extenso.





`#333` va a ser el color de esa línea.





`cursor: help;` Con esta propiedad, podemos indicarle _no importa que sistema operativo_ use el usuario, que se torne el cursor de ayuda cuando el cursor se encuentre sobre la frase ya aplicada con el tag span, los cursores de ayuda generalmente varían dependiendo del sistema operativo, de las preferencias que tenga el usuario configuradas.





### En nuestro documento de HTML:





En nuestro documento de HTML donde escribimos el código de todos los días cada vez que deseemos introducir el efecto &#34;help&#34; que hicimos en nuestro css, debemos encerrar la palabra con el tag `&lt;span&gt;`.





Ahora te muestro como hacerlo encerrando esta frase **&#34;Ayer fui de compras al super&#34;**.





para eso observen el ejemplo en el código:





> `Ayer fui de compras al &lt;span class=&#34;help&#34; title=&#34;Un Supermercado&#34;&gt;super&lt;/span&gt;`





Recuerden que en el tag `span` deben haber dos atributos uno es `class`, donde ubicamos el nombre de la clase que creamos en nuestro CSS llamada `.help`, lo hacemos sin el punto solo `help` debemos poner…  observen en el código.





Luego le sigue el atributo `title`, y dentro de `title` debemos escribir el texto correspondiente a la ayuda de esa palabra que deseen ofrecer un soporte.





## Final del artículo





Recuerden de usar todos los tags en minúsculas, y los atributos también.





Chequeen que el tag `span` este perfectamente cerrado y bien anidado con respecto a otros tags.





Este truco de CSS es soportado por varios navegadores que soporten CSS 1, 2.




 
