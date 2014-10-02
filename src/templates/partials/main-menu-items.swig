{% for route in routes %}
	<li class="{% if getBreadcrumbsRoutes(currentRouteSlug)[0] and route.slug == getBreadcrumbsRoutes(currentRouteSlug)[0].slug %}current {% if route.routes %}active{% endif %}{% endif %}">
		<a href="{% if route.routes %}#{% else %}{{route.slug}}.html{% endif %}"><i class="{% if route.iconClass %}fa fa-fw {{route.iconClass}}{% endif %}"></i> {{route.name}}{% if route.routes %}<span class="fa arrow"></span>{% endif %}</a>

		{% if route.routes %}
			<ul class="nav nav-second-level">
				{% for route1 in route.routes %}
					<li class="{% if getBreadcrumbsRoutes(currentRouteSlug)[1] and route1.slug == getBreadcrumbsRoutes(currentRouteSlug)[1].slug %}current {% if route1.routes %}active{% endif %}{% endif %}">
						<a href="{% if route1.routes %}#{% else %}{{route1.slug}}.html{% endif %}">{{route1.name}}{% if route1.routes %}<span class="fa arrow"></span>{% endif %}</a>

						{% if route1.routes %}
							<ul class="nav nav-third-level">
								{% for route2 in route1.routes %}
									<li class="{% if getBreadcrumbsRoutes(currentRouteSlug)[2] and route2.slug == getBreadcrumbsRoutes(currentRouteSlug)[2].slug %}current{% endif %}">
										<a href="{{route2.slug}}.html">{{route2.name}}</a>
									</li>
								{% endfor %}
							</ul>
						{% endif %}
					</li>
				{% endfor %}
			</ul>
		{% endif %}
	</li>
{% endfor %}

{# {% for item in mainMenu %}
	<li class="{% if currentPageSlug == item.slug %}current top-current{% endif %}">
		<a href="{% if !item.items %}{{item.slug}}{% else %}#{% endif %}.html"><i class="{% if item.iconClass %}fa fa-fw {{item.iconClass}}{% endif %}"></i> {{item.title}}{% if item.items %}<span class="fa arrow">{% endif %}</a>

		{% if item.items %}
			<ul class="nav nav-second-level">
				{% for subItem in item.items %}
					<li class="{% if currentPageSlug == subItem.slug %}current sub-current{% endif %}">
						{% if !subItem.items %}
							<a href="{{item.slug}}-{{subItem.slug}}.html">{{subItem.title}}</a>
						{% else %}
							<a href="#">Icons <span class="fa arrow"></span></a>

							<ul class="nav nav-third-level">
								{% for subSubItem in subItem.items %}
									<li class="{% if currentPageSlug == subSubItem.slug %}current sub-sub-current{% endif %}">
										<a href="{{item.slug}}-{{subItem.slug}}-{{subSubItem.slug}}.html">{{subSubItem.title}}</a>
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