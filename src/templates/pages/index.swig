{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'index' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/bower-jvectormap/jquery-jvectormap-1.2.2.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<script src="js/custom-easy-pie-charts.js"></script>

<script src="bower_components/bower-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-us-merc-en.js"></script>

<script src="bower_components/relayfoods-jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<script src="bower_components/flot/excanvas.js"></script>
<script src="bower_components/flot/jquery.flot.js"></script>
<script src="bower_components/flot/jquery.flot.time.js"></script>
<script src="bower_components/flot-spline/js/jquery.flot.spline.js"></script>
<script src="bower_components/flot/jquery.flot.resize.js"></script>
<script src="bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>

<script>
$(function() {
  CustomEasyPieCharts.init();

  //
  // Sparkline
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

  //
  // Flot Spline Chart
  //

  var data1 = [
    [1413763200000,4000],
    [1413849600000,12000],
    [1413936000000,4000],
    [1414022400000,8000],
    [1414108800000,6000],
    [1414195200000,16000],
    [1414281600000,5000],
    [1414371600000,7000],
    [1414458000000,4000],
    [1414544400000,12000],
    [1414630800000,34000],
    [1414717200000,10000],
    [1414803600000,22000],
    [1414890000000,8000],
    [1414976400000,2000],
    [1415062800000,8000],
    [1415149200000,6000]
  ];
  var data2 = [
    [1413763200000,2000],
    [1413849600000,4000],
    [1413936000000,10000],
    [1414022400000,4000],
    [1414108800000,2000],
    [1414195200000,4000],
    [1414281600000,2000],
    [1414371600000,6000],
    [1414458000000,18000],
    [1414544400000,6000],
    [1414630800000,2000],
    [1414717200000,4000],
    [1414803600000,2000],
    [1414890000000,8000],
    [1414976400000,20000],
    [1415062800000,10000],
    [1415149200000,4000]
  ];

  $("#flot-spline-chart").length && $.plot($("#flot-spline-chart"), [
      {
        data: data1,
        label: 'Old Visitors'
      },
      {
        data: data2,
        label: 'New Visitors'
      }
  ],
    {
      xaxes: [{
        mode: 'time',
        timeformat: "%m/%d",
      }],
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
      tooltip: true,
      tooltipOpts: {
        content: "%y"
      }
    }
  );

  //
  // Flot Moving Line Chart
  //

  var container = $("#flot-line-chart-moving");

  // Determine how many data points to keep based on the placeholder's initial size;
  // this gives us a nice high-res plot while avoiding more than one point per pixel.

  var maximum = container.outerWidth() / 2 || 300;

  //

  var data = [];

  function getRandomData() {

      if (data.length) {
          data = data.slice(1);
      }

      while (data.length < maximum) {
          var previous = data.length ? data[data.length - 1] : 50;
          var y = previous + Math.random() * 10 - 5;
          data.push(y < 0 ? 0 : y > 100 ? 100 : y);
      }

      // zip the generated y values with the x values

      var res = [];
      for (var i = 0; i < data.length; ++i) {
          res.push([i, data[i]])
      }

      return res;
  }

  //

  series = [{
      data: getRandomData(),
      lines: {
          fill: true
      },
      color: '#e67e22'
  }];

  //

  var plot = $.plot(container, series, {
      grid: {
          borderWidth: 1,
          tickColor: "#d5d5d5",
          color: '#d5d5d5',
          minBorderMargin: 20,
          labelMargin: 10,
          backgroundColor: {
              colors: ["#fff", "#fff"]
          },
          margin: {
              top: 8,
              bottom: 20,
              left: 20
          },

          markings: function(axes) {
              var markings = [];
              var xaxis = axes.xaxis;
              for (var x = Math.floor(xaxis.min); x < xaxis.max; x += xaxis.tickSize * 2) {
                  markings.push({
                      xaxis: {
                          from: x,
                          to: x + xaxis.tickSize
                      },
                      color: "rgba(232, 232, 255, 0.2)"
                  });
              }
              return markings;
          }
      },
      xaxis: {
          tickFormatter: function() {
              return "";
          }
      },
      yaxis: {
          min: 0,
          max: 110
      },
      legend: {
          show: true
      }
  });

  // Update the random dataset at 25FPS for a smoothly-animating chart

  setInterval(function updateRandom() {
      series[0].data = getRandomData();
      plot.setData(series);
      plot.draw();
  }, 1000);

	//
	// Vector Map
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
        stroke: '#e74c3c',
        "stroke-width": 5
      }
    },
    markers: [
      {latLng: [40.6643 , -73.9385], name: 'New York - 2.532'},
      {latLng: [34.0194, -118.4108], name: 'Los Angeles - 1.932'},
      {latLng: [41.8376, -87.6818], name: 'Chicago - 492'},
      {latLng: [29.7805, -95.3863], name: 'Houston - 1.142'},
      {latLng: [40.0094, -75.1333], name: 'Philadelphia - 1.311'},
      {latLng: [33.5722, -112.0880], name: 'Phoenix - 2.192'},
      {latLng: [29.4724, -98.5251], name: 'San Antonio - 2.192'},
      {latLng: [32.8153, -117.1350], name: 'San Diego - 288'},
    ]
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

{% macro mediaWidget1(name, value, growth, icon, type) %}
<div class="media-widget-1 media-widget-{{type}}">
	<div class="media-widget-icon-container">
		<div class="fa fa-fw fa-{{icon}} media-widget-icon"></div>
	</div>

	<div class="media-widget-content-area">
    <div class="media-widget-growth media-widget-growth-success">{{growth}}%</div>
		<div class="media-widget-value">{{value}}</div>
		<div class="media-widget-name">{{name}}</div>
	</div>
</div>
{% endmacro %}

<div class="row">
	<div class="col-lg-3">
		{{mediaWidget1('New Users', '123', '+4', 'users', 'warning')}}
	</div>

	<div class="col-lg-3">
		{{mediaWidget1('Profit', '6,250', '+7', 'dollar', 'success')}}
	</div>

	<div class="col-lg-3">
		{{mediaWidget1('Sales', '252', '+5', 'shopping-cart', 'danger')}}
	</div>

	<div class="col-lg-3">
		{{mediaWidget1('Uploads', '719', '+13', 'cloud-upload', 'info')}}
	</div>
</div>

<div class="row">
	<div class="col-lg-8">
    <div class="panel panel-primary separated">
      <div class="panel-heading">
      	<i class="fa fa-fw fa-area-chart"></i>
        Visitors Statistics
      </div>

      <div class="panel-body">
        <div class="flot-chart" style="height: 252px">
          <div class="flot-chart-content" id="flot-spline-chart"></div>
        </div>
      </div>
    </div>
	</div>

	<div class="col-lg-4">
		<div class="panel panel-primary filled sharp text-center">
			<div class="panel-heading">
				Bandwidth Used
			</div>

			<div class="panel-body">
				<div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="68" data-barcolor="#fff" data-line-width="15" data-size="150" data-linecap="butt">
		        <div class="easy-pie-chart-value">68%</div>
		    </div>

		    {# <hr class="wide"> #}
		    <br><br>

		    <span data-sparkline="bar">
            2,5,6,3,7,4,2,5,4,2,6,3,2,4,3,4,5,6,3,2,5,4,2,3,4,2,6,4,3,7,4,6,3,2,3,4
        </span>

        {# <hr class="wide"> #}
        <br><br>

    		<div>
    			<i class="fa fa-fw fa-upload"></i>
        	This month: <b>193 GB</b>
    		</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
  <div class="col-lg-8">
    <div class="panel panel-success sharp">
      <div class="panel-heading">
        <div class="fa fa-fw fa-map-marker"></div>
        Sales Statistics
      </div>
      <div class="panel-body">
        <div id="usa-map" style="height: 373px"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-4">
    <div class="chat-panel panel panel-info raised gradient">
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i>
        Chat
        <div class="btn-group pull-right">
          <button type="button" class="btn btn-info btn-xs dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-chevron-down"></i>
          </button>
          <ul class="dropdown-menu slidedown">
            <li>
                <a href="#">
                    <i class="fa fa-refresh fa-fw"></i> Refresh
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-check-circle fa-fw"></i> Available
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-times fa-fw"></i> Busy
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-clock-o fa-fw"></i> Away
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <i class="fa fa-sign-out fa-fw"></i> Sign Out
                </a>
            </li>
          </ul>
        </div>
      </div>

      <div class="panel-body">
        <ul class="chat">
          <li class="left clearfix">
            <span class="chat-img pull-left">
                <img src="images/avatars/avatar6.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    <strong class="primary-font">Jerry Phillips</strong>
                    <small class="pull-right text-muted">
                        <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                    </small>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum, odit!
                </p>
            </div>
          </li>
          <li class="right clearfix">
            <span class="chat-img pull-right">
                <img src="images/avatars/avatar1.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    <small class=" text-muted">
                        <i class="fa fa-clock-o fa-fw"></i> 13 mins ago</small>
                    <strong class="pull-right primary-font">Joseph Walker</strong>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing.
                </p>
            </div>
          </li>
          <li class="left clearfix">
            <span class="chat-img pull-left">
                <img src="images/avatars/avatar5.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    <strong class="primary-font">Charles Schneider</strong>
                    <small class="pull-right text-muted">
                        <i class="fa fa-clock-o fa-fw"></i> 14 mins ago</small>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, veritatis delectus earum explicabo impedit consequuntur?
                </p>
            </div>
          </li>
          <li class="right clearfix">
            <span class="chat-img pull-right">
                <img src="images/avatars/avatar7.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
              <div class="header">
                  <small class=" text-muted">
                      <i class="fa fa-clock-o fa-fw"></i> 15 mins ago</small>
                  <strong class="pull-right primary-font">Julia Hill</strong>
              </div>
              <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga, dicta.
              </p>
            </div>
          </li>
        </ul>
      </div>
      <div class="panel-footer">
        <div class="input-group">
          <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
          <span class="input-group-btn">
            <button class="btn btn-info btn-sm" id="btn-chat">
                Send
            </button>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-warning separated">
      <div class="panel-heading">
        <i class="fa fa-fw fa-line-chart"></i>
        Disk Usage Analytics
      </div>
      <div class="panel-body">
        <div class="flot-chart" style="height: 293px">
          <div class="flot-chart-content" id="flot-line-chart-moving"></div>
        </div>
      </div>
    </div>
  </div>

	<div class="col-lg-6">
		<div class="panel panel-danger separated sharp">
			<div class="panel-heading">
        <i class="fa fa-fw fa-tags"></i>
        Support Tickets
      </div>

			<div class="panel-body">
				<table id="ticket-table" class="table">
					<thead>
						<tr>
							<th></th>
							<th>Issue</th>
							<th>Priority</th>
							<th>Progress</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>#1</td>
							<td><a href="#">Minor Bugs</a></td>
							<td><span class="label label-warning">Medium</span></td>
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
							<td>#2</td>
							<td><a href="#">Can't Download Sample Files</a></td>
							<td><span class="label label-danger">High</span></td>
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
							<td>#3</td>
							<td><a href="#">Connection Timeout</a></td>
							<td><span class="label label-warning">Medium</span></td>
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
							<td>#4</td>
							<td><a href="#">Can't Change My Password</a></td>
							<td><span class="label label-yellow">Low</span></td>
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
							<td>#5</td>
							<td><a href="#">Tab Malfunction</a></td>
							<td><span class="label label-danger">High</span></td>
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
{% endblock %}