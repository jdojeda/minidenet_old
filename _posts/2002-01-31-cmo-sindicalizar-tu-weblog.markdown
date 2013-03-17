---
comments: false
date: 2002-01-31 02:32:09
layout: post
slug: cmo-sindicalizar-tu-weblog
title: Cómo sindicalizar tu weblog
wordpress_id: 211
categories:
- Internet
---

Es hora de que la sindicalización este a primera orden… la verdad si no fuese por [blogpocket](http://www.blogpocket.com/index.phtml#20020130) no me hubiese enterado de que existía [reSINDICALIZADOS](http://www.codixe.net/~rss/), para los que todavía no estan al tanto de estas cosas… es **xml en masa**.  

  

Si… como pueden observar este sitio tiene un link a su izquierda que vomita en grandes cantidades de [**XML**](/index.xml), todos los posts de este weblog que se hacen los últimos 3 días en formato xml.  

  

Existen otras alternativas como el RDF, bueno de eso se trata este tipo de sitios que chupan los titulares y parte del contenido para empujarlo a miles de websites.  

  

XML permite que esto se desarrolle naturalmente, pero lo bueno de reSINDICALIZADOS es que éste parsea las páginas hechas con [Greymatter](http://www.codixe.net/~rss/greymatter.html) o [Blogger](http://www.codixe.net/~rss/blogger.html), por supuesto que no veo el problema que lo haga con MT, pero MT tiene el módulo de XML lo cual lo hace todo menos tedioso.  

  

El parseo se lleva a cabo ubicando dentro de los templates dos simples tags que son más bien conocidos como comments… y ellos son `&lt;!-&lt;del&gt;RSS&lt;/del&gt;&lt;del&gt;&gt;` y `&lt;!&lt;/del&gt;&lt;del&gt;FINRSS&lt;/del&gt;-&gt;` y listo, con eso ya puede solicitar que su sitio sea inspeccionado para que obtenga la información.  

  

Una de las posibilidades que he notado es que sólo hay 4 opciones como templates y quizás no son lo más indicado, pero ya ofrecí una solución y es la de ayudar a crear más templates ó de idear un modo de ver la forma de que eso sea customizable en fin le doy un pulgar arriba a este projecto.  

  

La instalación de uno de éstos 4 módulos es tán fácil como un cute and paste.  

  

Pueden ver ejemplos de titulares en [blogpocket](http://www.blogpocket.com/) y [minusval2000](http://www.minusval2000.com/bitacora/), esto es otro tipo de información dinámica que puede o no beneficiar a sus respectivos sitios.




 
