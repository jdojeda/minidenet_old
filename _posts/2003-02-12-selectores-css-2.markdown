---
comments: false
date: 2003-02-12 17:10:15
layout: post
slug: selectores-css-2
title: Selectores CSS 2
wordpress_id: 829
categories:
- Internet
---

La belleza de usar selectores del Nivel 2 de CSS, puede llegar a ser algo supremo. Una regla tan simple como:




    
    img+h3 {
    margin-top: 15px;
    }
    





Crearía un nuevo mundo de reglas de diseño… y posiciones que nos permiten crear cientos y cientos de posiciones de elementos en una página utilizando solo una hoja de estilos.





Hace no mucho Jeffrey Zeldman, [escribe sobre este tema](http://www.zeldman.com/daily/0203a.shtml), el cual hace referencia a su rediseño a la marcha, él dice:





> It tells browsers to leave 15px of white space above any h3 heading that is immediately preceded by an image. Such as, for instance, the ever-changing h3 heading directly beneath the ever-changing header photo at the top of this column.
> 
> 


> 
> CSS2 selectors like `img+h3` allow you to establish _design rules_ covering various contingencies – for instance, photo immediately above h3 vs. no photo immediately above h3. With such rules in place, you are free to write clean, unsullied markup and let your rules fuss with the niceties of layout.
> 
> 


> 
> IE/Win does not understand these rules. Not even IE6/Win understands them yet. Hence the first entry on this page inevitably crowded the bottom of the photo when viewed in IE 5–6/Win. (The page displayed correctly in Opera 7, Netscape 7, IE5/Mac, Mozilla, Chimera, and Safari.)
> 
> 


> 
> This is where some designers would stick a `&lt;br /&gt;` under the image, and others would go back to tables and spacer gifs.
> 
> 


> 
> Tonight we compromised by deleting the `img+h3` rule and applying a class to the image at the top of the column (the class adds white space to the bottom of the image). We hated to do it. It was just a humble little class attribute, but it felt so 1999. Design will be cleaner and better when IE/Win joins other browsers in supporting more CSS2 selectors.





Esto básicamente está claro (para los que saben usar selectores) y de lo que zeldman habla es que éstos selectores te permiten hacer las cosas más simplificadas en el HTML y trabajar más en la hoja de estilos, crear reglas consistentes entre páginas de HTML y crear layout basados en cómo la información está disponible y no como nosotros la clasificamos con clases o IDs.





De esta forma uno para decir que una imagen que ante preceda a una cabecera `&lt;h3&gt;` tenga un espacio de 15px hay que escribir una clase para esa imagen, eso es: ir al html y modificarlo.





Pero como Internet Explorer no respeta los estándares, la función `img+h3` trae problemas, y entonces hay que usar otro método, el método “Volvamos al 1999”, poniendo un `&lt;br /&gt;` después de la imagen ó poniéndole una clase normal ejemplo `img.espacio1 { }` y solamente para esa imagen, cada vez que queramos ese espacio entre una imagen de cabecera y un `h3` deberemos de poner la clase en el tag de HTML de la imagen, que en determinados casos puede resultar un poco tedioso, y no 





La vida sigue adelante, soporta estándares, apréndete los selectores, y nunca pero nunca te estanques en el pasado…




 
