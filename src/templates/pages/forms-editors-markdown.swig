{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-editors-markdown' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/bootstrap-markdown/css/bootstrap-markdown.min.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/to-markdown/src/to-markdown.js"></script>
<script src="bower_components/markdown/lib/markdown.js"></script>
<script src="bower_components/bootstrap-markdown/js/bootstrap-markdown.js"></script>

<script>
$(function() {
	// init Bootstrap Editor

	$("#bootstrap-markdown").markdown({
		autofocus: false,
		savable: false,
		iconlibrary: 'fa'
	});
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-violet separated">
			<div class="panel-heading">
				Bootstrap Markdown
			</div>

			<div class="panel-body">
				<textarea id="bootstrap-markdown" rows="10"></textarea>
			</div>
		</div>
	</div>
</div>
{% endblock %}