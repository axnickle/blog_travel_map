// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

/* only execute this script when the document is ready */
$(document).ready(function(){
  /* function called when you click of the button */
  $("button").click(function(){

      /* this if else to change the text in the button */
      if($("button").text() == "☰"){
       $("button").text("🞬");
      }else{
        $("button").text("☰");
      }

    /* this function toggle the visibility of our "li" elements */
    $("li").toggle("slow");
  });
});

import "bootstrap"
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
