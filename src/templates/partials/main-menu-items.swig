{% set mainMenuItemsLevel = -1 %}

{% macro mainMenuItems(routes) %}
  {% set mainMenuItemsLevel = mainMenuItemsLevel + 1 %}

  {% for route in routes %}
    {% set currentClass  = '' %}
    {% set activeClass  = '' %}
    {% set noIconClass  = '' %}

    {% if getBreadcrumbsRoutes(routes, currentRouteSlug)[0] and route.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[0].slug %}
      {% set currentClass = 'current' %}
    {% endif %}

    {% if currentClass and route.routes %}
      {% set activeClass = 'active' %}
    {% endif %}

    {% if mainMenuItemsLevel == 2 and !route.iconClass %}
      {% set noIconClass = 'no-icon' %}
    {% endif %}

    <li class="{{currentClass}} {{activeClass}} {{noIconClass}}">
      {% set link = '#' %}

      {% if !route.routes %}
        {% set link = route.slug + '.html' %}
      {% endif %}

      <a href="{{link}}">
        {% if route.iconClass %}
          <i class="fa fa-fw {{route.iconClass}}"></i>
        {% endif %}
        {{route.name}}
        {% if route.label %}
          <span class="{{route.label.class}} pull-right">{{route.label.text}}</span>
        {% endif %}
        {% if route.routes %}
          <span class="fa arrow"></span>
        {% endif %}
      </a>

      {% if route.routes %}
        {% set navLevelClass = '' %}

        {% if mainMenuItemsLevel == 0 %}
          {% set navLevelClass = 'nav-second-level' %}
        {% elseif mainMenuItemsLevel == 1 %}
          {% set navLevelClass = 'nav-third-level' %}
        {% endif %}

        <ul class="nav {{navLevelClass}}">
          {{mainMenuItems(route.routes)}}
        </ul>
      {% endif %}
    </li>
  {% endfor %}
{% endmacro %}

{{mainMenuItems(routes)}}