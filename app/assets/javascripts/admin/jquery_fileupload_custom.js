$("#file_manager_modal #new_upload").fileupload({
     dataType: "script"
   , dropZone: $("#dropzone")
   , add: addfile
   , progress: progressfile
   , done: donefile
  });

$(document).bind('dragover', function (e) {
  var dropZone = $('#dropzone'),
  timeout = window.dropZoneTimeout;
  if (!timeout) {
      dropZone.addClass('in');
  } else {
      clearTimeout(timeout);
  }
  if (e.target === dropZone[0]) {
      dropZone.addClass('hover');
  } else {
      dropZone.removeClass('hover');
  }
  window.dropZoneTimeout = setTimeout(function () {
      window.dropZoneTimeout = null;
      dropZone.removeClass('in hover');
  }, 100);
});

function addfile(e, data) {
  var file = data.files[0];
  data.context = $(tmpl("template-upload", file));
  $('.file_table').append(data.context);
  data.submit();
}

function progressfile(e, data) {
  var progress;
  if (data.context) {
    progress = parseInt(data.loaded / data.total * 100, 10);
    return data.context.find('.bar').css('width', progress + '%');
  }
}

function donefile(e, data) {
  if (data.context) {
    data.context.remove();
  }
}

$(document).bind('drop dragover', function (e) {
  e.preventDefault();
});
