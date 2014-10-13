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
        <p><strong>John</strong> has called Shenlong with <strong>You</strong>.</p>
        <small>A minute ago</small>
      </div>
    </li>
    <li>
      <i class="fa fa-envelope bgc-green"></i>
      <span class="date">5 Jan</span>
      <div class="content">
        <i class="fa fa-paperclip pull-right"></i>
        <p><strong>Bob</strong><br/>This is a message for you in your birthday.</p>
        <a class="image-zoom" href="images/gallery/img4.jpg"><img src="images/gallery/img4.jpg" class="img-thumbnail" style="height:64px;" /></a>
        <a class="image-zoom" href="images/gallery/img6.jpg"><img src="images/gallery/img6.jpg" class="img-thumbnail" style="height:64px;" /></a>
      </div>
    </li>
    <li>
      <i class="fa fa-file bgc-red"></i>
      <span class="date">5 Jan</span>
      <div class="content">
        <p><strong>Michael</strong> has wrote on your wall:</p>
        <blockquote>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Some historic guy</small>
        </blockquote>
      </div>
    </li>
    <li><i class="fa fa-globe bgc-violet"></i><span class="date">5 Jan</span><div class="content"><p><strong>María</strong> This is a message for you in your birthday.</p></div></li>
</ul>
    </div>
</div>
{% endblock %}
