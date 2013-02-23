---
comments: false
date: 2003-05-05 17:00:10
layout: post
slug: internet-explorer-se-suicida-leyendo-html-mal-hecho-si-es-gracioso-si
title: 'Internet Explorer: se suicida leyendo HTML mal hecho, si es gracioso… si.'
wordpress_id: 955
categories:
- Internet
---

Quieren ver como todo se viene abajo? Problemas de buffer overflow, probabilidades de atacar operaciones de comercio electrónico, ahí lo tienen, bienvenidos al mundo Internet Explorer, ahora con el bug más tonto que el mundo pueda conocer.





El bug está listado en BugTraq requiere 5 de HTML pero al cabo de un corto tiempo de experimentación, verás que esto se puede hacer sólo con 1 línea de HTML. La línea asesina es:



`&lt;input type crash&gt;`



Vale, vale, que no importa poner “crash” para que todo pete, sino que podemos escribir a ver… “gates”,”Balmer”, etc…



`"Unhandled exception in iexplore.exe (SHLWAPI.DLL): 0xC0000005: Access Violation"`



Esto se puede dar… gracias a escribir páginas mal-formadas en HTML o XHTML o HTML 1.1, simplemente esto también vincula a Frontpage, Outlook o cualquier programa de Microsoft que utilize la librería `shlwapi.dll`.





Hay [un parche](http://www.mozilla.org) muy bueno para solucionar los problemas de seguridad de Internet Explorer.




 
