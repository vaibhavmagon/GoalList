// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//= require jquery
//= require jquery_ujs

/*
def destroy
  @friendship = current_user.friendships.find(params[:id])
  @friendship.destroy
  flash[:notice] = "Removed friendship."
  redirect_to current_user
end

*/

$(function() {
    $(".zoom").hover(function(evt) {
        $(this).zoomTo({targetsize:0.70, duration:400});
        evt.stopPropagation();
    });
	
	$("body").hover(function(evt) {
		evt.stopPropagation();
		$("body").zoomTo({targetsize:0.1, duration:600});
	});
	$("body").zoomTo();
  
  $("body").click(function(evt) {
		evt.stopPropagation();
		$("container").zoomTo({targetsize:0.1, duration:600});
	});
	$("container").zoomTo();
  
});

$(function() {
  $(".yo").click(function(evt){
    $(".envelope-goal").focus().show("fast");
        });
    });
    
$(function() {
  $(".yo").click(function(evt){
    $(".envelope-texte").show("fast");
        });
    });
    
$(function() {
  $(".yo").click(function(evt){
    $(".envelope-moral").focus().show("fast");
        });
    });  
    
    