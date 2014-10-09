{% extends '../layouts/layout-1.swig' %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
        	<div class="panel-heading">{{getRouteBySlug(routes, currentRouteSlug).name}}</div>
        	<div class="panel-body">
        		<ul>
        		    {% include 'main-menu-sub-items.swig' %}
        		</ul>
        	</div>
        </div>
    </div>
</div>
{% endblock %}