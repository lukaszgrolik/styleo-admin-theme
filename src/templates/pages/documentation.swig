{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'documentation' %}

{% block content2 %}
<div class="row">
	<div class="col-lg-12">
		<div class="well">
			{# {% markdown %}{% include '../../../README.md' %}{% endmarkdown %} #}
			{% include '../../../README.html' %}
		</div>
	</div>
</div>
{% endblock %}