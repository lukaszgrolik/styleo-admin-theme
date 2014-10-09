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
{# {% for route in routes %}
	{% if currentRouteSlug == route.slug %}
		{{ bcMenuItem(route.slug, route.name) }}
	{% endif %}

	{% for route1 in route.routes %}
		{% if currentRouteSlug == route.slug + '-' + route1.slug %}
			{{ bcMenuItem(route.slug, route.name) }}
			{{ bcMenuItem(route.slug + '-' + route1.slug, route1.name) }}
		{% endif %}

		{% for route2 in route1.routes %}
			{% if currentRouteSlug == route.slug + '-' + route1.slug + '-' + route2.slug %}
				{{ bcMenuItem(route.slug, route.name) }}
				{{ bcMenuItem(route.slug + '-' + route1.slug, route1.name) }}
				{{ bcMenuItem(route.slug + '-' + route1.slug + '-' + route2.slug, route2.name) }}
			{% endif %}
		{% endfor %}
	{% endfor %}
{% endfor %} #}

{% for route in getBreadcrumbsRoutes(routes, currentRouteSlug) %}
	{{ bcMenuItem(route.slug, route.name) }}
{% endfor %}

{# <li>
	<a href="#">
		<i class="fa fa-fw fa-home"></i> Dashboard
	</a>
</li>

{% for page in mainMenu %}

	{% if page.slug == currentPageSlug %}
		<li>
			<a href="#">{{page.title}}</a>
		</li>
	{% else %}
		{% if page.items %}
			{% for subPage in page.items %}
				{% if subPage.slug == currentPageSlug %}
					<li>
						<a href="#">{{page.title}}</a>
					</li>
					<li>
						<a href="#">{{subPage.title}}</a>
					</li>
				{% else %}
					{% for subSubPage in subPage.items %}
						{% if subSubPage.slug == currentPageSlug %}
							<li>
								<a href="#">{{page.title}}</a>
							</li>
							<li>
								<a href="#">{{subPage.title}}</a>
							</li>
							<li>
								<a href="#">{{subSubPage.title}}</a>
							</li>
						{% endif %}
					{% endfor %}
				{% endif %}
			{% endfor %}
		{% endif %}
	{% endif %}

{% endfor %} #}