(function(e){e.fn.unveil=function(k,d){function c(){g=b.filter(function(){var a=e(this);if(!a.is(":hidden")){var b=f.scrollTop(),d=b+f.height(),c=a.offset().top;return c+a.height()>=b-h&&c<=d+h}}).trigger("unveil");b=b.not(g)}var f=e(window),h=k||0,l=1<window.devicePixelRatio?"data-src-retina":"data-src",b=this,g;this.one("unveil",function(){var a=this.getAttribute(l);if(a=a||this.getAttribute("data-src"))this.setAttribute("src",a),"function"===typeof d&&d.call(this)});f.on("scroll.unveil resize.unveil lookup.unveil",c);c();return this}})(window.jQuery||window.Zepto);