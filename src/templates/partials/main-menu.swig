{% for item in mainMenu %}
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
{% endfor %}