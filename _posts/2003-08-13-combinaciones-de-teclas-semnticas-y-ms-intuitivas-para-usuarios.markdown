---
comments: false
date: 2003-08-13 16:49:59
layout: post
slug: combinaciones-de-teclas-semnticas-y-ms-intuitivas-para-usuarios
title: 'Combinaciones de teclas: semánticas y más intuitivas para usuarios'
wordpress_id: 1108
categories:
- Internet
---

En este artículo pretendo mostrar algo maravilloso del mundo estándar y semántico. En muchas webs solemos ver cosas relacionadas a instrucciones, tutoriales que tengan que ver con el uso del teclado.





Mucha gente no tiene idea de que como se hace un acceso rápido con el teclado, _soy testigo en vida_ de una persona que leyendo la ventana de un Windows para ingresar un usuario y un password y no saber hacer la combinación CtrlAltSupr, al contrario a eso, esta persona quería hacer la combinación tocando una tecla por ves, si, _fue caótico_…





Pero el problema era que en primer lugar nadie le había dicho que había que hacer una combinación de teclas, ni que las combinaciones de teclas deben hacer manteniendo “presionadas” las teclas.





Una persona “más avispada” quizás al primer intento fallido intenta hacerlo todo a la vez, pero creo que el problema reside en el mensaje como se expresa, retomaremos este punto luego, primero quiero mostrarles algunos juguetes que he descubierto experimentando.





Mientras escribía la segunda parte de ¡Usa Mozilla por un día! Comenzaba a notar cierta molestia a la hora de representar combinaciones de teclas, es importante para este curso dejar la mejor forma de entender que es una operación que conlleva el uso del teclado no se puede representar de una forma intuitiva con simples textos, sino que debemos poner más pistas.





Al principio–hace un montón :)–utilizaba una simple forma de representar una combinación de teclas, escribía la combinación siempre con el mismo color, tamaño de letra que el texto normal, por ejemplo como lo hago ahora ctrl.+p, esto por supuesto es lo más enigmático, menos intuitivo y que pasa más desapercibido en un bloque de texto, incluso podría pasar como una palabra más.





Pero luego, de ver cómo los usuarios pasaban por alto estas cosas importantes, me decidí por darle más importancia a pequeño grupo de caracteres, y fue cuando empecé a utilizar  la etiqueta `&lt;b&gt;…&lt;/b&gt;` para representar una simple combinación de tecla como esta **Ctrl+P**, pero tampoco era la mejora, una razón era que también en mis textos utilizaba **palabras en negrita**, además si quería remarcar una frase en negrita que contenía una combinación de teclas el texto podía pasar por desapercibido también.





Así que una de mis soluciones por mucho tiempo antes de conocer y después de conocer los estándares, utilizaba las etiquetas ``…`` para representar esto `Ctrl+L`.





Por supuesto **no es la panacea** de combinación de teclas, pero lograba diferenciarla del texto normal, por supuesto luego de una consulta con mis neuronas, me di cuenta que esto _no es semántico_ y que existen opciones naturales provistas por la gente de la W3C que hacen de esto un trabajo menos arduo.





La opción se encuentra utilizando la tecla `…`. Además de proveernos de un contenido semántico muy diferente al caso de utilizar las etiquetas ```. Esta etiqueta `` tiene un mínimo de presentación gráfica muy símil a la que presenta el tag ```, pero presenta una coloración verdosa, pasemos a redescubrir la magia del CSS para estas ocasiones…





### La magia del CSS…





Con un toque de magia utilizando CSS, podemos hacer que estos tags `` queden mejor representados, podemos hacer la muestra de combinaciones de teclas o acciones de teclas **más intuitivas**, que den a conocer más sobre estos temas, olvídense de que tenga que explicar línea por línea del código que acabo de escribir en este ejemplo de CSS… sólo cópienlo y péguenlo en un plantilla de CSS y hagan los ajustes que necesiten:





bc. kbd {  

background-color: #f5f5f5;  

border-top: 1px solid #f7f7f7;  

border-left: 1px solid #f7f7f7;  

border-bottom: 1px solid #ccc;  

border-right: 1px solid #ccc;  

padding: 0.1em 0.4em 0.1em 0.4em;  

}





Con esto terminamos por darle ese toque mágico que siempre había buscado, podemos representar esto como un tecla real de un teclado, sobre todo esto se puede imprimir, no hace falta hacer imágenes y ponerlas en el medio de un texto y para finalizar con esta parte… son válidas semánticamente hablando.





### Hacerse entender a la hora de explicar acciones con el teclado.





> 

> 
> Conozco tres tipos de acciones con el teclado, para utilizar un sistema operativo o un programa.
> 
> 






El primer caso son las _acciones inmediatas_, mediante la presión de una sola tecla **es suficiente para realizar una operación**, le siguen las de _acciones dependientes_, que son las que requieren de **presionar y soltar** una tecla para luego presionar y soltar otra y poder así realizar un comando, y la última son las de _acciones en conjunto_, que son las que requieren una o más teclas presionadas a la vez para hacer un comando.





Un caso práctico para las de _acciones inmediatas_, por ejemplo, presionar F9 para abrir un panel, presionar F11 para acceder al modo de pantalla completa. La mejor forma de representar esto es mediante la combinación de caracteres en mayúsculas, F11 y no f11. La semejanza con un teclado debe ser idéntica.





El otro caso práctico para _las acciones dependientes_, son aquellas por ejemplo como una que hay en Mozilla, si escribimos una URL para acceder a una página que está en la lista del historial mismo debemos presionar primero &darr; y luego Enter… no pasaría nada si no presionamos la tecla Enter, para estos casos es vital el golpe de una tecla para que la otra pueda tener permiso de ejecución.





La mejor forma de representar esto es con una flecha &rarr; o separando las teclas con una breve descripción de la acción, y no un símbolo ”+”, como ejemplo sirvo esto:





> 

> 
> Para realizar una búsqueda en Mozilla escriba la palabra en la barra de direcciones y luego &darr; &rarr; Enter.
> 
> 






> 

> 
> Para acceder a una página del tutorial, escriba una parte de la URL, presione y suelte &darr; y luego presione la tecla Enter para acceder a la página.
> 
> 






Las de _acción conjunta_ son las más comunes dada la facilidad de creación y cantidad de combinaciones son muy populares entre programas. Puede que el ejemplo más visto para representar una combinación sea el típico ”+” es muy utilizado pero a mi forma de ver no es 100% intuitivo, mucha gente confunde el más con una _acción dependiente_, pero creo que el mejor ejemplo para representar que dos teclas tengan que presionarse juntas es **sin símbolo alguno**, como este ejemplo que pongo aquí CtrlA parece más amistoso que el muy conocido y técnico ”+” que debe representarse pegado junto a cada tecla para dar más sensación de presión conjunta, como en este ejemplo:





> 

> 
> Parra cerrar este programa presione Alt+F4.
> 
> 






Espero que este mini cursillo con truco incluido sirva de algo en tus manuales online o en tu propio weblog.





PD: Si eres un fanático de Mozilla o trabajas en una Intranet puedes aprovechar cosas como las propiedades `-moz-border-radius:` que le darán un aspecto a los botones geniales.




 
