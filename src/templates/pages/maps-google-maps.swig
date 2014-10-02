{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'maps-google-maps' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

<script>
    $(document).ready(function(){
      //initialize the javascript
    //Basic Map
    var map;

    var mapOptions = {
      zoom: 14,
      center: new google.maps.LatLng(-33.877827, 151.188598),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById('map_one'), mapOptions);

  //Hybrid Map
    var map2;

    var mapOptions = {
      zoom: 14,
      center: new google.maps.LatLng(-33.877827, 151.188598),
      mapTypeId: google.maps.MapTypeId.HYBRID
    };
    map2 = new google.maps.Map(document.getElementById('map_two'), mapOptions);


   //Terrain Map
    var map3;

    var mapOptions = {
      zoom: 14,
      center: new google.maps.LatLng(-33.877827, 151.188598),
      mapTypeId: google.maps.MapTypeId.TERRAIN
    };
    map3 = new google.maps.Map(document.getElementById('map_three'), mapOptions);


    });
</script>
{% endblock %}

{% block content2 %}
<div class="row">
				<div class="col-sm-6 col-md-6">
					<div class="block-flat">
						<div class="header">
							<h3>Basic Map</h3>
						</div>
						<div class="content" id="map_one" style="height: 300px;">

						</div>
					</div>

				</div>

				<div class="col-sm-6 col-md-6">

					<div class="block-flat">
						<div class="header">
							<h3>Hybrid Map</h3>
						</div>
						<div class="content" id="map_two" style="height: 300px;">
						</div>
					</div>


				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="block-flat">
						<div class="header">
							<h3>Terrain Map</h3>
						</div>
						<div class="content" id="map_three" style="height: 350px;">
						</div>
					</div>
				</div>
			</div>	</div>
{% endblock %}