---
comments: false
date: 2004-09-29 17:13:24
layout: post
slug: qu-capullo
title: Qué capullo
wordpress_id: 2000
categories:
- Internet
---

Un capullo bajo la IP 66.98.226.51 intentó enviar unos 100 comentarios de spam. Lamentablemente [WP](http://www.wordpress.org) no dispone de herramientas que impiden semejante estupidez, así que entre las cosas que uno puede hacer es editar desde el mismísimo panel de WP el archivo `.htaccess`:




    
    <code>Order deny,allow
    Deny from (aqui escribe la ip sin los par&eacute;ntesis)</code>





Peazo gilipollas.




 
