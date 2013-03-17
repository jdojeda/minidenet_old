---
comments: false
date: 2003-02-25 10:04:10
layout: post
slug: mtmacros-problema-resuelto
title: 'MTmacros: Problema resuelto'
wordpress_id: 852
categories:
- Internet
---

Hace unos días vengo con problemas de instalar MTmacro para Movable Type, y lo que hacía básicamente es eliminarme todo el contenido, ahora, he descubierto el problema… y era que desgraciadamente había un valor que parece que trae el problema cuando el plug-in parsea el archivo, la línea que me traía problemas era:





`"CC/PP" lang "en" title "Composite Capability/Preference Profiles"`





Parece ser que realmente no le gusta al MTmacro parsear barras ’/’ entonces me trajo errores, así que sin dudas eliminé el valor directamente, y la compilación de éste include de macros funciona a la perfección.





Recomendación para los webloggers que usan plug-ins de Movable Type:





  


  * Crearse un blog nuevo en otro directorio.


  * Escribir 1 o 2 posts de prueba.


  * Leer documentación antes de instalar ó configurar un plug-in.


  * Antes de enviar mensajes de MSN o ICQ a todo el mundo, tratar de resolverlo uno mismo, por eso deben crearse un blog de batalla para probar las cosas.


  * Consultar el foro de Movable Type, ahí se encuentran casi todas las respuestas.


  * Antes de instalar una nueva versión de MT, esperar 1 o 2 semanas para ver posibles cambios, al igual que los plug-ins deben esperar por que siempre salen cambios y errores.


  * Leer el manual de usuario de MT, esencial para aprender a usarlo.


  * Una vez probado los cambios, pasar a su blog y aplicar los cambios.


  * Tengan anotado todos los cambios, los que van a hacer y los hechos también.





Siguiendo estas pocas pautas, probablemente todo el mundo aprenderán sin problemas, MT tiene un sistema de tags muy fáciles de implementar y experimentar.




 
