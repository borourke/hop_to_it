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
//= require jquery-ui/autocomplete
//= require autocomplete-rails
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(document).on('page:load ready', function() {
  url = window.location.href;
  if (url.indexOf("/beers/new") >= 0) {
    console.log("MADE IT")
    $("body").css("background-image", 'url("/assets/beer_background.jpg")');
    console.log("PASET IT")
  } else if (url.indexOf("cellar") >= 0) {
    $("body").css("background-image", 'url("/assets/cellar.jpg")');
  } else if (url.indexOf("notes") >= 0) {
    $("body").css("background-image", 'url("/assets/notes.jpg")');
  }
})