$(document).ready ->
  listen()
  show()
  logo_respond()

$(window).resize ->
  listen()
  show()
  logo_respond()

listen = () ->
  gallery_width = $('.gallery').width() - 50
  image_width = gallery_width / 3
  $('.gallery').find('img').width parseInt(image_width)
  $('.gallery').find('.placeholder_grey').width parseInt(image_width)
  $('.gallery').find('.placeholder_grey').height parseInt(image_width)
  return

logo_respond = () ->
  $('img.logo').width($('.logo_container').width() - 30)

show = () ->
  if $('.image .fancybox img')
    $('.image .fancybox img').width($('.images').width())
