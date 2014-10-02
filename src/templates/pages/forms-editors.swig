{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-editors' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/summernote/dist/summernote.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/ckeditor/ckeditor.js"></script>
<script src="bower_components/ckeditor/adapters/jquery.js"></script>

<script src="bower_components/summernote/dist/summernote.js"></script>

<script>
$(function() {
    $('textarea.ckeditor').ckeditor();

	CKEDITOR.disableAutoInline = true;

	$('.inline-editable').each(function(){
		CKEDITOR.inline($(this)[0]);
	});

	//

	$('#summernote').summernote();
});
</script>
{% endblock %}

{% block content2 %}
<form class="form-horizontal group-border-dashed" action="#"  novalidate>
	<div class="form-group">
		<textarea class="ckeditor form-control"></textarea>
	</div>
	<div class="form-group">
		<div class="col-sm-12">
		  <button type="submit" class="btn btn-primary">Submit</button>
		  <button class="btn btn-default">Cancel</button>
		</div>
	</div>
</form>

<div id="summernote"></div>
{% endblock %}