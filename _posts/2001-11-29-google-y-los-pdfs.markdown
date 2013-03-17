---
comments: false
date: 2001-11-29 03:30:33
layout: post
slug: google-y-los-pdfs
title: Google y los PDFs
wordpress_id: 76
categories:
- Internet
---

Se acaba la paranoia amigos, ya la noticia de la famosa [utilidad de google.com para encontrar PDFs](http://news.cnet.com/news/0-1005-200-7946411.html) **ya** es de caracter masiva, sobre todo cuando puedes encontrar documentos _privados_, _confidenciales_, cosas que uno se olvida de _sacar a tiempo_.





Estas cosas pasan a menudo, y hasta en empresas grandes y multinacionales como Apple.com.





Esto suele ocurrir cuando uno no utiliza páginas protegidas con passwords de sessión, o no usa `meta tags`.





Algunas soluciones provisorias:







  1. Poner passwords a los PDFS y enviar los passwords vía teléfono, mail, dependiendo el nivel de confiabilidad que uno desee. encriptado.


  2. Utilizar `META TAGS`, ejemplo:




    * `&lt;meta name="robots" content="all" /&gt;` Para cuando se quiere indexar toda la página, esto le da total libertad. 



    * `&lt;meta name="robots" content="noindex" /&gt;` Los buscadores no van a indexar la página pero van a husmear el contenido.



    * `&lt;meta name="robots" content="nofollow" /&gt;` Los buscadores no rastrearán los links de esa página.



    * `&lt;meta name="robots" content="noarchive" /&gt;` Este es especial para Google, por que lo que hace es que la página no quede en el cache de google, pero si indexada.



    * `&lt;meta name="MSSmartTagsPreventParsing" content="true" /&gt;` Este esta a pruebas contra Microsoft, lo que hace es inpedir que Microsoft utilize los SmarTags en tu página (cosa que no utiliza, pero quien sabe).




  3. Ubicar un archivo `robot.txt` en el directorio raíz de tu máquina (e.g., www.myhost.com/robots.txt), el website con toda la información acerca del uso correcto de la sintáxis correcta esta en [http://www.robotstxt.org/wc/faq.html](http://www.robotstxt.org/wc/faq.html).



  4. Otro punto importante, cuando se crean documentos en PDF que van a ser confidenciales, no escriban la palabra _confidencial_, ni nada que demuestre _el valor del documento_, esto ayuda, además otro tip, ya que las personas deben leer en el PDF si el documento es confidencial es ubicar _una pequeña imagen_ `.gif`, `.jpg` legible a la vista del usuario con la palabra confidencial de esta forma Google _no va a poder indexarla_.



  5. Poner password al directorio / carpeta donde los documentos estan alojados temporalmente.


  6. Procura tener los documentos _temporalmente_ en los servidores.





De esta forma… estamos aplicando sólo algunos conceptos básicos, pero efectivos, como por ejemplo, en una pantalla de login, donde hay un `&lt;input&gt;` _usuario_ y otro `&lt;input&gt;` _password_, podemos invertir la funcionalidad interna… produciendo de esta forma una confusión ilógica al intruso.





Estos fueron más que consejos, tips, formas de impedir sin tener que invertir en un departamento de seguridad. Recuerden que este tipo de cosas suelen accederse de una forma muy estúpida, por los tanto _muchos tontos van a obtener_ datos, de manera que con esos trucos técnicos y alguno sicológicos podemos evitar esto.





A dormir tranquilo ahora, más información para hacerle la vida imposible a los intrusos la explicaré más adelante.




 
