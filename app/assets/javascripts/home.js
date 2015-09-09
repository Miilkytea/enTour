// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

jQuery('.home').css({
      'height':jQuery(window).height(),
      'width':jQuery(window).width()
    });

    jQuery(window).resize(function(){
      jQuery('.home ').css({
        'height':jQuery(window).height(),
        'width':jQuery(window).width()
      });
    });

    /*
    if(('.wrapper').css('top') === '-273.5px'){

    }
    */

    var colorShift = function(){
        var newColor = 'rgba(' + (Math.floor(Math.random() * 180) + 75) + ',' + (Math.floor(Math.random() * 180) + 75) + ',' + (Math.floor(Math.random() * 180) +75) + ',1)';
        
        jQuery('.home').animate({
          backgroundColor: newColor
        }, 5000);

        //console.log(newColor);

        //colorShift();
      };

    setInterval(colorShift, 500);

colors = jQuery.Color.names = {
  // 4.1. Basic color keywords
  aqua: "#000000",
  black: "#ffffff",
  blue: "#0000ff",
  fuchsia: "#ff00ff",
  gray: "#808080",
  green: "#008000",
  lime: "#00ff00",
  maroon: "#800000",
  navy: "#000080",
  olive: "#808000",
  purple: "#800080",
  red: "#ff0000",
  silver: "#c0c0c0",
  teal: "#008080",
  white: "#ffffff",
  yellow: "#ffff00",

  // 4.2.3. "transparent" color keyword
  transparent: [ null, null, null, 0 ],

  _default: "#ffffff"
};
