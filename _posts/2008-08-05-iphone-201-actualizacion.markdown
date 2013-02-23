---
comments: true
date: 2008-08-05 02:35:33
layout: post
slug: iphone-201-actualizacion
title: iPhone 2.0.1 (actualización)
wordpress_id: 3198
categories:
- Apple
---

**Nota:** pueden actualizar.





No tuve mejor idea que actualizar al nuevo firmware 2.0.1 que acaba de sacar Apple. El proceso fue suave y limpio, salvo cuando tuvo que poner los datos del operador (en este caso, Telefónica) en el iTunes. Simplemente dió un error. A partir de este momento el teléfono funciona, pero está la putada que: no funcionará el servicio 3G, lo cual me toca las pelotas y tampoco van los voicemail, lo cual ya me pone rojo de la furia.





Esto no me gusta nada, no puede ser que, pagando lo que he pagado para actualizar mi teléfono tenga que aguantar estas cosas.





De momento estoy haciendo lo reverso:






	
  1. Eligiendo la opción Restore Software Settings.

	
  2. Dejando que instale todo en el teléfono y reinicie el iTunes.

	
  3. En el momento de la pregunta del carrier le doy al "Sí".

	
  4. Actualiza los settings del carrier bien.

	
  5. Elegí usar un backup que tenía, pero me volvió a instalar el firmware 2.0.1.





Ahora estoy restaurando las opciones de fábrica de nuevo. A ver si hay suerte y tengo todo como lo tenía hace una hora.





Si alguien pudo hacer la actualización sin problemas, por favor me avise, no vaya a ser que Apple lo haya arreglado.





### Update:





De momento, al restaurar y completar el proceso la actualización de operador se completa con éxito, sale el icono de 3G en el menú del teléfono pero no puede validar bien PDP, por lo tanto estoy sin 3G. Menuda putada. Intentaré meter un firmware 2.0 usando la opción Option+Click en el botón de actualizar, cargando el firmware 2.0 por el 2.1.





La restauración seleccionando un firmware 2.0 **no funciona**. Me dió un error cuando estaba haciendo la verificación del firmware, por lo tanto me deja el teléfono inutilizado. Instalaré 2.0.1, no queda otra y a ver que me dice Telefónica mañana a todo esto.





Recomiendo **no** actualizar vuestro iPhone 3G al firmware 2.0.1.





Más datos: al revisar el log del teléfono veo el siguiente mensaje:





> Tue Aug  5 03:31:50 unknown MobilePhone[41] : ERROR: Error en la conexión al servidor "ivvm.movistar.es".





El mensaje que el iPhone me da luego de actualizar al firmware 2.0.1:





> Imposible activar la red móvil: Error de autenticación PDP





Abrí el archivo del firmware 2.0 en el XCode y me lanza un error de parseo, es posible que haya sido por haber utilizado Safari. Estoy bajándolo con Firefox que si me respeta la extensión del archivo.





Ahora que me bajé una versión del firmware 2.0 (5A347) con Firefox pude empezar el proceso de instalación del firmware 2.0 en XCode.





Luego de un rato de incursionar con XCode y los firmwares, no he podido hacer una restauración al firmware 2.0 (5A347) usando XCode, ya simplemente a estas horas me doy por vencido, a ver si alguien arroja luz mañana a este tema.





### Seguimiento matutino:





Ya funciona la conexión 3G en mi iPhone.





Bien, al parecer **era problema de Movistar** ya que el teléfono tenía constantes errores de conexión al servidor mencionado y no podía validarse el servicio, pero bien, hoy a la mañana, al levantarme, lo primero que hice fue probar todo y me funciona 3G sin problemas.





Me siento como Enjuto.
