myHtmlSettings = {
    nameSpace: "html", // Useful to prevent multi-instances CSS conflict
    onShiftEnter: {keepDefault:false, replaceWith:'<br />\n'},
    onCtrlEnter: {keepDefault:false, openWith:'\n<p>', closeWith:'</p>\n'},
    onTab: {keepDefault:false, openWith:' '},
    afterInsert: function() {
      changePreview();
    },
    markupSet: [
        {name:'Heading 1', key:'1', openWith:'<h1(!( class="[![Class]!]")!)>', closeWith:'</h1>', placeHolder:'Your title here...' },
        {name:'Heading 2', key:'2', openWith:'<h2(!( class="[![Class]!]")!)>', closeWith:'</h2>', placeHolder:'Your title here...' },
        {name:'Heading 3', key:'3', openWith:'<h3(!( class="[![Class]!]")!)>', closeWith:'</h3>', placeHolder:'Your title here...' },
        {name:'Heading 4', key:'4', openWith:'<h4(!( class="[![Class]!]")!)>', closeWith:'</h4>', placeHolder:'Your title here...' },
        {name:'Heading 5', key:'5', openWith:'<h5(!( class="[![Class]!]")!)>', closeWith:'</h5>', placeHolder:'Your title here...' },
        {name:'Heading 6', key:'6', openWith:'<h6(!( class="[![Class]!]")!)>', closeWith:'</h6>', placeHolder:'Your title here...' },
        {name:'Paragraph', openWith:'<p(!( class="[![Class]!]")!)>', closeWith:'</p>' },
        {separator:'---------------' },
        {name:'Bold', key:'B', openWith:'<strong>', closeWith:'</strong>' },
        {name:'Italic', key:'I', openWith:'<em>', closeWith:'</em>' },
        {name:'Stroke through', key:'S', openWith:'<del>', closeWith:'</del>' },
        {separator:'---------------' },
        {name:'Ul', openWith:'<ul>\n', closeWith:'</ul>\n' },
        {name:'Ol', openWith:'<ol>\n', closeWith:'</ol>\n' },
        {name:'Li', openWith:'<li>', closeWith:'</li>' },
        {separator:'---------------' },
        {name:'Picture', key:'P', replaceWith: function(h) { insert_image(h) } },
        {name:'Link', key:'L', replaceWith: function(h) { insert_link(h) } },

        {separator:'---------------' },
        {name:'Clean', replaceWith: function(h) { return h.selection.replace(/<(.*?)>/g, "") } },
        {separator:'---------------' },
        {name:'Left', key:',', replaceWith: function(h) { left_div(h) }, className:"left_div" },
        {name:'Right', key:'.', replaceWith: function(h) { right_div(h) }, className:"right_div" },
        {name: 'Clear', replaceWith: function(h) { clear_div(h) }, className: "clear_div" },
        {separator:'---------------' },
        {name:'File Manager', key:'F',  replaceWith: function(h) { file_manager(h) }, className:"file_manager" },
        {separator:'---------------' }
        //,
        // {name:'Preview', call:'preview', className:'preview' }
    ]
}
;

function insert_image(h) {
  bootbox.prompt("Insert Image: ", function(result) {
    if(result != null) {
      $this = $("#multiSet");
      $this.selectRange(h.caretPosition,h.caretPosition + h.selection.length);
      $this.replaceSelectedText('<img src="' + result + '" alt="' + h.selection + '" title="' + h.selection + '" />');
      changePreview();
    }
  });
}

function insert_link(h) {
  bootbox.prompt("Insert Link: ", function(result) {
    if(result != null) {
      $this = $("#multiSet");
      $this.selectRange(h.caretPosition,h.caretPosition + h.selection.length);
      $this.replaceSelectedText('<a href="' + result + '" alt="' + h.selection + '" title="' + h.selection + '">' + h.selection + '</a>');
      changePreview();
    }
  });
}

function clear_div(h) {
  $this = $("#multiSet");
  $this.selectRange(h.caretPosition,h.caretPosition + h.selection.length);
  $this.replaceSelectedText('<div style="clear: both;">' + h.selection + '</div>');
  changePreview();
}

function left_div(h) {
  $this = $("#multiSet");
  $this.selectRange(h.caretPosition,h.caretPosition + h.selection.length);
  $this.replaceSelectedText('<div style="float: left; margin: 10px">' + h.selection + '</div>');
  changePreview();
}

function right_div(h) {
  $this = $("#multiSet");
  $this.selectRange(h.caretPosition,h.caretPosition + h.selection.length);
  $this.replaceSelectedText('<div style="float: right; margin: 10px">' + h.selection + '</div>');
  changePreview();
}

function file_manager(h) {
  $("#file_manager_modal").modal();
}


$(document).ready(function() {
  $('#multiSet').markItUp(myHtmlSettings);
  changePreview();
});

$("#draggable_editor").draggable({
    handle: "#handle"
});

$("#multiSet").keyup(function() {
  changePreview();
});

function changePreview() {
  $(".content_preview").html($("#multiSet").val());
}


$.fn.selectRange = function(start, end) {
  return this.each(function() {
    if (this.setSelectionRange) {
      this.focus();
      this.setSelectionRange(start, end);
    } else if (this.createTextRange) {
       var range = this.createTextRange();
        range.collapse(true);
        range.moveEnd('character', end);
        range.moveStart('character', start);
        range.select();
    }
  });
};


// Modal File Manager
$('#file-manager-ul a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
})

$(document).on('ajax:success', '.delete-upload', function() {
  $this = $(this).parents("tr");
  $this.fadeOut(300, function() {
    $this.remove();
  });
});

$(document).on("click", ".insert-uploaded-file", function(){
  var types = /(gif|jpg|jpeg|png)$/i;
  filename = $(this).parents("tr").children(".upload-name").html();
  if(types.test(filename.split('.').pop())) { // Insert Image
    $this = $("#multiSet");
      $this.replaceSelectedText('<img src="/uploads/' + filename + '" />\n');
    changePreview();
  } else { // Insert link
    $this = $("#multiSet");
    $this.replaceSelectedText('<a href="/uploads/' + filename + '">Insert your text here</a>\n');
    changePreview();
  }
});