---
comments: false
date: 2005-09-05 17:33:58
layout: post
slug: netfront-el-navegador-de-la-psp
title: NetFront, el navegador de la PSP
wordpress_id: 2532
categories:
- Internet
---

Una de las novedades de la PSP con el _firmware_ 2.0 es que se puede navegar por Internet. Esta versión trae un navegador llamado [NetFront](http://www.access.co.jp/press/050728.html). Hecho por una compañía japonesa llamada [ACCESS](http://www.access.co.jp), dedicado exclusivamente para dispositivos móviles y PDAs. Ahora ya es parte del sistema que trae la PSP y dentro de poco será uno navegador con presencia en los logs de nuestros servidores.





Más allá de la experiencia de navegar con una PSP, quería hablar más del soporte que trae este navegador.







  * HTML 4.01, XHTML 1.1, incluyendo Mobile Profile


  * CSS 1 y 2 parcialmente (luego haremos pruebas)


  * ECMA _Script Mobile Profile_


  * Tercera edición ECMA Script 262 (a.k.a. JavaScript 1.5)


  * DOM Level1, Level2 y Dynamic HTML


  * Cache


  * Historial de navegación


  * Navegación _Off-line_


  * Streaming Download


  * Direct Connect (Visualización y control de las funciones desde el navegador)


  * Rapid-Render


  * Smart-fit Render


  * _R to L Rendering_ (para el idioma Árabe y otros idiomas que se escriben de derecha a izquierda)


  * Formatos de imágenes: GIF (estático y animado), JPEG (normal y progresivo), PNG, MNG, BMP y WBMP.


  * Soporte de internacionalización (cada set carácter soportado)


  * Soporte total de http Cookie


  * SSL


  * HTTP 1.1


  * SSL Versión 2, Versión 3, TLS 1.0


  * SSL Route Certificate: VeriSign, Entrust, Thawte, Betrusted, GeoTrust, SECOM.


  * Trust.net


  * SSL Client verification function (PKCS #7, #10, #12)


  * OMA* DRM


  * IPv4/IPv6 dual TCP/IP protocol stack


  * Soporte de plugins y aplicaciones ayundantes





Hice unas pruebas de descargas de vídeos con malos resultados. No interpreta el formato de Microsoft Windows Media. Además, al rato de estar descargando te sale un mensaje de error, diciendo que se ha quedado sin memoria. Pero en cambio, cuando descargas un MP3, lo aloja en la carpeta de música listo para la reproducción.





Para los que llevan esperanza de portar su sitio a este dispositivo usando CSS, no existe soporte `media="handheld"`. Con Nicolás hicimos pruebas el mismo jueves que compré la PSP y no está soportado. Por consecuente, los que quieren tener su sitio para PSP tienen dos opciones, una es detectar el navegador y servir una hoja de estilos preparada para el ancho del dispositivo (unos 480 píxeles de ancho x 272 píxeles alto). La otra es, tener un sitio de anchura fluída, conocida como liquid layout.





Mi recomendación para los que hagan sitios ahora es: cuidar muchísimo el peso y largo de una página adaptada para PSP. Navegar no es rápido, las descargas y el procesamiento de lo recibido no es instantáneo, así que, plantillas de photoshop recortadas y mostradas en HTML no convienen por ahora hasta que no optimicen más este navegador. No utilizar Flash, ya que no existe dicho soporte, puede que en un futuro sí exista.





El navegador tiene unos modos de navegación especiales para adaptar a la fuerza los sitios, pero, en los sitios que usan tablas este modo crea más caos del necesario. Los sitios bien estructurados y posicionados con CSS suelen visualizarse mejor. Esto lo logra acomodando a la fuerza todos los divs uno debajo del otro. Las imágenes se reescalan en este modo especial también, pero no se puede controlar externamente, sólo el usuario tiene el poder para cambiar esta preferencia.





El próximo post, haremos una plantilla de prueba para ir probando cosas de CSS y XHTML en la PSP para tener más idea de cómo se ven y qué cosas no funcionan en la PSP.
  *[TLS]: Top Level Specification
  *[HTTP]: Hypertext Transfer Protocol (world wide web protocol)
  *[DOM]: Document Object Model
  *[SSL]: Secure Sockets Layer (Netscape; web security protocol)
  *[HTML]: Hypertext Markup Language
  *[a.k.a.]: as known as
  *[PSP]: PlayStation Portable
  *[XHTML]: Extensible Hypertext Markup Language
  *[CSS]: Cascading Style Sheet
