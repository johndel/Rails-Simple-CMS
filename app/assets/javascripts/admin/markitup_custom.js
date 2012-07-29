$(document).ready(function() {
      // $("textarea").markItUp(mySettings);
      
    $('#multiSet').markItUp(myMarkDownSettings);
    
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

$("#buttonaki").click(function() {
	alert($("#multiSet").val());
});
