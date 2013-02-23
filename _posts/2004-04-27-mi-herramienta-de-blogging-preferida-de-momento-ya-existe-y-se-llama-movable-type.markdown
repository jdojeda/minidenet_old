---
comments: false
date: 2004-04-27 11:14:06
layout: post
slug: mi-herramienta-de-blogging-preferida-de-momento-ya-existe-y-se-llama-movable-type
title: Mi herramienta de blogging preferida de momento ya existe, y se llama Movable
  Type
wordpress_id: 1681
categories:
- Internet
---

Hace tiempo que no expresaba algo así en el _weblog_. Hoy quiero comentarles que hace más de dos meses que quiero cambiar de herramienta de _blogging_, pero me doy cuenta que no es fácil, así que explicaré todo el rollo en 1800 palabras. Resumiendo para lectores como [xtian](http://www.miracomotiemblo.com): me ha costado un huevo ver todos los problemas de las herramientas que hay en el mundo de las bitácoras, que nada suple de momento el MT y, creo que terminaré utilizando ésta durante un largo tiempo y, si tienes un _weblog_ que recién empieza o no lleva mucho tiempo, te recomiendo que comiences a mirar otras opciones porque después será más complejo mudarte. Ahora viene el rollo largo:





El primer inconveniente que tengo es que no encuentro herramienta que me de la posibilidad de extensión que tengo ahora con  [Movable Type](http://www.movabletype.org). He creado una dependencia terrible con MT, que me ata a él y no me deja salir fácilmente. Es fácil ser radical, exportar las entradas a un formato importable por otro sistema e instalarlo. Pero existen dependencias y cosas que uno utiliza para llevar el chiringuito como le digo a veces.





Las URLs. Las direcciones de este _weblog_ tienen un formato especial, hecho a medida, que además están todas casi indexadas en  [Google](http://www.google.com). Con esto quiero decir que, a simple vista un cambio repercutiría en un montón de aspectos. El primer aspecto como dije es  [Google](http://www.google.com), el cual almacena toda la estructura de mis páginas. Más de 2000 archivos enlazados entre sí no se pueden quedar de un día para el otro huérfanos. El otro aspecto es la blogosfera, la cual mantiene enlazada varias notas que escribí durante la vida de este _weblog_.





Una de las cosas que más me asusta es la cantidad de direcciones que tengo enlazadas en mi _weblog_. Un ejemplo: muchas veces me auto-enlazo cosas que he escrito y, se pueden imaginar que no es nada agradable tener que revisar todo. Así que tendré que hacer un script o un patrón que busque, encuentre y reemplace todas las incoherencias que encuentre a el nuevo formato de URL.





El otro problema, las URLs no son configurables a gusto como en MT. En el mundo MT, las URL pueden ser como uno quiere, dentro del directorio que quiera, en el orden que quiera, pero en otros sistemas no. Entonces puede llegar a ser un parto tener que ver que en el _weblog_  todas las direcciones quedarían así: `/article/5/post-prueba` cuando me gustaría configurar la cosas a `/archivos/categorias/cine/post-prueba`, son detalles que quiero ir arreglando antes de ver si me puedo mudar a otro _weblog_.





Existen soluciones del lado del servidor. Con [Apache](http://www.apache.org) e [IIS](http://www.microsoft.com/WindowsServer2003/iis/default.mspx) se pueden redirigir los archivos viejos a el nuevo formato, pero sinceramente no sé a la perfección como hacerlo y, tampoco sé si es fácil mudar una estructura de URL así: `/archivos/categorias/cine/el_senor_de_los_anillos.php` a lo que sea (ojalá que así mismo o sin el .php). Este es uno de los inconvenientes que encuentro. Hay una cosa que me dejé en el tintero, no sé si aplicando esto, es un trabajo adicional para el servidor, me da la sensación que no es un movimiento natural, que el servidor siempre tendrá que hacer doble trabajo, quizás estoy equivocado.





Puedo ser radical y cambiar todo pero no me beneficiaría para nada. Tampoco a la gente que navegando otros _weblogs_ hace clic en los enlaces que apuntan a notas mías. Una solución nada suave es poner una página 404 con una explicación, pero eso sólo sería tapar la pérdida de agua con un chicle, así que todavía no me decido.





Volviendo al primer inconveniente, el que tiene que ver con la herramienta, me preocupan unas pocas cosas. Una de ellas es el sistema de plantillas. Estoy muy acostumbrado al  [Movable Type](http://www.movabletype.org), con sus plantillas personalizables, con sus etiquetas tan ampliables y con todos los plug-ins que han hecho. Se me hace difícil ver otras opciones. Algunas me tientan bastante, como [Syncato](http://www.syncato.org), pero le faltan muchas cosas esenciales que tiene MT. [Textpattern](http://www.textpattern.com) no me desagrada tanto. Hace unas semanas estaba bastante decepcionado con este sistema, pero ahora con las actualizaciones me gusta un poco más, las etiquetas son ampliables y ofrece muchas opciones. [Wordpress](http://wordpress.org) lo tengo instalado y realmente no me convence algo: el sistema de plantillas. Me parece poco ampliable para tal herramienta. _¿Tres o cuatro plantillas para todo el weblog?_ Me parece un poco austero, creo que no es el indicado para mantener este _weblog_, más cuando tengo cinco o seis secciones controladas por MT. Casi no dependo de un editor de XHTML, de un programa FTP, sólo me remito a entrar al MT; buscar la sección; actualizar el contenido o crear un nuevo post para crear una página dentro de esa sección. Así está montado el chiringuito. [Wordpress](http://wordpress.org) es bonito, ameno y simple, pero necesito extender las capacidades de una forma fácil, sin tener que recurrir a editar el código y, eso no lo veo en [Wordpress](http://wordpress.org). Para tal caso, tengo que meter mano con PHP y lo que yo quiero es instalar, configurar lo necesario y poner a andar. Hasta el día de hoy sigo cambiando URLs a notas escritas en este _weblog_ que tienen formatos por defecto de MT.





Continuaré mirando opciones, la mayoría de los casos llego a ver cosas a medio hacer o que le faltan cosas esenciales. Me gustaría ver que cuando sale una herramienta para mantener un _weblog_, tenga al menos, la cantidad de cosas de MT o por lo menos que se puedan configurar y tener los mismos resultados. Así el cambio sería menos traumático. Si las herramientas imitaran muchos conceptos de la herramienta predominantes, mucha gente no dudaría en cambiar el sistema, pero cuando dependen muchas cosas de la herramienta a uno le entra un poco de cobardía deshacer todo lo que tenía montado.





Con esto tampoco aseguro que quien tenga un _weblog_ con MT nunca se podrá pasar a otro sistema, sólo que, en mi caso, lo veo diferente a otro. Cuando tienes un mega-_weblog_ (no de calidad sino de cantidad) las cosas se toman de otra manera. Cuando tienes un _weblog_, que no supera las 100 o 200 notas, las cuales, no tienen más que unos enlaces a otros recursos, la exportación suele no causar problemas.





En mi servidor de pruebas, todos los CMS siempre dan un que otro errorcillo, pero no desanima tanto.  [Movable Type](http://www.movabletype.org) en cambio me sigue convenciendo y acepto su lentitud a cambio de todas las cosas que ofrece. Pronto saldrá  [TypeKey](http://www.typekey.com/) y las opciones de moderación serán muchas , combinables 100%, lo cual tienta bastante para eliminar la plaga de _spams_ de los _weblogs_ y también los comentarios sin sentidos que caen en muchos posts de hace meses que lo único que hacen es además de llenar de letras e insultos que ralentizan el servidor.





Hablando de requerimientos de servidor. Quienes trabajan de esto, saben que un servidor de base de datos, digamos [MySQL](http://www.mysql.com), consume procesador, más allá de todas las peticiones que se generan dentro del servidor. Esto significa una doble petición y doble trabajo para el servidor a la hora de servir una página de un _weblog_. Esto explicado en cristiano es:





> 
Un usuario (le llamaré Nazareno) entra a mi página, un simple _weblog_ con 2600 notas, y unos 50 comentarios por nota como promedio. Cada vez que Nazareno hace clic en una nota, el servidor en vez de devolverme una página hecha, lo que hace es generarla en el servidor. Para esto, el servidor sabe que Nazareno quiere la página _cine japonés_. Hay que avisarle al servidor de base de datos que busque entre los 2600 identificadores únicos, el identificador de la nota cine japonés. Luego el servidor de base de datos, me dice:–Ok, aquí lo tengo, ¿dónde te dejo estos datos?. El Apache recibe el aviso y le dice que él se encarga de todo. Apache le dice al lenguaje PHP (por decir uno) que se encargue de armar todo con los datos. Cuando PHP terminó de montar los datos en los espacios disponibles entre la sopa del HTML, el servidor Apache, rápido como la luz te envía la página a tu ordenador.





Este proceso, largo de narrar, tarda menos de un segundo (dependiendo la máquina que procese todo) y puede parecer una tontería, pero tener 4000 peticiones de esta por día, genera no sólo un caudal de tráfico, sino de consumo de procesador.





Esto en el mundo de MT se reduce a esto:





> Un usuario (le vuelvo a llamar Nazareno) entra a mi página, un simple _weblog_ con 2600 notas, y unos 50 comentarios por nota como promedio. Cada vez que Nazareno hace clic en una nota, el servidor Apache se pasa por los huevos al [MySQL](http://www.mysql.com) y al PHP, directamente va al directorio donde se aloja ese archivo llamado cine japonés punto php (o HTML dependiendo la extensión que utilices) y te lo envía a tu ordenador.





Nó solamente, se ha reducido la cantidad de trabajo que hace el servidor, sino que también he reducido la cantidad de pasos a narrar (me ahorré unas letras je). Con MT, el servidor de base de datos, sólo trabaja para peticiones extraordinarias, no trabaja para peticiones de consulta. O sea, que trabajaría cuando alguien envía un comentario al _weblog_, cuando escribo una nota y la guardo en mi sistema, cuando borro una nota, cuando reconstruyo mi sitio (una vez cada tanto…)





Sin embargo, cabe destacar la velocidad del primero con el segundo, en el primero, unos cambios de plantillas, y al segundo todo el mundo está mirando tus nuevas modificaciones. En cambio, en el mundo MT, con 2600 notas por reconstruir, son media hora (dependiendo la complejidad de tus plantillas) una hora. Un dato para el/la que le interese: minid.net tarda aproximadamente unos 25&mdash;30 minutos en reconstruir. Y estos minutos valiosos, los malgasto cada vez que quiero cambiar algo de código HTML. Agregar una nueva sección o un include en PHP.





No he mencionado [Drupal](http://www.drupal.org), que me parece una cosa muy completa, pero intocable, he intentado mirar cosas en el _weblog_ de un amigo que utiliza [Drupal](http://www.drupal.org) y todo es un caos, hay que tocar demasiado código y eso es para los _frikis_ que les gusta el PHP, prefiero algo más relajante como MT que con unas simples etiquetas haces maravillas. Más simpleza, menos complicaciones y más diversión al fin y al cabo es lo quiero.





Hubo otro sistema que me tuvo ahí por unos momentos, [pMachine](http://www.pmachine.com), pero no me terminó de convencer. Es completo, más completo que [Wordpress](http://wordpress.org) si mal no recuerdo, pero un poco fofo en la parte de los templates. Me estoy poniendo viejo y quisquilloso, je, pero es así.





Por cierto, he llenado mi solicitud para MT3, pero todavía no me avisaron que podía usarlo, así que, como de costumbre, esperaré un tiempo a que salga la versión final, para luego esperar otro poquito más e instalarlo.  

Quien tenga su chiringuito recién empezado o no lleve mucho tiempo, le recomiendo que vaya pensando en otro sistema, que le ofrezca otros sistemas, y dado el caso que MT, les resulte ameno, pues sigan con él.





A ver que sale de esto.





Algunas referencias que voy encontrando para cambiar de sistema:





  


  * [Alternative MT Redirect Method](http://wordpress.org/development/archives/2004/04/19/mt-redirect/)


  * [Moving Your Type: MT-&gt;WP Migrations](http://wordpress.org/development/archives/2004/04/17/moving-your-type-mt-wp-migrations/)


  * [And WordPress Is Driving Me to Textpattern](http://www.blivet.com/blog/2004/03/21/and-wordpress-is-driving-me-to-textpattern)


  * [Making the Move from Movable Type to Wordpress](http://weblog.burningbird.net/archives/2004/04/14/making-the-move-from-movable-type-to-wordpress/)




 
