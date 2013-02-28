$ ->
  $("#draggable_editor").draggable { handle: "#handle" }

$ ->
  $(".update_content").click ->
    setTimeout ( ->
      $("#flash_message").html("")
    ), 4000
