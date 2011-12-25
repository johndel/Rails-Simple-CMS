//= require jquery-ui
//= require jquery_ujs
//= require jquery.equalHeight
//= require jquery.dataTables.min
//= require jquery.fancybox-1.3.4.pack


$(document).ready(function() { 
	$("#datatable_pages").dataTable({
		"aoColumns": [null,null,null,null,null,{ "bSortable": false },{ "bSortable": false },{ "bSortable": false }
	]}); 
	
	$("#datatable_menus").dataTable({
		"aoColumns": [null,null,null,{ "bSortable": false },{ "bSortable": false }
	]});
	
	$("#datatable_users").dataTable({
		"aoColumns": [null,null,null,{ "bSortable": false },{ "bSortable": false }
	]});  
});

$(document).ready(function() {
  //When page loads...
  $(".tab_content").hide(); //Hide all content
  $("ul.tabs li:first").addClass("active").show(); //Activate first tab
  $(".tab_content:first").show(); //Show first tab content

  //On Click Event
  $("ul.tabs li").click(function() {

    $("ul.tabs li").removeClass("active"); //Remove any "active" class
    $(this).addClass("active"); //Add "active" class to selected tab
    $(".tab_content").hide(); //Hide all tab content

    var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
    $(activeTab).fadeIn(); //Fade in the active ID content
    return false;
  });

});

$(function() { // Autosize
	$("#sidebar").css("min-height", $(window).height()- 91); 
	// if( $(window).width() < 1030 ) {
		// $("#main").css("width", $(window).width() - 280);
	// }
	
	$('.column').equalHeight();

});

