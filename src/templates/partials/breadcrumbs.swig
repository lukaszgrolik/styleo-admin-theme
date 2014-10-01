<li>
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

{% endfor %}