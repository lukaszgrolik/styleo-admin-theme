{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'maps-vector-maps' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/bower-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="bower_components/bower-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-us-merc-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-fr-merc-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-uk-mill-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-us-il-chicago-mill-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-in-mill-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-au-mill-en.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-ca-lcc-en.js"></script>

<script>
$(function() {
  $('#world-map').vectorMap({
    map: 'world_mill_en',
    backgroundColor: '#3498db',
    regionStyle: {
      initial: {
        fill: '#fff',
      },
      hover: {
        'fill-opacity': 0.75
      }
    },
    markerStyle:{
      initial:{
        r: 5,
        stroke: '#e74c3c',
        fill: '#e74c3c'
      },
       hover: {
        r: 10,
        stroke: '#e74c3c',
        "stroke-width": 5
      }
    },
    markers: [
      {latLng: [27.175015, 78.042155], name: '2.532 Visits'},
      {latLng: [40.712784, -74.005941], name: '1.932 Visits'},
      {latLng: [55.755826, 37.617300], name: '492 Visits'},
      {latLng: [35.689487, 139.691706], name: '1.142 Visits'},
      {latLng: [10.469640, -66.803719], name: '1.311 Visits'},
      {latLng: [-26.204103, 28.047305], name: '2.192 Visits'},
      {latLng: [40.416775, -3.703790], name: '1.486 Visits'},
      {latLng: [-33.867487, 151.206990], name: '1.901 Visits'},
      {latLng: [64.175000, -51.738889], name: '288 Visits'},
    ]
  });

  $('#usa-map').vectorMap({
    map: 'us_merc_en',
    backgroundColor: 'transparent',
    regionStyle: {
      initial: {
        fill: '#e67e22',
      },
      hover: {
        'fill-opacity': 0.75
      }
    }
  });

  $('#chicago-map').vectorMap({
    map: 'us-il-chicago_mill_en',
    backgroundColor: 'transparent',
    regionStyle: {
      initial: {
        fill: '#1abc9c',
      },
      hover: {
        'fill-opacity': 0.75
      }
    }
  });

  $('#uk-map').vectorMap({
    map: 'uk_mill_en',
    backgroundColor: 'transparent',
    regionStyle: {
      initial: {
        fill: '#be643c',
      },
      hover: {
        'fill-opacity': 0.75
      }
    }
  });

  $('#france-map').vectorMap({
    map: 'fr_merc_en',
    backgroundColor: 'transparent',
    regionStyle: {
      initial: {
        fill: '#9b59b6',
      },
      hover: {
        'fill-opacity': 0.75
      }
    }
  });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-primary sharp">
      <div class="panel-heading">
        World Map
      </div>
      <div class="panel-body">
        <div id="world-map" style="height: 300px"></div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-warning sharp">
      <div class="panel-heading">
        United States
      </div>
      <div class="panel-body">
        <div id="usa-map" style="height: 300px"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-info sharp">
      <div class="panel-heading">
        Chicago
      </div>
      <div class="panel-body">
        <div id="chicago-map" style="height: 300px"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-brown sharp">
      <div class="panel-heading">
        United Kingdom
      </div>
      <div class="panel-body">
        <div id="uk-map" style="height: 300px"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-violet sharp">
      <div class="panel-heading">
        France
      </div>
      <div class="panel-body">
        <div id="france-map" style="height: 300px"></div>
      </div>
    </div>
  </div>
</div>
{% endblock %}