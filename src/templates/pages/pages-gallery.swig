{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-gallery' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/magnific-popup/dist/magnific-popup.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/masonry/dist/masonry.pkgd.min.js"></script>
{# <script src="bower_components/outlayer/outlayer.js"></script> #}
{# <script src="bower_components/masonry/masonry.js"></script> #}
<script src="bower_components/magnific-popup/dist/jquery.magnific-popup.min.js"></script>

<script>
$(function() {

	//Initialize Mansory
	var $container = $('.gallery-cont');
	// initialize
	$container.masonry({
		columnWidth: 0,
		itemSelector: '.item'
	});

	//Resizes gallery items on sidebar collapse
	// $("#sidebar-collapse").click(function(){
	//   $container.masonry();
	// });

	//MagnificPopup for images zoom
	$('.image-zoom').magnificPopup({
		type: 'image',
		mainClass: 'mfp-with-zoom', // this class is for CSS animation below
		zoom: {
			enabled: true, // By default it's false, so don't forget to enable it

			duration: 300, // duration of the effect, in milliseconds
			easing: 'ease-in-out', // CSS transition easing function

			// The "opener" function should return the element from which popup will be zoomed in
			// and to which popup will be scaled down
			// By defailt it looks for an image tag:
			opener: function(openerElement) {
				// openerElement is the element on which popup was initialized, in this case its <a> tag
				// you don't need to add "opener" option if this code matches your needs, it's defailt one.
				var parent = $(openerElement).parents("div.img");
				  return parent;
			}
		}

	});

});
</script>
{% endblock %}

{% block content2 %}
<div class="gallery-cont">
	<div class="item">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right"> <i class="fa fa-heart"></i> </span><h4>Ocean</h4>
	      <span class="desc">My Trips</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/sunset2.jpg" alt="gallery-image" />
	      <div class="over">
	        <div class="func">
	        	<a href="#">
	        		<i class="fa fa-link"></i>
	        	</a>

	        	<a class="image-zoom" href="images/gallery/sunset2.jpg">
	        		<i class="fa fa-search"></i>
	        	</a>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="item">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right active"> <i class="fa fa-heart"></i> </span><h4>Night Street</h4>
	      <span class="desc">My Trips</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/img3.jpg" alt="gallery-image" />
	      <div class="over">
	        <div class="func"><a href="#"><i class="fa fa-link"></i></a><a class="image-zoom" href="images/gallery/img3.jpg"><i class="fa fa-search"></i></a></div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="item">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right active"> <i class="fa fa-heart"></i> </span><h4>Mountains</h4>
	      <span class="desc">Landscapes</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/img6.jpg" alt="gallery-image" />
	      <div class="over">
	        <div class="func"><a href="#"><i class="fa fa-link"></i></a><a class="image-zoom" href="images/gallery/img6.jpg"><i class="fa fa-search"></i></a></div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="item">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right"> <i class="fa fa-heart"></i> </span><h4>Sunset</h4>
	      <span class="desc">My Pictures</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/img2.jpg" alt="gallery-image"/>
	      <div class="over">
	        <div class="func"><a href="#"><i class="fa fa-link"></i></a><a class="image-zoom" href="images/gallery/img2.jpg"><i class="fa fa-search"></i></a></div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="item w2">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right active"> <i class="fa fa-heart"></i> </span><h4>Road</h4>
	      <span class="desc">My Trips</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/img4.jpg" alt="gallery-image" />
	      <div class="over">
	        <div class="func"><a href="#"><i class="fa fa-link"></i></a><a class="image-zoom" href="images/gallery/img4.jpg"><i class="fa fa-search"></i></a></div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="item">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right active"> <i class="fa fa-heart"></i> </span><h4>Valley</h4>
	      <span class="desc">My Trips</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/img5.jpg" alt="gallery-image" />
	      <div class="over">
	        <div class="func"><a href="#"><i class="fa fa-link"></i></a><a class="image-zoom" href="images/gallery/img5.jpg"><i class="fa fa-search"></i></a></div>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="item">
	  <div class="photo">
	    <div class="head">
	      <span class="pull-right"> <i class="fa fa-heart"></i> </span><h4>Forest</h4>
	      <span class="desc">My Trips</span>
	    </div>
	    <div class="img">
	      <img src="images/gallery/img6.jpg" alt="gallery-image" />
	      <div class="over">
	        <div class="func"><a href="#"><i class="fa fa-link"></i></a><a class="image-zoom" href="images/gallery/img6.jpg"><i class="fa fa-search"></i></a></div>
	      </div>
	    </div>
	  </div>
	</div>

</div>
{% endblock %}