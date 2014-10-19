{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'documentation' %}

{% block content2 %}
<div class="row">
  <div class="col-lg-8 col-lg-offset-2">
    <div class="well">
      {% include '../../../web/docs/README.html' %}
    </div>
  </div>
</div>
{% endblock %}