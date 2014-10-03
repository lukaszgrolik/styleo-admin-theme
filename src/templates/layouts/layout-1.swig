{% extends '../layouts/main-layout.swig' %}

{# {% block title %}Login page{% endblock %} #}
{# {% block title %}{% endblock %} #}

{% block content %}
<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="navbar-header-logo-area clearfix">
                <a class="navbar-brand" href="index.html">Styleo Admin 1.0</a>
            </div>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-left main-breadcrumbs">
            {% include '../partials/breadcrumbs-menu-items.swig' %}
        </ul>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope fa-fw"></i>
                    <i class="badge badge-danger badge-number">3</i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li class="message-item">
                        <a href="#" class="message-link clearfix">
                            <div class="message-avatar">
                                <img src="images/avatar6.jpg" alt="Divyia Austin">
                            </div>
                            <div class="message">
                                <div class="message-sender">
                                    Divyia Austin
                                </div>
                                <div class="message-time">
                                    2 minutes ago
                                </div>
                                <div class="message-body">
                                    Here's the recipe for apple pie
                                    to identify the sending application when the senders image is shown for the main icon
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li class="message-item">
                        <a href="#" class="message-link clearfix">
                            <div class="message-avatar">
                                <img src="images/avatar6.jpg" alt="Divyia Austin">
                            </div>
                            <div class="message">
                                <div class="message-sender">
                                    Divyia Austin
                                </div>
                                <div class="message-time">
                                    2 minutes ago
                                </div>
                                <div class="message-body">
                                    Here's the recipe for apple pie
                                    to identify the sending application when the senders image is shown for the main icon
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li class="message-item">
                        <a href="#" class="message-link clearfix">
                            <div class="message-avatar">
                                <img src="images/avatar6.jpg" alt="Divyia Austin">
                            </div>
                            <div class="message">
                                <div class="message-sender">
                                    Divyia Austin
                                </div>
                                <div class="message-time">
                                    2 minutes ago
                                </div>
                                <div class="message-body">
                                    Here's the recipe for apple pie
                                    to identify the sending application when the senders image is shown for the main icon
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Read All Messages</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-tasks fa-fw"></i>
                    <i class="badge badge-danger badge-number">3</i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 1</strong>
                                    <span class="pull-right text-muted">40% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                        <span class="sr-only">40% Complete (success)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 2</strong>
                                    <span class="pull-right text-muted">20% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        <span class="sr-only">20% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 3</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (warning)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 4</strong>
                                    <span class="pull-right text-muted">80% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        <span class="sr-only">80% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Tasks</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i>
                    <i class="badge badge-danger badge-number">3</i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                <span class="pull-right text-muted small">12 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> Message Sent
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> New Task
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle nav-profile-photo-link" data-toggle="dropdown" href="#">
                    {# <i class="fa fa-user fa-fw"></i> #}
                    <img src="images/avatar6.jpg" class="nav-profile-photo" alt="">
                    <span>Jane Smith</span>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="profile.html"><i class="fa fa-user fa-fw"></i> My Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    {% include '../partials/main-menu-items.swig' %}


                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        {# <h1 class="page-header">{% block title %}{% endblock %}</h1> #}
        {# <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">{% block title %}{% endblock %}</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div> #}
        <!-- /.row -->
        {% block content2 %}{% endblock %}
    </div>
    <!-- /#page-wrapper -->

</div>
    <!-- /#wrapper -->
{% endblock %}
