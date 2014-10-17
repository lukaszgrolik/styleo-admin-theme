$(function() {

  Morris.Area({
    element: 'morris-area-chart',
    data: [{
      period: '2012 Q1',
      iphone: 2666,
      ipad: null,
      itouch: 2647,
    }, {
      period: '2012 Q2',
      iphone: 2778,
      ipad: 2294,
      itouch: 2441,
    }, {
      period: '2012 Q3',
      iphone: 4912,
      ipad: 1969,
      itouch: 2501,
    }, {
      period: '2012 Q4',
      iphone: 3767,
      ipad: 3597,
      itouch: 5689,
    }, {
      period: '2013 Q1',
      iphone: 6810,
      ipad: 1914,
      itouch: 2293,
    }, {
      period: '2013 Q2',
      iphone: 5670,
      ipad: 4293,
      itouch: 1881,
    }, {
      period: '2013 Q3',
      iphone: 4820,
      ipad: 3795,
      itouch: 1588,
    }, {
      period: '2013 Q4',
      iphone: 15073,
      ipad: 5967,
      itouch: 5175,
    }, {
      period: '2014 Q1',
      iphone: 10687,
      ipad: 4460,
      itouch: 2028,
    }, {
      period: '2014 Q2',
      iphone: 8432,
      ipad: 5713,
      itouch: 1791,
    }],
    xkey: 'period',
    ykeys: ['iphone', 'ipad', 'itouch'],
    labels: ['iPhone', 'iPad', 'iPod Touch'],
    pointSize: 5,
    hideHover: 'auto',
    resize: true,
    lineColors: ['#3498db', '#2ecc71', '#1abc9c'],
  });

  Morris.Line({
    element: 'morris-line-chart',
    data: [{
      period: '2012 Q1',
      iphone: 2666,
      ipad: null,
      itouch: 2647,
    }, {
      period: '2012 Q2',
      iphone: 2778,
      ipad: 2294,
      itouch: 2441,
    }, {
      period: '2012 Q3',
      iphone: 4912,
      ipad: 1969,
      itouch: 2501,
    }, {
      period: '2012 Q4',
      iphone: 3767,
      ipad: 3597,
      itouch: 5689,
    }, {
      period: '2013 Q1',
      iphone: 6810,
      ipad: 1914,
      itouch: 2293,
    }, {
      period: '2013 Q2',
      iphone: 5670,
      ipad: 4293,
      itouch: 1881,
    }, {
      period: '2013 Q3',
      iphone: 4820,
      ipad: 3795,
      itouch: 1588,
    }, {
      period: '2013 Q4',
      iphone: 15073,
      ipad: 5967,
      itouch: 5175,
    }, {
      period: '2014 Q1',
      iphone: 10687,
      ipad: 4460,
      itouch: 2028,
    }, {
      period: '2014 Q2',
      iphone: 8432,
      ipad: 5713,
      itouch: 1791,
    }],
    xkey: 'period',
    ykeys: ['iphone', 'ipad', 'itouch'],
    labels: ['iPhone', 'iPad', 'iPod Touch'],
    pointSize: 2,
    hideHover: 'auto',
    resize: true,
    lineColors: ['#bdc3c7', '#2ecc71', '#1abc9c'],
    pointSize: 5
  });

  Morris.Donut({
    element: 'morris-donut-chart',
    data: [{
      label: "Download Sales",
      value: 12
    }, {
      label: "In-Store Sales",
      value: 30
    }, {
      label: "Mail-Order Sales",
      value: 20
    }],
    resize: true,
    colors: ['#e74c3c', '#2ecc71', '#3498db']
  });

  Morris.Bar({
    element: 'morris-bar-chart',
    data: [{
      y: '2008',
      a: 100,
      b: 90
    }, {
      y: '2009',
      a: 75,
      b: 65
    }, {
      y: '2010',
      a: 50,
      b: 40
    }, {
      y: '2011',
      a: 75,
      b: 65
    }, {
      y: '2012',
      a: 50,
      b: 40
    }, {
      y: '2013',
      a: 75,
      b: 65
    }, {
      y: '2014',
      a: 100,
      b: 90
    }],
    xkey: 'y',
    ykeys: ['a', 'b'],
    labels: ['Series A', 'Series B'],
    hideHover: 'auto',
    resize: true,
    barColors: ['#e67e22', '#e74c3c']
  });

});
