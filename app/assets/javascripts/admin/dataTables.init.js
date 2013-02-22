$(document).ready(function() {
  $("#datatable_4_2").dataTable({
    "sDom": '<"H"lfr>t<"F"i>',
    "aoColumns": [null,null,null,null,{ "bSortable": false },{ "bSortable": false }
  ]});
  $("#datatable_5_3").dataTable({
    "sDom": '<"H"lfr>t<"F"i>',
    "aoColumns": [null,null,null,null,null,{ "bSortable": false },{ "bSortable": false },{ "bSortable": false }
  ]});

  $("#datatable_3_2").dataTable({
    "sDom": '<"H"lfr>t<"F"i>',
    "aoColumns": [null,null,null,{ "bSortable": false },{ "bSortable": false }
  ]});
});