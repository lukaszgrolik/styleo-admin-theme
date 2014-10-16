{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'index' %}

{% block headEnd %}
<link href="bower_components/morrisjs/morris.css" rel="stylesheet">
<link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/raphael/raphael-min.js"></script>
<script src="bower_components/morrisjs/morris.min.js"></script>

<script src="bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<script src="js/easy-pie-chart.js"></script>

<script src="bower_components/bower-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-us-merc-en.js"></script>

<script src="bower_components/relayfoods-jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<script src="bower_components/flot/excanvas.js"></script>
<script src="bower_components/flot/jquery.flot.js"></script>
{# <script src="bower_components/flot/jquery.flot.time.js"></script> #}
{# <script src="bower_components/flot/jquery.flot.pie.js"></script> #}
<script src="bower_components/flot-spline/js/jquery.flot.spline.js"></script>
<script src="bower_components/flot/jquery.flot.resize.js"></script>
<script src="bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
{# <script src="js/plugins/flot/flot-data.js"></script> #}

<script>
$(function() {
  EasyPieChart.init();

  //
  //
  //

	// Morris.Bar({
 //    element: 'morris-bar-chart',
 //    data: [{
 //        y: '2008',
 //        a: 100,
 //        b: 90
 //    }, {
 //        y: '2009',
 //        a: 75,
 //        b: 65
 //    }, {
 //        y: '2010',
 //        a: 50,
 //        b: 40
 //    }, {
 //        y: '2011',
 //        a: 75,
 //        b: 65
 //    }, {
 //        y: '2012',
 //        a: 50,
 //        b: 40
 //    }, {
 //        y: '2013',
 //        a: 75,
 //        b: 65
 //    }, {
 //        y: '2014',
 //        a: 100,
 //        b: 90
 //    }],
 //    xkey: 'y',
 //    ykeys: ['a', 'b'],
 //    labels: ['Series A', 'Series B'],
 //    hideHover: 'auto',
 //    resize: true,
 //    barColors: ['#e67e22', '#e74c3c']
	// });

	//
	//
	//

	var data1 = [
      [0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,30],[11,10],[12,13],[13,4],[14,3],[15,3],[16,6]
  ];
  var data2 = [
      [0,1],[1,0],[2,2],[3,0],[4,1],[5,3],[6,1],[7,5],[8,2],[9,3],[10,2],[11,1],[12,0],[13,2],[14,8],[15,0],[16,0]
  ];

	$("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
      data1, data2
  ],
    {
      series: {
          lines: {
              show: false,
              fill: true
          },
          splines: {
              show: true,
              tension: 0.5,
              lineWidth: 1,
              fill: 0.5
          },
          points: {
              radius: 2,
              show: true
          },
          shadowSize: 2
      },
      grid: {
          hoverable: true,
          clickable: true,
          tickColor: "#d5d5d5",
          borderWidth: 1,
          color: '#d5d5d5'
      },
      colors: ["#2ecc71", "#e74c3c"],
      xaxis:{
      },
      yaxis: {
          ticks: 4
      },
      tooltip: true
    }
  );

	//
	//
	//

  $('#usa-map').vectorMap({
    map: 'us_merc_en',
    backgroundColor: 'transparent',
    regionStyle: {
      initial: {
        fill: '#2ecc71',
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
        "stroke-width": 5
      }
    },
    markers: [
      {latLng: [40.6643 , -73.9385], name: '2.532 Visits'},
      {latLng: [34.0194, -118.4108], name: '1.932 Visits'},
      {latLng: [41.8376, -87.6818], name: '492 Visits'},
      {latLng: [29.7805, -95.3863], name: '1.142 Visits'},
      {latLng: [40.0094, -75.1333], name: '1.311 Visits'},
      {latLng: [33.5722, -112.0880], name: '2.192 Visits'},
      {latLng: [29.4724, -98.5251], name: '2.192 Visits'},
      {latLng: [32.8153, -117.1350], name: '288 Visits'},
    ]
  });

  //
  //
  //

  var sparklineBar = $('[data-sparkline="bar"]');

  $.each(sparklineBar, function() {
      $(this).sparkline('html', {
          type: 'bar',
          height: '50px',
          barWidth: '5px',
          barColor: '#fff'
      });
  });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="alert alert-success sharp">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <i class="fa fa-check"></i>
            Welcome to <strong>Styleo</strong> (v2.0.0) , the lightweight, feature-rich and easy to use admin template.
        </div>
    </div>
</div>

{% macro mediaWidget1(name, value, icon, type) %}
<div class="media-widget-1 media-widget-{{type}}">
	<div class="media-widget-icon-container">
		<div class="fa fa-fw fa-{{icon}} media-widget-icon"></div>
	</div>

	<div class="media-widget-content-area">
		<div class="media-widget-value">{{value}}</div>
		<div class="media-widget-name">{{name}}</div>
	</div>
</div>
{% endmacro %}

<div class="row">
	<div class="col-lg-3">
		{{mediaWidget1('New Users', '112', 'users', 'warning')}}
	</div>

	<div class="col-lg-3">
		{{mediaWidget1('Profit', '4,550', 'dollar', 'success')}}
	</div>

	<div class="col-lg-3">
		{{mediaWidget1('Sales', '262', 'shopping-cart', 'danger')}}
	</div>

	<div class="col-lg-3">
		{{mediaWidget1('Uploads', '540', 'cloud-upload', 'info')}}
	</div>
</div>

<div class="row">
	<div class="col-lg-8">
    <div class="panel panel-default">
      <div class="panel-heading">
      	<i class="fa fa-fw fa-area-chart"></i>
        Visitors Statistics
      </div>

      <div class="panel-body">
        {# <div id="morris-bar-chart"></div> #}
        <div class="flot-chart" style="height: 300px">
          <div class="flot-chart-content" id="flot-dashboard-chart"></div>
        </div>
      </div>
    </div>
	</div>

	<div class="col-lg-4">
		<div class="panel panel-primary filled">
			<div class="panel-heading">
				Bandwidth Used
			</div>

			<div class="panel-body text-center">
				<div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#f1c40f" data-trackcolor="#fff" data-line-width="15" data-size="150">
		        <div class="easy-pie-chart-value">65%</div>
		    </div>

		    <hr class="wide">

		    <span data-sparkline="bar">
            2,5,6,3,7,4,2,5,4,2,6,3,2,4,3,4,5,6,3,2,5,4,2,3,4,2,6,4,3,7,4,6,3,2,3,4
        </span>

        <hr class="wide">

    		<div>
    			<i class="fa fa-fw fa-upload"></i>
        	This month: 215 GB
    		</div>
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
        <div id="usa-map" style="height: 300px"></div>
      </div>
    </div>
  </div>

	<div class="col-lg-6">
		<div class="panel panel-default">
			<div class="panel-heading">Support Tickets</div>

			<div class="panel-body">
				<table id="ticket-table" class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Issue</th>
							<th>Priority</th>
							<th>Progress</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href="#">Product Review Problem</a></td>
							<td><span class="label label-info">High</span></td>
							<td>
								<div class="progress progress-sm sharp">
				                    <div class="progress-bar progress-bar-success" style="width: 50%">
				                        <span class="sr-only">
				                            50% Complete
				                        </span>
				                    </div>
				                </div>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="#">Can't Download the Guide Doc</a></td>
							<td><span class="label label-primary">Medium</span></td>
							<td>
								<div class="progress progress-sm sharp">
				                    <div class="progress-bar progress-bar-info" style="width: 30%">
				                        <span class="sr-only">
				                            30% Complete
				                        </span>
				                    </div>
				                </div>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="#">Regarding Customer Support</a></td>
							<td><span class="label label-primary">Medium</span></td>
							<td>
								<div class="progress progress-sm sharp">
				                    <div class="progress-bar progress-bar-warning" style="width: 75%">
				                        <span class="sr-only">
				                            75% Complete
				                        </span>
				                    </div>
				                </div>
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="#">Can't Change My Address</a></td>
							<td><span class="label label-yellow">Urgent</span></td>
							<td>
								<div class="progress progress-sm sharp">
				                    <div class="progress-bar progress-bar-danger" style="width: 40%">
				                        <span class="sr-only">
				                            40% Complete
				                        </span>
				                    </div>
				                </div>
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href="#">Review Tab Malfunction</a></td>
							<td><span class="label label-violet">Low</span></td>
							<td>
								<div class="progress progress-sm sharp">
				                    <div class="progress-bar progress-bar-progress-bar" style="width: 65%">
				                        <span class="sr-only">
				                            65% Complete
				                        </span>
				                    </div>
				                </div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-default">
    	<div class="panel-heading">
    		Team Messages
    	</div>
    	<div class="panel-body">
    		<ul class="compact-timeline">
    		  <li>
    		    <i class="fa fa-comment"></i>
    		    <span class="date">5 Jan</span>
    		    <div class="content">
    		      <p><strong>Jason</strong> has invited you to conversation.</p>
    		      <small>2 hours ago</small>
    		    </div>
    		  </li>

    		  <li>
    		    <i class="fa fa-envelope bgc-green"></i>
    		    <span class="date">5 Jan</span>
    		    <div class="content">
    		      <i class="fa fa-paperclip pull-right"></i>
    		      <p><strong>Bruce Burns</strong> has sent you photos:</p>
    		      <a class="image-zoom" href="images/photos/photo4.jpg"><img src="images/photos/photo4.jpg" class="img-thumbnail" style="height:64px;" /></a>
    		      <a class="image-zoom" href="images/photos/photo2.jpg"><img src="images/photos/photo2.jpg" class="img-thumbnail" style="height:64px;" /></a>
    		    </div>
    		  </li>

    		  <li>
    		    <i class="fa fa-file bgc-orange"></i>
    		    <span class="date">5 Jan</span>
    		    <div class="content">
    		      <p><strong>Nicholas Rivera</strong> has wrote on your wall:</p>
    		      <blockquote>
    		        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
    		      </blockquote>
    		    </div>
    		  </li>

    		  <li><i class="fa fa-globe bgc-red"></i><span class="date">5 Jan</span><div class="content"><p><strong>Catherine</strong> has updated her profile.</p></div></li>
    		</ul>
    	</div>
    </div>
  </div>
</div>
{% endblock %}