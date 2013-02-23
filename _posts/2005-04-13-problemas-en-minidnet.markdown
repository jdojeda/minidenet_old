---
comments: false
date: 2005-04-13 09:33:30
layout: post
slug: problemas-en-minidnet
title: Problemas en minid.net
wordpress_id: 2382
categories:
- Internet
---

Al parecer, el altísimo tráfico que genera este sitio hace que trabaje el procesador de una de las máquinas donde está alojado. Probablemente el sitio deje de funcionar en determinada hora. Hace dos semanas me han puesto en un servidor y me están midiendo la cantidad de segundos que trabaja el procesador. Según Dreamhost, soporta hasta 240.000 en un día y parece que reventamos la marca. El tema está en que está usando PHP como CGI, así que lo re-configuré como módulo de Apache. También puse a todos los .php un chmod 755. Así mismo cabe destacar que cada vez estoy más cabreado con las compañías de hosting que nada les viene bien, si no es esto es aquello al final uno paga una pasta gansa en algo y me salen con esto ahora.





Quizás deba replantearme dos soluciones: Instalar WP 1.5 a ver si mejora en algo el uso del PHP y no trabaja tanto o volver al prehistórico método de MT generando páginas estáticas (no me gusta esta opción).




 
  *[MT]: MovableType
  *[WP]: Wordpress
