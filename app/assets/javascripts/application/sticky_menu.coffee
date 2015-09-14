$(document).ready ->
  window.isMobile = /iphone|ipod|ipad|android|blackberry|opera mini|opera mobi|skyfire|maemo|windows phone|palm|iemobile|symbian|symbianos|fennec/i.test(navigator.userAgent.toLowerCase());

  if !window.isMobile
    $(window).scroll ->
      stickyHeaderTop = $('.logo_container').height() - ($('.logo_container').height()/100)*2
      if $(window).scrollTop() > stickyHeaderTop
        $('#sticky_menu').css
          position: 'fixed'
          top: '2%'
      else
        $('#sticky_menu').css
          position: 'static'
          top: '0px'
      return
    return
