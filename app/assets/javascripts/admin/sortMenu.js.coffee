page_sort = ->
  $.post "/admin/menus/page_sort", $("#sortable1").sortable("serialize") + "&menu=" + $("#page_sorting").data("menu-id")
$("#sortable1, #sortable2").sortable(
  placeholder: "ui-state-highlight"
  connectWith: ".connectedSortable"
).disableSelection()
$("#sortable1").sortable(update: ->
  page_sort()
).disableSelection()