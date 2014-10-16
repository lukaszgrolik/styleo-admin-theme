{% macro bcMenuItem(slug, text) %}
<li>
  <a href="{{slug}}.html">
    {% if slug == 'index' %}
      <i class="fa fa-fw fa-home"></i>
    {% endif %}
    <span class="link-text">{{text}}</span>
  </a>
</li>
{% endmacro %}

{% if currentRouteSlug != 'index' %}
  {% set indexRoute = getRouteBySlug(routes, 'index') %}
  {{ bcMenuItem(indexRoute.slug, indexRoute.name) }}
{% endif %}

{% for route in getBreadcrumbsRoutes(routes, currentRouteSlug) %}
  {{ bcMenuItem(route.slug, route.name) }}
{% endfor %}