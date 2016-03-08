jQuery(window).load(function(){
  
  
  $('.flexslider').flexslider({
    animation: "slide",
    slideshow: true,
    animationDuration: 700,
    slideshowSpeed: 4000,
    animation: "fade",
    controlsContainer: ".flex-controls",
    controlNav: false,
    keyboardNav: true
  }).hover(function(){ $('.flex-direction-nav').fadeIn();}, function(){$('.flex-direction-nav').fadeOut();});
  
  
  $("select.loc_on_change").change(function(){
  	if($(this).attr("value") == "#") return false;
  	window.location = $(this).attr("value");
  });
    
  
});

jQuery(document).ready(function($){
  	
  $("a.zoom").fancybox({
    padding:0,
    'titleShow': false,
    overlayColor: '#000000',
    overlayOpacity: 0.2
  });

  $("nav.mobile select").change(function(){ window.location = jQuery(this).val(); });
  $('#product .thumbs a').click(function(){
    
    $('#placeholder').attr('href', $(this).attr('href'));
    $('#placeholder img').attr('src', $(this).attr('data-original-image'))
    
    $('#zoom-image').attr('href', $(this).attr('href'));
    return false;
  });
  
  $('#product .add-to-cart').click(function(e){
    $('#add-item-to-cart').click();
  });
  
  $('input[type="submit"], input.btn, button').click(function(){ // remove ugly outline on input button click
    $(this).blur();
  })
  
  $("li.dropdown").hover(function(){
    $(this).children('.dropdown').show();
    $(this).children('.dropdown').stop();
    $(this).children('.dropdown').animate({
      opacity: 1.0
    }, 200);
  }, function(){
    $(this).children('.dropdown').stop();
    $(this).children('.dropdown').animate({
      opacity: 0.0
    }, 400, function(){
      $(this).hide();
    });
  });
  
  $('a[href^="#"]').bind('click.smoothscroll',function (e) {
    e.preventDefault();
    
    var target = this.hash,
        $target = $(target);
    
    $('html, body').stop().animate({
        'scrollTop': $target.offset().top
    }, 500, 'swing', function () {
        window.location.hash = target;
    });
  });
  
  var tabs = $('ul.tabs > li > a');
  tabs.each(function(i) {
    jQuery(this).unbind('click.smoothscroll')
    .click(function(e) {
         var contentLocation = $(this).attr('href');
    	 if(contentLocation.charAt(0)=="#") {            
  		tabs.removeClass('active');
  		$(this).addClass('active');
  		$(contentLocation).show().addClass('active').siblings().hide().removeClass('active');
    	 }
      return false;
    });
  });
  
}); // end document ready
