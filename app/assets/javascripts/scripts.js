// Smooth Scroll

// $('a').smoothScroll();

$(function(){
  var hashCheck = function() {
    $(".primary-menu a").removeClass("active");
    // this will get the full URL at the address bar
    var hash = window.location.hash; 
    // passes on every "a" tag 
    $(".primary-menu a").each(function() {
      // checks if its the same on the address bar
      if (hash != "") {
        if (hash == (this.hash)) { 
          $(this).closest("a").addClass("active");
        }
      }
    });
  };
  

  window.addEventListener('hashchange', function(){ 
    hashCheck();
  });

  hashCheck();
// Stellar Parallax
	//your jQuery here

  var isMobile = {
    Android: function() {
      return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
      return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
      return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
      return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
      return navigator.userAgent.match(/IEMobile/i);
    },
    any: function() {
      return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
  };


  if( !isMobile.any() ) {
    $.stellar({
      verticalScrolling: true,
      responsive: false,
      horizontalScrolling: false
    });
  };

	// $('.home-container').stellar();




}); //end of .ready










