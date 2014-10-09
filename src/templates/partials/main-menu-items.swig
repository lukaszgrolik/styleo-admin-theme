{% set mainMenuItemsLevel = -1 %}

{% macro mainMenuItems(routes) %}
	{% set mainMenuItemsLevel = mainMenuItemsLevel + 1 %}

	{% for route in routes %}
		{% set currentClass  = '' %}
		{% set activeClass  = '' %}

		{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[0] and route.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[0].slug %}
			{% set currentClass = 'current' %}
		{% endif %}

		{% if currentClass and route.routes %}
			{% set activeClass = 'active' %}
		{% endif %}

		<li class="{{currentClass}} {{activeClass}}">
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

{# {% for route in routes %}
	<li class="{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[0] and route.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[0].slug %}current {% if route.routes %}active{% endif %}{% endif %}">
		<a href="{% if route.routes %}#{% else %}{{route.slug}}.html{% endif %}"><i class="{% if route.iconClass %}fa fa-fw {{route.iconClass}}{% endif %}"></i> {{route.name}}{% if route.routes %}<span class="fa arrow"></span>{% endif %}</a>

		{% if route.routes %}
			<ul class="nav nav-second-level">
				{% for route1 in route.routes %}
					<li class="{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[1] and route1.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[1].slug %}current {% if route1.routes %}active{% endif %}{% endif %}">
						<a href="{% if route1.routes %}#{% else %}{{route1.slug}}.html{% endif %}"><i class="{% if route1.iconClass %}fa fa-fw {{route1.iconClass}}{% endif %}"></i> {{route1.name}}{% if route1.routes %}<span class="fa arrow"></span>{% elseif route1.label %}<span class="{{route1.label.class}} pull-right">{{route1.label.text}}</span>{% endif %}</a>

						{% if route1.routes %}
							<ul class="nav nav-third-level">
								{% for route2 in route1.routes %}
									<li class="{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[2] and route2.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[2].slug %}current{% endif %}">
										<a href="{{route2.slug}}.html"><i class="{% if route2.iconClass %}fa fa-fw {{route2.iconClass}}{% endif %}"></i> {{route2.name}} {% if route2.label %}<span class="{{route2.label.class}} pull-right">{{route2.label.text}}</span>{% endif %}</a>
									</li>
								{% endfor %}
							</ul>
						{% endif %}
					</li>
				{% endfor %}
			</ul>
		{% endif %}
	</li>
{% endfor %} #}

{# {% for route in routes %}
	<li class="{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[0] and route.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[0].slug %}current {% if route.routes %}active{% endif %}{% endif %}">
		<a href="{% if route.routes %}#{% else %}{{route.slug}}.html{% endif %}"><i class="{% if route.iconClass %}fa fa-fw {{route.iconClass}}{% endif %}"></i> {{route.name}}{% if route.routes %}<span class="fa arrow"></span>{% endif %}</a>

		{% if route.routes %}
			<ul class="nav nav-second-level">
				{% for route1 in route.routes %}
					<li class="{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[1] and route1.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[1].slug %}current {% if route1.routes %}active{% endif %}{% endif %}">
						<a href="{% if route1.routes %}#{% else %}{{route1.slug}}.html{% endif %}"><i class="{% if route1.iconClass %}fa fa-fw {{route1.iconClass}}{% endif %}"></i> {{route1.name}}{% if route1.routes %}<span class="fa arrow"></span>{% elseif route1.label %}<span class="{{route1.label.class}} pull-right">{{route1.label.text}}</span>{% endif %}</a>

						{% if route1.routes %}
							<ul class="nav nav-third-level">
								{% for route2 in route1.routes %}
									<li class="{% if getBreadcrumbsRoutes(routes, currentRouteSlug)[2] and route2.slug == getBreadcrumbsRoutes(routes, currentRouteSlug)[2].slug %}current{% endif %}">
										<a href="{{route2.slug}}.html"><i class="{% if route2.iconClass %}fa fa-fw {{route2.iconClass}}{% endif %}"></i> {{route2.name}} {% if route2.label %}<span class="{{route2.label.class}} pull-right">{{route2.label.text}}</span>{% endif %}</a>
									</li>
								{% endfor %}
							</ul>
						{% endif %}
					</li>
				{% endfor %}
			</ul>
		{% endif %}
	</li>
{% endfor %} #}