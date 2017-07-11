// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

<script>
  $(document).ready(function(){// Activate the side menu
  $(".button-collapse").sideNav()});
</script>;

// Initialize collapse button
$(".button-collapse").sideNav();
// Initialize collapsible (uncomment the line below if you use the dropdown variation)
$(".collapsible").collapsible();

$(".button-collapse").sideNav({
  menuWidth: 300, // Default is 300
  edge: "right", // Choose the horizontal origin
  closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
  draggable: true, // Choose whether you can drag to open on touch screens,
  onOpen: function(el) {}, // A function to be called when sideNav is opened
  onClose: function(el) {} // A function to be called when sideNav is closed.
});

// Show sideNav
$(".button-collapse").sideNav("show");
// Hide sideNav
$(".button-collapse").sideNav("hide");
// Destroy sideNav
$(".button-collapse").sideNav("destroy");
