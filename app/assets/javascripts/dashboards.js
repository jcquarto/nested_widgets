
function cornerize() {

	// top right and top left corners need to be vertically offset the height of the widget_header
	$('.widget .top_right').each(function(){
		$(this).css( 'top', $('.widget_header').height() );
	});

	$('.widget .top_left').each(function(){
		$(this).css( 'top', $('.widget_header').height() );
	});
	
	
};
$(document).ready(function(){

							
	// set the height of content to be height of widget minus height of header minus any margins the content has
	$('.widget_content').height( $('.widget').height() - $('.widget_header').height() );

	// center the center div
	$('.widget .widget_content .content').each(function(){
		var el = $(this);
		$(el).position({
			my: 'center',
			at: 'center',
			of: el.parent()
		});			
	});	

	
	cornerize();

	$('#tester').click(function(){
		$(".corner").append(" Lorem ipsum dolor sit amet, consectetur adipiscing elit.");
		return false;
	});

});
