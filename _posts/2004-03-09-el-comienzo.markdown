---
comments: false
date: 2004-03-09 15:48:35
layout: post
slug: el-comienzo
title: El comienzo
wordpress_id: 1570
categories:
- Internet
---

El comienzo de un proyecto web, puede parecer simple, pero esa simpleza luego da lugar al caos. Antes de tocar la primera linea de HTML u abrir el programa de edición de textos siempre comienzo por la organización básica. Creando las carpetas en el servidor. Comenzando por la carpeta raíz `/xwiki` dentro de la carpeta donde alojo a casi todos los proyectos que luego servirá el Apache. Luego, prosigo a crear las 3 primeras y básicas carpetas del proyecto: `/css/`, `/inc/`, `/images/`.





Ese es mi comienzo. Esta organización básica es la que siempre defino en un proyecto. Lo mínimo que necesita un sitio para comenzar organizado. No es reglamentario, ni de libro, es sólo una vieja costumbre.





Luego, paso a configurar mi proyecto en el servidor Apache. Es relativamente fácil, primero abro el archivo `httpd.conf` y busco una línea que diga `&lt;VirtualHost`, luego escribo el destino de mi nuevo proyecto:




    
    &lt;VirtualHost *&gt;
        DocumentRoot "C:/Apache/htdocs/xwiki"
        ServerName xwiki.laptop
    &lt;/VirtualHost&gt;





Simplemente duplico un ejemplo que trae el archivo `httpd.conf`. He escrito la dirección de la carpeta donde ya se encuentran esas tres carpetas (`/css/`, `/inc/`, `/images/`). Guarda todos los cambios y cierra el archivo, como último paso reinicia el servidor.





Luego me resta configurar los DNS para que el dominio que he creado `xwiki.laptop` redireccione a la carpeta `/xwiki/` dentro de `/Apache/`, y para ello, hace falta ir al archivo hosts y editarlo. El archivo se puede encontrar fácilmente si realizamos una búsqueda en la carpeta donde tenemos instalado Windows. Por lo general se encuentra en `C:WINNTsystem32driversetc`.





Cuando abras el archivo `hosts` (que no tiene extensión) observarás un texto introductorio, luego un párrafo que te indica a modo ejemplo como hacer una nueva entrada:




    
    # Por ejemplo:
    <p>#</p>
    <ol>
    <li>102.54.94.97rhino.acme.com# servidor origen</li>
    	<li>38.25.63.10x.acme.com# host cliente x








Ahora simplemente resta poner nuestra entrada en la lista de dominios:




    
    127.0.0.1localhost
    127.0.0.1xwiki.laptop
    127.0.0.1mysql.laptop





Guardar el archivo y cerrarlo. Así de simple.





Luego tenemos que decirle a Windows que reinicie los servicios de DNS de nuestro ordenador. Tenemos que ir a la configuración de Servicios de Windows (Inicio &rarr; Configuración &rarr; Panel de Control &rarr; Herramientas Administrativas &rarr; Servicios). Una vez dentro del programa seleccionamos de la lista “Cliente DNS” y con el botón derecho del ratón seleccionamos la opción “reiniciar”.





Para terminar de comprobar que todo funciona, voy al Mozilla Firefox que tengo instalado y pongo la dirección que he configurado `http://xwiki.laptop`. _C’est tout._





Todo este proceso lleva unos 5 minutos. Ahora puedo comenzar a escribir los documentos XHTML con PHP y mucho CSS que tanto me gusta escribir.





_¿Como comienzas tus proyectos?_




 
