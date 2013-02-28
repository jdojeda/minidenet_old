//= require vendor/jquery-1-9-1
//= require vendor/bootstrap
//= require_self
// google analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-69899-1']);
_gaq.push(['_trackPageview']);
// fonts
WebFontConfig = {
google: { families: [ 'Source+Code+Pro::latin', 'Source+Sans+Pro:400,600,600italic:latin' ] }
};
// deferred js
function downloadJSAtOnload() {
  var jsFiles = ["/assets/webfont.js", "/assets/ga.js"];
  for (var i = 0; i < jsFiles.length; i++) {
    var element = document.createElement("script");
    element.src = jsFiles[i];
    document.body.appendChild(element);
  }
  $("body").addClass("animated fadeIn");
}
if (window.addEventListener)
window.addEventListener("load", downloadJSAtOnload, false);
else if (window.attachEvent)
window.attachEvent("onload", downloadJSAtOnload);
else window.onload = downloadJSAtOnload;