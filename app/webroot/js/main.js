// JavaScript Document

$(document).ready(function() {
	
			$('#topNavigation .search').blur( function() {
				 $('#topNavigation .search input').css('paddingLeft', 15);
				 $('#topNavigation .search .cancel').hide();
			});
			
			$('#topNavigation .search').keyup( function() {
				  
				 $('#topNavigation .search input').css('paddingLeft', 26);
				 $('#topNavigation .search .cancel').show();
				  
				 $.ajax({
					 type: 'POST',
					 url:"\/padcon-leipzig2011\/Products\/search\/",
					 data: $('#topNavigation .search').val(),
					 success:function (data, textStatus) {
						 	$('#content').html('');
							$('#content').html(data);
							
					 }, 
					 
					
				 }); 
			});
	
	
});