var DashboardPage = {

  init: function() {
    CustomEasyPieCharts.init();

    DashboardPage.initSparkline();
    DashboardPage.initFlotSplineChart();
    DashboardPage.initFlotMovingLineChart();
    DashboardPage.initVectorMap();
  },

  initSparkline: function() {
    var sparklineBar = $('[data-sparkline="bar"]');

    $.each(sparklineBar, function() {
        $(this).sparkline('html', {
            type: 'bar',
            height: '50px',
            barWidth: '5px',
            barColor: '#fff'
        });
    });
  },

  initFlotSplineChart: function() {
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
  },

  initFlotMovingLineChart: function() {
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
  },

  initVectorMap: function() {
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
        {
          latLng: [40.6643 , -73.9385],
          name: 'New York - 2,532'
        },
        {
          latLng: [34.0194, -118.4108],
          name: 'Los Angeles - 1,932'
        },
        {
          latLng: [41.8376, -87.6818],
          name: 'Chicago - 492'
        },
        {
          latLng: [29.7805, -95.3863],
          name: 'Houston - 1,142'
        },
        {
          latLng: [40.0094, -75.1333],
          name: 'Philadelphia - 1,311'
        },
        {
          latLng: [33.5722, -112.0880],
          name: 'Phoenix - 2,192'
        },
        {
          latLng: [29.4724, -98.5251],
          name: 'San Antonio - 2,192'
        },
        {
          latLng: [32.8153, -117.1350],
          name: 'San Diego - 2,818'
        },
        {
          latLng: [32.7757, -96.7967],
          name: 'Dallas - 158'
        },
        {
          latLng: [37.2969, -121.8193],
          name: 'San Jose - 1,368'
        },
        {
          latLng: [30.3072, -97.7560],
          name: 'Austin - 651'
        },
        {
          latLng: [39.7767, -86.1459],
          name: 'Indianapolis - 835'
        },
        {
          latLng: [30.3370, -81.6613],
          name: 'Jacksonville - 966'
        },
        {
          latLng: [37.7751, -122.4193],
          name: 'San Francisco - 176'
        },
        {
          latLng: [39.9848, -82.9850],
          name: 'Columbus - 623'
        },
        {
          latLng: [35.2087, -80.8307],
          name: 'Charlotte - 198'
        },
        {
          latLng: [32.7795, -97.3463],
          name: 'Fort Worth - 283'
        },
        {
          latLng: [42.3830, -83.1022],
          name: 'Detroit - 1,154'
        },
        {
          latLng: [31.8484, -106.4270],
          name: 'El Paso - 1,918'
        },
        {
          latLng: [35.1035, -89.9785],
          name: 'Memphis - 1,899'
        },
      ]
    });
  }

}