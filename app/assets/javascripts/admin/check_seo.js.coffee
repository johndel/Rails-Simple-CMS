$ ->
  checkTitleLength()
  checkMetadescLength()
  checkContentLength()
  $("#page_title").live "keyup click blur focus change paste", ->
    checkTitleLength()

  $("#page_meta_description").live "keyup click blur focus change paste", ->
    checkMetadescLength()

  $("#page_content").live "keyup click blur focus change paste", ->
    checkContentLength()