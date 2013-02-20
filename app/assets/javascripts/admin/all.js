//= require jquery-ui
//= require jquery_ujs
//= require bootstrap
//= require jquery.dataTables.min
//= require jquery.validationEngine
//= require jquery.validationEngine-en
//= require admin/form_validations
//= require admin/dataTables.init
//= require admin/check_seo
//= require admin/sortMenu
//= require jasny_fileupload


// Thanks http://stackoverflow.com/questions/652917/in-jquery-want-to-remove-all-html-inside-of-a-div the second answer for this!
jQuery.fn.stripTags = function() { return this.replaceWith( this.html().replace(/<\/?[^>]+>/gi, '') ); };

function checkTitleLength() {
	var title = $('#page_title').val();
	$("#title-count").text( "Characters: " + title.length + " - " + "Words: " + countWords(title) );
}

function checkMetadescLength() {
	var metadesc = $('#page_meta_description').val();
	$("#meta-desc-count").text( "Characters: " + metadesc.length + " - " + "Words: " + countWords(metadesc) );
}

function checkContentLength() {
	var content = $('#page_content').val().replace(/<\/?[^>]+>/gi, '');
	$("#content-count").html( "<acronym title='White spaces and line breaks not included in character count.'>Characters:</acronym> " + content.replace(/\s/g,'').length + " - " + "Words: " + countWords(content) );
}

function countWords(s){
	s = s.replace(/(^\s*)|(\s*$)/gi,"");
	s = s.replace(/[ ]{2,}/gi," ");
	s = s.replace(/\n /,"\n");
	return s.split(' ').length;
}
