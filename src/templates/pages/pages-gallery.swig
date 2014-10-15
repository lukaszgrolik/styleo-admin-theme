{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-gallery' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/magnific-popup/dist/magnific-popup.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/masonry/dist/masonry.pkgd.min.js"></script>
<script src="bower_components/magnific-popup/dist/jquery.magnific-popup.min.js"></script>

<script>
$(function() {

	//Initialize Mansory
	var $container = $('.gallery-container');
	// initialize
	$container.masonry({
		columnWidth: 0,
		itemSelector: '.gallery-item'
	});

	//Resizes gallery items on sidebar collapse
	// $("#sidebar-collapse").click(function(){
	//   $container.masonry();
	// });

	//MagnificPopup for images zoom
	$('.gallery-image-zoom-action').magnificPopup({
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
				var parent = $(openerElement).parents(".gallery-image");
				  return parent;
			}
		}

	});

});
</script>
{% endblock %}

{% macro galleryItem(title, description, file, isWide) %}
<div class="gallery-item {% if isWide %}gallery-item-wide{% endif %}">
	<div class="gallery-photo">
		<div class="gallery-header">
			<span class="pull-right">
				<i class="fa fa-heart icon"></i>
			</span>

			<h4>{{title}}</h4>
			<span class="gallery-photo-description">{{description}}</span>
		</div>

		<div class="gallery-image">
			<img src="images/photos/{{file}}" alt="gallery-image" />

			<div class="gallery-overlay">
				<div class="gallery-overlay-icons-container">
					<a href="#">
						<i class="fa fa-link icon"></i>
					</a>

					<a class="gallery-image-zoom-action" href="images/photos/{{file}}">
						<i class="fa fa-search icon"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
{% endmacro %}

{% block content2 %}
<div class="gallery-container">
	{{galleryItem('Boats', 'My Trips', 'photo1.jpg')}}
	{{galleryItem('Ocean', 'My Trips', 'photo2.jpg')}}
	{{galleryItem('Mountains', 'Landscapes', 'photo3.jpg')}}
	{{galleryItem('Forest Railroad', 'My Pictures', 'photo4.jpg')}}
	{{galleryItem('Lake', 'My Pictures', 'photo5.jpg', true)}}
	{{galleryItem('Book', 'My Pictures', 'photo6.jpg')}}
	{{galleryItem('Bear', 'Favourites', 'photo7.jpg')}}
	{{galleryItem('Concert', 'My Pictures', 'photo8.jpg')}}
</div>
{% endblock %}