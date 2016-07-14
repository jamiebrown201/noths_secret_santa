// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready( function() {
  $("#tag-typer").keypress( function(event) {
    var key = event.which;
    if (key == 13 || key == 44){
     event.preventDefault();
     var tag = $(this).val();
      if(tag.length > 0){
        $("<span class='tag' style='display:none'><span class='close'>&times;</span>"+tag+" </span>").insertBefore(this).fadeIn(100);
        $(this).val("");
      }
    }
  });

  $("#tags").on("click", ".close", function() {
    $(this).parent("span").fadeOut(100);
  });

  $(".colors li").click(function() {
    var c = $(this).css("background-color");
    $(".tag").css("background-color",c);
    $("#title").css("color",c);
  });

});
