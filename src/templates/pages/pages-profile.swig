{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-profile' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}

{% endblock %}

{% block content2 %}
<div class="row">
	<div class="col-lg-4">
		<img src="images/avatar1.jpg" alt="Divyia Austin">
	</div>

	<div class="col-lg-8">
		<div class="tabs-container">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">Information</a></li>
                <li><a href="#profile" data-toggle="tab">Friends</a></li>
                <li><a href="#profile" data-toggle="tab">Pictures</a></li>
                <li><a href="#messages" data-toggle="tab">Messages</a></li>
                <li><a href="#settings" data-toggle="tab">Settings</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <p class="lead">Basic Tabs 1</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
                <div class="tab-pane" id="profile">
                    <p class="lead">Basic Tabs 2</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
                <div class="tab-pane" id="messages">
                    <p class="lead">Basic Tabs 3</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
                <div class="tab-pane" id="settings">
                    <p class="lead">Basic Tabs 4</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
            </div>
        </div>
	</div>
</div>
{% endblock %}

