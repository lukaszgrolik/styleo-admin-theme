{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-editors-simple-wysiwyg' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/summernote/dist/summernote.css">
<link rel="stylesheet" href="bower_components/bootstrap3-wysihtml5-bower/dist/bootstrap3-wysihtml5.min.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/summernote/dist/summernote.js"></script>
<script src="bower_components/bootstrap3-wysihtml5-bower/dist/bootstrap3-wysihtml5.all.min.js"></script>

<script>
$(function() {
	// init Summernote

	$('#summernote').summernote({
		height: 200
	});

	// init Bootstrap wysihtml5

	$('#bootstrap-wysihtml5').wysihtml5({
		toolbar: {
		    fa: true
		}
	});
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-warning separated">
			<div class="panel-heading">
				Summernote
			</div>

			<div class="panel-body">
				<div id="summernote"></div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-danger separated">
			<div class="panel-heading">
				Bootstrap wysihtml5
			</div>

			<div class="panel-body">
				<textarea id="bootstrap-wysihtml5" style="width: 100%; height: 200px;">></textarea>
			</div>
		</div>
	</div>
</div>
{% endblock %}