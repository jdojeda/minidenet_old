---
comments: false
date: 2006-08-22 12:08:20
layout: post
slug: buscar-y-reemplazar-en-wordpress-mediante-un-plugin
title: Buscar y reemplazar en Wordpress mediante un plugin
wordpress_id: 2929
categories:
- Internet
---

Hace unos días actualicé mi versión de Wordpress a la versión 2.0. Durante el proceso tuve dilemas con algunas cosas que fui solucionando poco a poco. Resulta que había observado unas cuantas entradas antiguas con problemas de formato. Raro, dado que el 95% de mis entradas están escritas usando XHTML estricto sin auto-detección de formato.





Mirando posts, detecté un patrón interesante, parece que Wordpress **no me respeta del todo el tema de la detección**, lo que me complica la existencia, por consiguiente, descubrí que varios posts estaban casi destruidos porque se generaban cajas con `&lt;pre&gt;`, lo cual jode bastante la lectura.





_¿Cómo modifico 3000 entradas de Wordpress para solucionar esto?_ Primero pensé en editar la base de datos de Wordpress desde la consola de MySQL. Una solución algo rústica así que, busqué en el [Codex de Wordpress](http://codex.wordpress.org/Main_Page) por [plugins](http://codex.wordpress.org/Plugins) que hicieran este trabajo por mí. Así encontré un plugin llamado [Search and Replace](http://thedeadone.net/?p=183), de fácil instalación que me permite hacer cambios masivos en las tablas de datos de mi blog desde el administrador de Wordpress.





La instalación es fácil. Descargas el archivo y lo dejas dentro de la carpeta `/wp-content/plugins/` en tu instalación de Wordpress. Luego, al activarlo en la sección plugin debes ir a la zona de gestión y entrar en la pesqueña “Search and Replace”. Es bien simple y fácil de usar, eso sí, con responsabilidad que puedes hacer un destrozo sin retorno.





Recomendado.
