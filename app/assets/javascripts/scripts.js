// Smooth Scroll

$('a').smoothScroll();

$(function(){
    // this will get the full URL at the address bar
    var url = window.location.href; 

    // passes on every "a" tag 
    $(".primary-menu a").each(function() {
            // checks if its the same on the address bar
        if(url == (this.href)) { 
            $(this).closest("a").addClass("active");
        }
    });

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

	// $('header').stellar();




}); //end of .ready










