function centerize(id) {
	// center the center div; if id is passed in center only that id's center div
	var id = typeof(id) != 'undefined' ? "#"+id : "";
	$(id+'.widget .widget_content .content').each(function(){
		var el = $(this);
		$(el).position({
			my: 'center',
			at: 'center',
			of: el.parent()
		});			
	});	
}
function cornerize(id) {

	// top right and top left corners need to be vertically offset the height of the widget_header
	// if id is passed in, only cornerize that widget's corners
	var id = typeof(id) != 'undefined' ? "#"+id : "";
	
	$(id+'.widget .top_right').each(function(){
		$(this).css( 'top', $('.widget_header').height() );
	});

	$(id+'.widget .top_left').each(function(){
		$(this).css( 'top', $('.widget_header').height() );
	});

	//bring up all four corners opacity
	$(id+'.widget .corner.transparent').each(function(){
		$(this).fadeTo( 1000, 1.0 );
	});
	
	
};
$(document).ready(function(){
							
	// set the height of content to be height of widget minus height of header
	$('.widget_content').height( $('.widget').height() - $('.widget_header').height() );

	centerize();
	cornerize();

});
