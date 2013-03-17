---
comments: false
date: 2006-03-28 22:06:44
layout: post
slug: reglas-especiales-para-ie7
title: Reglas especiales para IE7
wordpress_id: 2776
categories:
- Internet
---

¡Ay!, los hacks en CSS. Siempre digo que _no_ deben implementarse, pero a veces vienen tan bien que es imposible vivir sin ellos. Uno que es muy cómodo –y muy fácil de eliminar luego– es un underscore «_» seguido de un atributo para que, el bendito Internet Explorer lo interprete y el resto de los navegadores no pase nada. Un ejemplo claro y que pueden probar para solucionar algunos problemas es:




    
    <code>h2 {
    margin: 0 0 10px 0;
    _margin: 0 0 20px 0;
    }</code>





Esto simplemente hace que el elemento `&lt;h2&gt;` en Firefox, Opera y otros navegadores un margen inferior de `10px`. En cambio, utilizando una hack con _ sobre la propiedad `margin:` hace que Internet Explorer pase por alto –por leyes de peso– el `margin: 0 0 10px 0;` por el valor `20px`.





Bien, entendido esto os podéis ir haciendo una idea gigante de la cantidad de cosas que se pueden arreglar y dejar hasta el milímetro de perfectas entre navegadores que entienden estándares con Internet Explorer. Ahora, como dentro de unos cuántos meses, sino digo hasta finales del 2007 y, hasta el 2009 cuando muchos usuarios tengan Internet Explorer 7 instalado, tendremos que ir probando en la porquería de beta que tienen ahora. Para ello, no podemos usar más el hack del underscore sino utilizar otro, que además va igual de bien para el Internet Explorer 6:




    
    <code>h2 {
    margin: 0 0 10px 0; /* funciona en todos */
    *margin 0 0 55px 0; /* funciona tanto en IE6 como 7 */
    _margin: 0 0 20px 0; /* funciona sólo en IE6 y <em>no</em> en IE7 */
    }</code>





Por adelantado les dejo claro que **esto no valida con el herramienta de validación**, pero me la trae floja de todas formas. Esto _no_ afecta a la semántica de mis documentos sino a _cómo_ se visualiza en un navegador.
  *[CSS]: Cascading Style Sheets
