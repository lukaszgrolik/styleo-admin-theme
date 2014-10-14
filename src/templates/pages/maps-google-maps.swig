{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'maps-google-maps' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

<script>
$(function() {
  new google.maps.Map(document.getElementById('map1'), {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  new google.maps.Map(document.getElementById('map2'), {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.HYBRID
  });

  new google.maps.Map(document.getElementById('map3'), {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644),
    mapTypeId: google.maps.MapTypeId.TERRAIN
  });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        Basic Map
      </div>
      <div class="panel-body">
        <div id="map1" style="height: 300px;"></div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-6">

    <div class="panel panel-default">
      <div class="panel-heading">
        Hybrid Map
      </div>
      <div class="panel-body">
        <div id="map2" style="height: 300px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        Terrain Map
      </div>
      <div class="panel-body">
        <div id="map3" style="height: 300px;"></div>
      </div>
    </div>
  </div>
</div>
{% endblock %}