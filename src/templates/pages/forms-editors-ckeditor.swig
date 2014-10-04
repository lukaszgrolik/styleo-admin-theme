{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-editors-ckeditor' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}
<script src="bower_components/ckeditor/ckeditor.js"></script>
<script src="bower_components/ckeditor/adapters/jquery.js"></script>

<script>
$(function() {
	// init CKEditor

    $('#ckeditor').ckeditor();

	CKEDITOR.disableAutoInline = true;

	$('#ckeditor-inline-editable').each(function(){
		CKEDITOR.inline($(this)[0]);
	});
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-primary separated">
			<div class="panel-heading">
				CKEditor
			</div>

			<div class="panel-body">
				<textarea id="ckeditor" class="form-control"></textarea>
			</div>
		</div>
	</div>

	<div class="col-lg-4">
		<div class="panel panel-primary separated">
			<div class="panel-heading">
				CKEditor Inline
			</div>

			<div class="panel-body">
				<div id="ckeditor-inline-editable" contenteditable="true" >
					<h1>Heading Text 1</h1>
					<h2>Heading Text 2</h2>
					<h3>Heading Text 3</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur eaque, eum deleniti voluptate magni fugit, commodi magnam atque! Iusto illo illum nam numquam labore consectetur commodi nulla officia cupiditate enim!</p>
				</div>
			</div>
		</div>
	</div>
</div>
{% endblock %}