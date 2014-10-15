{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-compact-timeline' %}

{% block headEnd%}

{% endblock %}

{% block bodyEnd %}

{% endblock %}

{% block content2 %}
<h2>Compact Timeline</h2>

<div class="row">
  <div class="col-lg-6 col-lg-offset-3">
    <ul class="compact-timeline">
      <li>
        <i class="fa fa-comment"></i>
        <span class="date">5 Jan</span>
        <div class="content">
          <p><strong>Jason</strong> has invited you to conversation.</p>
          <small>2 hours ago</small>
        </div>
      </li>

      <li>
        <i class="fa fa-envelope bgc-green"></i>
        <span class="date">5 Jan</span>
        <div class="content">
          <i class="fa fa-paperclip pull-right"></i>
          <p><strong>Bruce Burns</strong> has sent you photos:</p>
          <a class="image-zoom" href="images/photos/photo4.jpg"><img src="images/photos/photo4.jpg" class="img-thumbnail" style="height:64px;" /></a>
          <a class="image-zoom" href="images/photos/photo2.jpg"><img src="images/photos/photo2.jpg" class="img-thumbnail" style="height:64px;" /></a>
        </div>
      </li>

      <li>
        <i class="fa fa-file bgc-orange"></i>
        <span class="date">5 Jan</span>
        <div class="content">
          <p><strong>Nicholas Rivera</strong> has wrote on your wall:</p>
          <blockquote>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          </blockquote>
        </div>
      </li>

      <li><i class="fa fa-globe bgc-red"></i><span class="date">5 Jan</span><div class="content"><p><strong>Catherine</strong> has updated her profile.</p></div></li>
    </ul>
  </div>
</div>
{% endblock %}
