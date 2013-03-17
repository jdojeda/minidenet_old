---
comments: false
date: 2005-04-25 08:55:13
layout: post
slug: no-ms-hijackers
title: No más hijackers
wordpress_id: 2406
categories:
- Internet
---

Uno de los problemas más grandes que puede llegar a tener una persona propietaria de una página es tener que lidiar con el consumo de ancho de banda. Parece mentira, parece surrealista, pero este tema es serio. Como estas cosas ya me las tomo a modo reto, eliminé todas las peticiones de imágenes que hacía gratuitamente a todos los sitios y esto significa:







  1. No hay más _hijackers_.


  2. Ahorro brutal de ancho de banda.


  3. Si quieres una imagen búscala e instálala en tu servidor no la enlaces desde aquí.





Esto sin dudas mejoró el consumo de ancho de banda. De servir todos los días defectuosamente 1,5 GB de información pasé a enviar sólo 1,3 GB. Doscientos megas es una cifra considerable. Eso que no he optimizado aun el código y en ello estoy. De momento estos datos son provisorios, espero que baje aun más el consumo producido por este tipo de enlaces.





Para llevarlo a cabo en vuestra página necesitan tener primero un archivo .htaccess en la carpeta raíz del sitio. Si digo `.htaccess` me refiero a que esto solo funciona si tienes alojada tu página en el maravilloso servidor web [Apache](http://www.apache.org). Si cumples ese requisito maravilloso entonces puedes seguir con estas líneas de código:




    
    <code># otro hack anti robo de imagenes
    SetEnvIfNoCase Referer "^http://www.midominio.net/" locally_linked=1
    SetEnvIfNoCase Referer "^http://www.midominio.net$" locally_linked=1
    SetEnvIfNoCase Referer "^http://midominio.net/" locally_linked=1
    SetEnvIfNoCase Referer "^http://midominio.net$" locally_linked=1
    SetEnvIfNoCase Referer "^$" locally_linked=1
    &lt;FilesMatch ".(gif|png|jpe?g)$"&gt;
      Order Allow,Deny
      Allow from env=locally_linked
    &lt;/FilesMatch&gt;</code>





Con este pequeño código eliminamos casi con certeza cualquier acción de utilización sin permiso de nuestras imágenes en nuestro servidor. Este código me lo pasó pulido [Nicolás Fantino](http://www.100px.com) que no deja de sorprenderme :).





 
  *[GB]: Gigabyte (1024 megabytes)
