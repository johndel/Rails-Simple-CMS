$(document).ready(function() {
      // $("textarea").markItUp(mySettings);
      
    $('#multiSet').markItUp(myHtmlSettings);
    
    $('#switcher li').click(function() {
			$('#switcher li').removeClass('currentSet');
            newSet = $(this).attr('class');
           	$(this).addClass('currentSet');
           	
           	$('#multiSet').markItUpRemove();                   
            switch(newSet) {
                case 'markdown':
                    $('#multiSet').markItUp(myMarkDownSettings);
                    break;
                case 'html':
                    $('#multiSet').markItUp(myHtmlSettings);
            }
            return false;
        }
    );
});

$("#multiSet").keyup(function() {
	changePreview();
});


/*$("li.markItUpButton a").live("click", function() {
	alert('Handler called.');
	//changePreview();
});*/


function changePreview() {
	$(".content-preview").html($("#multiSet").val());
}
