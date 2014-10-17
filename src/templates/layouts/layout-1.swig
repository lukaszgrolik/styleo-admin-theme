{% extends '../layouts/main-layout.swig' %}

{% block content %}
<div id="wrapper">
  <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="navbar-header-logo-area clearfix">
        <a class="navbar-brand" href="index.html">
          <span class="fa fa-fw fa-rocket"></span>
          Styleo Admin
        </a>
      </div>
    </div>

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
                <img class="img-responsive" src="images/avatars/avatar7.jpg" alt="Jennifer Howard">
              </div>
              <div class="message">
                <div class="message-sender">
                  Jennifer Howard
                </div>
                <div class="message-time">
                  2 minutes ago
                </div>
                <div class="message-body">
                  Hey! How are you?
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="message-item">
            <a href="#" class="message-link clearfix">
              <div class="message-avatar">
                <img class="img-responsive" src="images/avatars/avatar5.jpg" alt="Michael Hall">
              </div>
              <div class="message">
                <div class="message-sender">
                  Michael Hall
                </div>
                <div class="message-time">
                  1 hour ago
                </div>
                <div class="message-body">
                  Hey dude, cool theme!
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="message-item">
            <a href="#" class="message-link clearfix">
              <div class="message-avatar">
                <img class="img-responsive" src="images/avatars/avatar3.jpg" alt="Sandra Rogers">
              </div>
              <div class="message">
                <div class="message-sender">
                  Sandra Rogers
                </div>
                <div class="message-time">
                  14 Oct.
                </div>
                <div class="message-body">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero fuga ullam aspernatur...
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
      </li>

      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          <i class="fa fa-warning fa-fw"></i>
          <i class="badge badge-danger badge-number">4</i>
        </a>
        <ul class="dropdown-menu dropdown-messages">
          <li class="message-item">
            <a href="#" class="message-link clearfix">
              <div class="message-avatar">
                <div class="btn btn-primary btn-circle"><i class="fa fa-fw fa-phone"></i></div>
              </div>
              <div class="message">
                <div class="message-sender">
                  Skype meeting with Roy
                </div>
                <div class="message-time">
                  11:00 am
                </div>
                <div class="message-body">
                  office
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="message-item">
            <a href="#" class="message-link clearfix">
              <div class="message-avatar">
                <div class="btn btn-danger btn-circle"><i class="fa fa-fw fa-check"></i></div>
              </div>
              <div class="message">
                <div class="message-sender">
                  Dinner break
                </div>
                <div class="message-time">
                  02:00 pm - 02:45 pm
                </div>
                <div class="message-body">
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="message-item">
            <a href="#" class="message-link clearfix">
              <div class="message-avatar">
                <div class="btn btn-warning btn-circle"><i class="fa fa-fw fa-gift"></i></div>
              </div>
              <div class="message">
                <div class="message-sender">
                  Amy's birthday party
                </div>
                <div class="message-time">
                  08:00 pm
                </div>
                <div class="message-body">
                  at home
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="message-item">
            <a href="#" class="message-link clearfix">
              <div class="message-avatar">
                <div class="btn btn-success btn-circle"><i class="fa fa-fw fa-glass"></i></div>
              </div>
              <div class="message">
                <div class="message-sender">
                  Dinner with friends
                </div>
                <div class="message-time">
                  Tomorrow 13:30 pm
                </div>
                <div class="message-body">
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li>
            <a class="text-center" href="#">
              <strong>See All Plans</strong>
              <i class="fa fa-angle-right"></i>
            </a>
          </li>
        </ul>
      </li>

      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          <i class="fa fa-tasks fa-fw"></i>
          <i class="badge badge-danger badge-number">3</i>
        </a>
        <ul class="dropdown-menu dropdown-tasks">
          <li class="task-item">
            <a href="#" class="task-link">
              <div class="task-header">
                <strong class="task-title">Account Updating</strong>
                <span class="task-value pull-right text-muted">70%</span>
              </div>

              <div class="progress sharp progress-sm">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                  <span class="sr-only">40%</span>
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="task-item">
            <a href="#" class="task-link">
              <div class="task-header">
                <strong class="task-title">Page Configuration</strong>
                <span class="task-value pull-right text-muted">40%</span>
              </div>
              <div class="progress sharp progress-sm">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                  <span class="sr-only">40%</span>
                </div>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="task-item">
            <a href="#" class="task-link">
              <div class="task-header">
                <strong class="task-title">Disk Backup</strong>
                <span class="task-value pull-right text-muted">80%</span>
              </div>
              <div class="progress sharp progress-sm">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                  <span class="sr-only">80%</span>
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
      </li>

      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          <i class="fa fa-bell fa-fw"></i>
          <i class="badge badge-danger badge-number">5</i>
        </a>
        <ul class="dropdown-menu dropdown-alerts">
          <li class="alert-item">
            <a href="#" class="alert-link">
              <div>
                <i class="fa fa-comment fa-fw"></i> New Comment
                <span class="pull-right text-muted">4 minutes ago</span>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="alert-item">
            <a href="#" class="alert-link">
              <div>
                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                <span class="pull-right text-muted">12 minutes ago</span>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="alert-item">
            <a href="#" class="alert-link">
              <div>
                <i class="fa fa-envelope fa-fw"></i> Message Sent
                <span class="pull-right text-muted">4 minutes ago</span>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="alert-item">
            <a href="#" class="alert-link">
              <div>
                <i class="fa fa-tasks fa-fw"></i> New Task
                <span class="pull-right text-muted">4 minutes ago</span>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li class="alert-item">
            <a href="#" class="alert-link">
              <div>
                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                <span class="pull-right text-muted">4 minutes ago</span>
              </div>
            </a>
          </li>
          <li class="divider"></li>
          <li>
            <a class="text-center" href="#">
              <strong>See All Notifications</strong>
              <i class="fa fa-angle-right"></i>
            </a>
          </li>
        </ul>
      </li>

      <li class="dropdown">
        <a class="dropdown-toggle nav-profile-photo-link" data-toggle="dropdown" href="#">
          <img src="images/avatars/avatar8.jpg" class="nav-profile-photo" alt="">
          <span>Ryan Parker</span>
          <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="pages-profile.html"><i class="fa fa-user fa-fw"></i> My Profile</a>
          </li>
          <li><a href="pages-profile.html"><i class="fa fa-gear fa-fw"></i> Settings</a>
          </li>
          <li class="divider"></li>
          <li><a href="pages-login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </li>
        </ul>
      </li>
    </ul>

    <div class="navbar-default sidebar" role="navigation">
      <div class="sidebar-nav navbar-collapse scroll-container">
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
          </li>
          {% include '../partials/main-menu-items.swig' %}
        </ul>
      </div>
    </div>
  </nav>

  <div id="page-wrapper">
    {% block content2 %}{% endblock %}
  </div>
</div>
{% endblock %}
