$(document).ready(function(){

//Larger thumbnail preview 

$("ul.thumb li").hover(function() {
	$(this).css({'z-index' : '10'});
	$(this).find('img').addClass("hover").stop()
		.animate({
			marginTop: '-110px', 
			marginLeft: '-110px', 
			top: '50%', 
			left: '50%', 
			width: '174px', 
			height: '174px',			
			padding: '20px' 

		}, 200);

	} , function() {
	$(this).css({'z-index' : '0'});
	$(this).find('img').removeClass("hover").stop()
		.animate({
			marginTop: '0', 
			marginLeft: '0',
			top: '0', 
			left: '0', 
			width: '100px', 
			height: '100px', 
			padding: '5px'
		}, 400);
});

//Swap Image on Click
	$("ul.thumb li a").click(function() {

		var mainImage = $(this).attr("href"); //Find Image Name
		$("#main_view img").attr({ src: mainImage });
		return false;		
	});

});


    $(function(){
	  $("#song-search button").click(function(){
		alert("Search coming very soon..");
		return false;
	});
});

    $(function(){
	  $("#fade-out-tab").click(function(){
      $("#fade-out-tab").hide();
	  $('.thumb').fadeOut();

      $("#fade-in-tab").show();
		return false;
	});
});



    $(function(){
	  $("#fade-in-tab").click(function(){
      $("#fade-in-tab").hide();

	  $('.thumb').fadeIn();
      $("#fade-out-tab").show();          
		return false;
	});
});

$(function(){
      $("#fade-out-tab").hide();
	  $('.thumb').hide();
});

$(function(){
    $("button").button();
    populateElement('#SearchText', 'Find a song to jam to..');
});

//$(function(){
//    $("#tabs").tabs();
//});


$(function(){
    $("#tabs").tabs();
});

$(function(){
	$("tbody tr").click(function(e){
      window.location.href = $(this).find('a').attr('href')
    });
});

 function populateElement(selector, defvalue) {
    $(selector).each(function() {
        if($.trim(this.value) == "") {
            this.value = defvalue;
        }
    });

    $(selector).focus(function() {
        if(this.value == defvalue) {
            this.value = "";
        }
    });

    $(selector).blur(function() {
        if($.trim(this.value) == "") {
            this.value = defvalue;
        }
    });
 }


