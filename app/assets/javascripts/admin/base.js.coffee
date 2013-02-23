jQuery.fn.stripTags = ->
  @replaceWith @html().replace(/<\/?[^>]+>/g, "")

window.checkTitleLength = ->
  title = $("#page_title").val()
  $("#title-count").text "Characters: " + title.length + " - " + "Words: " + countWords(title) if $("#title-count").length > 0

window.checkMetadescLength = ->
  metadesc = $("#page_meta_description").val()
  $("#meta-desc-count").text "Characters: " + metadesc.length + " - " + "Words: " + countWords(metadesc) if $("#meta-desc-count").length > 0

window.checkContentLength = ->
  if $("#content-count").length > 0
    content = $("#page_content").val().replace(/<\/?[^>]+>/g, "")
    $("#content-count").html "<acronym title='White spaces and line breaks not included in character count.'>Characters:</acronym> " + content.replace(/\s/g, "").length + " - " + "Words: " + countWords(content)

window.countWords = (s) ->
  s = s.replace(/(^\s*)|(\s*$)/g, "")
  s = s.replace(/[ ]{2,}/g, " ")
  s = s.replace(/\n /, "\n")
  s.split(" ").length