{% for route in routes %}
  {% if route.routes %}
    {% if route.slug == currentRouteSlug %}
      {% for route1 in route.routes %}
        <li><a href="{{route1.slug}}.html">{{route1.name}}</a></li>
      {% endfor %}
    {% else %}
      {% for route1 in route.routes %}
        {% if route1.slug == currentRouteSlug %}
          {% for route2 in route1.routes %}
            <li><a href="{{route2.slug}}.html">{{route2.name}}</a></li>
          {% endfor %}
        {% endif %}
      {% endfor %}
    {% endif %}
  {% endif %}
{% endfor %}