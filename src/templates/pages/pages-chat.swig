{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-chat' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}

{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-8 col-lg-offset-2">
    <div class="chat-panel panel panel-warning raised gradient">
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i>
        Chat
        <div class="btn-group pull-right">
          <button type="button" class="btn btn-warning btn-xs dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-chevron-down"></i>
          </button>
          <ul class="dropdown-menu slidedown">
            <li>
                <a href="#">
                    <i class="fa fa-refresh fa-fw"></i> Refresh
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-check-circle fa-fw"></i> Available
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-times fa-fw"></i> Busy
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-clock-o fa-fw"></i> Away
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="#">
                    <i class="fa fa-sign-out fa-fw"></i> Sign Out
                </a>
            </li>
          </ul>
        </div>
      </div>

      <div class="panel-body">
        <ul class="chat">
          <li class="left clearfix">
            <span class="chat-img pull-left">
                <img src="images/avatars/avatar6.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    <strong class="primary-font">Jerry Phillips</strong>
                    <small class="pull-right text-muted">
                        <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                    </small>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum vitae modi nobis non voluptatum dolores!
                </p>
            </div>
          </li>
          <li class="right clearfix">
            <span class="chat-img pull-right">
                <img src="images/avatars/avatar1.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    <small class=" text-muted">
                        <i class="fa fa-clock-o fa-fw"></i> 13 mins ago</small>
                    <strong class="pull-right primary-font">Joseph Walker</strong>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque debitis, perferendis dolorem veritatis, libero corrupti.
                </p>
            </div>
          </li>
          <li class="left clearfix">
            <span class="chat-img pull-left">
                <img src="images/avatars/avatar5.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
                <div class="header">
                    <strong class="primary-font">Charles Schneider</strong>
                    <small class="pull-right text-muted">
                        <i class="fa fa-clock-o fa-fw"></i> 14 mins ago</small>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi temporibus fuga, corporis sed facere nam vero modi alias beatae praesentium optio neque dolorum sunt nemo est, rem impedit ex laudantium.
                </p>
            </div>
          </li>
          <li class="right clearfix">
            <span class="chat-img pull-right">
                <img src="images/avatars/avatar7.jpg" alt="User Avatar" class="img-circle" />
            </span>
            <div class="chat-body clearfix">
              <div class="header">
                  <small class=" text-muted">
                      <i class="fa fa-clock-o fa-fw"></i> 15 mins ago</small>
                  <strong class="pull-right primary-font">Julia Hill</strong>
              </div>
              <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, obcaecati.
              </p>
            </div>
          </li>
        </ul>
      </div>
      <div class="panel-footer">
        <div class="input-group">
          <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
          <span class="input-group-btn">
            <button class="btn btn-warning btn-sm" id="btn-chat">
                Send
            </button>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}