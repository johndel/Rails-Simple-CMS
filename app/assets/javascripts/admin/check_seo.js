$(function() {
  checkTitleLength();
  checkMetadescLength();
  checkContentLength();

  $('#page_title').live('keyup click blur focus change paste', function() {
    checkTitleLength();
  });

  $('#page_meta_description').live('keyup click blur focus change paste', function() {
    checkMetadescLength();
  });

  $('#page_content').live('keyup click blur focus change paste', function() {
    checkContentLength();
  });
});