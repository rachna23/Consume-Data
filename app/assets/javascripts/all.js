$(document).ready(function(){
	
	$('#countries').change(function(){
	   $.ajax({
	     url: "/doctors",
	     type: "GET",
	     data: {select_tag_value: $('#countries option:selected').val()}
	   })

	});


	
});	
