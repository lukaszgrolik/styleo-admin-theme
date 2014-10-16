{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'tables-responsive' %}

{% block headEnd %}
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/stacktable/stacktable.js"></script>

<script>
$(function() {
  $('.table-responsive-stacktable').stacktable();
})
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info sharp">
      <div class="panel-heading">
        Responsive Table with Horizontal Scrollbar
      </div>
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-hover">
            {% include '../partials/table-rows-1.swig' %}
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info sharp">
      <div class="panel-heading">
        Responsive Table with Flipped Axis
      </div>
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-hover table-responsive-flipped-axis">
            {% include '../partials/table-rows-1.swig' %}
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info sharp">
      <div class="panel-heading">
        Responsive Table with <strong>StackTable</strong> Plugin
      </div>
      <div class="panel-body">
        <table class="table table-hover table-responsive-stacktable">
          {% include '../partials/table-rows-1.swig' %}
        </table>
      </div>
    </div>
  </div>
</div>
{% endblock %}