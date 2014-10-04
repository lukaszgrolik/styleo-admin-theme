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
  /*Map*/
  $('#world-map').vectorMap({
      map: 'world_mill_en',
      backgroundColor: '#383A41',
      regionStyle: {
        initial: {
          fill: '#707482',
        },
        hover: {
          "fill-opacity": 0.8
        }
      },
      markerStyle:{
          initial:{
            r: 8
          },
           hover: {
            r: 12,
            stroke: 'rgba(29,210,175,0.3)',
            "stroke-width": 6
          }
        },
        markers: [
            {latLng: [41.90, 12.45], name: '1.512 Visits', style: {fill: '#1DD2AF',stroke:'rgba(29,210,175,0.3)',"stroke-width": 3}},
            {latLng: [1.3, 103.8], name: '940 Visits', style: {fill: '#1DD2AF',stroke:'rgba(29,210,175,0.3)',"stroke-width": 3}},
            {latLng: [51.511214, -0.119824], name: '530 Visits', style: {fill: '#1DD2AF',stroke:'rgba(29,210,175,0.3)',"stroke-width": 3}},
            {latLng: [40.714353, -74.005973], name: '340 Visits', style: {fill: '#1DD2AF',stroke:'rgba(29,210,175,0.3)',"stroke-width": 3}},
            {latLng: [-22.913395, -43.200710], name: '1.800 Visits', style: {fill: '#1DD2AF',stroke:'rgba(29,210,175,0.3)',"stroke-width": 3}}
        ]
    });

    $('#usa-map').vectorMap({
      map: 'us_merc_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#51ADFE',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });

    $('#france-map').vectorMap({
      map: 'fr_merc_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#38c3c1',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });

    $('#uk-map').vectorMap({
      map: 'uk_mill_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#FD6A5E',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });

    $('#chicago-map').vectorMap({
      map: 'us-il-chicago_mill_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#d9dade',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });

    $('#australia-map').vectorMap({
      map: 'au_mill_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#dc6ea5',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });

    $('#india-map').vectorMap({
      map: 'in_mill_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#ffba3b',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });

  // $('#vector-map').vectorMap({
  //   map: 'map',
  //   backgroundColor: 'transparent',
  //   regionStyle: {
  //       initial: {
  //         fill: '#D9DADE',
  //         "fill-opacity": 0.8,
  //         stroke: 'none',
  //         "stroke-width": 0,
  //         "stroke-opacity": 1
  //       },
  //       hover: {
  //         "fill-opacity": 0.8
  //       }
  //     },
  //   markerStyle:{
  //     initial:{
  //       r: 10
  //     }
  //   },
  //   markers: [
  //       {coords: [100, 100], name: 'Marker 1', style: {fill: '#acb1b6',stroke:'#cfd5db',"stroke-width": 3}},
  //       {coords: [200, 200], name: 'Marker 2', style: {fill: '#acb1b6',stroke:'#cfd5db',"stroke-width": 3}},
  //   ]
  // });

    $('#canada-map').vectorMap({
      map: 'ca_lcc_en',
      backgroundColor: 'transparent',
      regionStyle: {
        initial: {
          fill: '#6f6bc8',
        },
        hover: {
          "fill-opacity": 0.8
        }
      }
    });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        World Map
      </div>
      <div class="panel-body">
        <div id="world-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        United States
      </div>
      <div class="panel-body">
        <div id="usa-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        France
      </div>
      <div class="panel-body">
        <div id="france-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        United Kingdom
      </div>
      <div class="panel-body">
        <div id="uk-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        Chicago
      </div>
      <div class="panel-body">
        <div id="chicago-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        Australia
      </div>
      <div class="panel-body">
        <div id="australia-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        India
      </div>
      <div class="panel-body">
        <div id="india-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        Custom Map
      </div>

      <div class="panel-body">
        <div id="vector-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        Canada
      </div>
      <div class="panel-body">
        <div id="canada-map" style="height: 380px;"></div>
      </div>
    </div>
  </div>
</div>
{% endblock %}