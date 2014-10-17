{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-calendar' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/fullcalendar/dist/fullcalendar.min.css" />
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

<script>
$(function() {
  $('.calendar-draggable-event').each(function() {
    var eventObj = {
      title: $.trim($(this).text())
    };

    $(this).data('eventObj', eventObj);
    $(this).draggable({
      zIndex: 999,
      revert: true,
      revertDuration: 0
    });
  });

  var date = new Date();
  var d = date.getDate();
  var m = date.getMonth();
  var y = date.getFullYear();

  $('.calendar').fullCalendar({
    header: {
      right: 'month,agendaWeek,agendaDay prev,next',
      left: 'title'
    },
    editable: true,
    buttonText: {
      month: 'Month',
      week: 'Week',
      day: 'Day',
      today: 'Today'
    },
    droppable: true,
    drop: function (date, allDay) {
      var eventObj = $(this).data('eventObj');
      var eventObjCopy = $.extend({}, eventObj);

      eventObjCopy.start = date;
      eventObjCopy.allDay = allDay;

      $('.calendar').fullCalendar('renderEvent', eventObjCopy, true);

      if ($('.calendar-remove-after-drop-option').is(':checked')) {
        $(this).remove();
      }
    },
    events: [
      {
        title: 'Meeting',
        start: new Date(y, m, d, 10, 30),
        allDay: false,
      },
      {
        title: 'Long Event',
        start: new Date(y, m, d - 6),
        end: new Date(y, m, d - 1),
      },
      {
        title: 'All Day Event',
        start: new Date(y, m, 8),
        textColor: '#5db2ff',
      },
      {
        title: 'Awesome Plan',
        start: new Date(y, m, d - 17, 4, 30),
        end: new Date(y, m, d - 14, 14, 0),
        allDay: false,
      },
      {
        title: 'Click for Google',
        start: new Date(y, m, 29),
        end: new Date(y, m, 30),
        url: 'http://google.com/'
      },
      {
        title: 'Lunch',
        start: new Date(y, m, d - 1, 12, 30),
        end: new Date(y, m, d - 1, 13, 0),
        allDay: false,
      },
      {
        title: 'Birthday Party',
        start: new Date(y, m, d + 8, 17, 30),
        end: new Date(y, m, d + 8, 23, 30),
        allDay: false,
      },
      {
        id: 123,
        title: 'Repeating Event',
        start: new Date(y, m, d + 2, 16, 0),
        allDay: false,
      },
      {
        id: 123,
        title: 'Repeating Event',
        start: new Date(y, m, d - 5, 16, 0),
        allDay: false,
      }
    ]
  });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-3">
    <div class="panel panel-success sharp raised">
      <div class="panel-heading">
        <i class="fa fa-fw fa-plus"></i>
        Add Events By Dragging
      </div>

      <div class="panel-body">
        <div class="calendar-draggable-events-container">
          <div class="calendar-draggable-event">Dinner with Amy</div>
          <div class="calendar-draggable-event">Skype Meeting</div>
          <div class="calendar-draggable-event">Free Time</div>
          <div class="calendar-draggable-event">University Lecture</div>
          <div class="calendar-draggable-event">John's Birthday</div>
          <p>
            <label>
              <input type="checkbox" class="calendar-remove-after-drop-option" checked="checked">
              <span class="text">Remove After Drop</span>
            </label>
          </p>
        </div>
      </div>
    </div>
  </div>

  <div class="col-lg-9">
    <div class="panel panel-info sharp raised">
      <div class="panel-heading">
        <i class="fa fa-fw fa-calendar"></i>
        Events and Schedules
      </div>

      <div class="panel-body">
        <div class="calendar"></div>
      </div>
    </div>
  </div>
</div>
{% endblock %}

