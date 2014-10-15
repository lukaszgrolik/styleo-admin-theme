{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-profile' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}
<script src="bower_components/relayfoods-jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<script>
$(".spk4").sparkline([2,4,3,6,7,5,8,9,4,2,10,], { type: 'bar', width: '200px', barWidth: 6, height: '50px',barColor: '#19B698'});
$(".spk5").sparkline([5,3,5,6,5,7,4,8,6,9,8,], { type: 'bar', width: '80px', barWidth: 6, height: '50px',barColor: '#E85647'});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-3">
    <div class="well">
      <div class="text-center">
        <img src="images/avatars/avatar1.jpg" class="img-circle " />
      </div>

      <h2>Philip Gray</h2>
      <p>I am a web developer and designer based in New York. I like reading books, good music and sports.</p>
      <button class="btn btn-success sharp raised"><i class="fa fa-check"></i> Following</button>

      <br><br>

      <table class="table">
        <tr>
            <th>Following</th>
            <td>127</td>
        </tr>
        <tr>
            <th>Followers</th>
            <td>49</td>
        </tr>
        <tr>
            <th>Posts</th>
            <td>35</td>
        </tr>
      </table>
    </div>
  </div>

  <div class="col-lg-9">
    <div class="tabs-container">
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">Information</a></li>
        <li><a data-toggle="tab" href="#friends">Friends</a></li>
        <li><a data-toggle="tab" href="#settings">Settings</a></li>
      </ul>

      <div class="tab-content ">
        <div id="home" class="tab-pane active">
          <table>
            <tbody>
              <tr>
                <td style="width: 20%" class="vat"><strong>CONTACT</strong></td>
                <td>
                  <table class="table">
                    <tbody class="no-border-x no-border-y">
                      <tr><td style="width:20%;"><b>Website</b></td><td>www.example.com</td></tr>
                      <tr><td style="width:20%;"><b>E-mail</b></td><td>hello@example.com</td></tr>
                      <tr><td style="width:20%;"><b>Mobile</b></td><td>(999) 999-9999</td></tr>
                      <tr><td style="width:20%;"><b>Location</b></td><td>New York</td></tr>
                    </tbody>
                  </table>
                </td>
              </tr>

              <tr>
                <td class="vat"><strong>ABOUT ME</strong></td>
                <td><p>I am a web developer and designer based in New York. I like reading books, good music and sports.</p></td>
              </tr>

              <tr>
                <td><strong>SOCIAL</strong></td>
                <td>
                  <a class="btn btn-social sharp btn-facebook">
                    <i class="fa fa-facebook"></i> Facebook
                  </a>
                  <a class="btn btn-social sharp btn-google-plus">
                    <i class="fa fa-google-plus"></i> Google
                  </a>
                  <a class="btn btn-social sharp btn-twitter">
                    <i class="fa fa-twitter"></i> Twitter
                  </a>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <div id="friends" class="tab-pane">
          <div class="media-gallery-1">
            <a href="#" class="media-item">
              <img src="images/avatars/avatar2.jpg" class="media-image" />
              <h4 class="media-title">Helen Russell</h4>
              <p class="media-desc">Work</p>
            </a>
            <a href="#" class="media-item">
              <img src="images/avatars/avatar3.jpg" class="media-image" />
              <h4 class="media-title">Emma Jordan</h4>
              <p class="media-desc">Family</p>
            </a>
            <a href="#" class="media-item">
              <img src="images/avatars/avatar4.jpg" class="media-image" />
              <h4 class="media-title">Janet Lane</h4>
              <p class="media-desc">Friends</p>
            </a>
            <a href="#" class="media-item">
              <img src="images/avatars/avatar5.jpg" class="media-image" />
              <h4 class="media-title">Jesse Brown</h4>
              <p class="media-desc">Work</p>
            </a>
            <a href="#" class="media-item">
              <img src="images/avatars/avatar7.jpg" class="media-image" />
              <h4 class="media-title">Sharon Douglas</h4>
              <p class="media-desc">Work</p>
            </a>
            <a href="#" class="media-item">
              <img src="images/avatars/avatar6.jpg" class="media-image" />
              <h4 class="media-title">Christopher Ramos</h4>
              <p class="media-desc">Work</p>
            </a>
          </div>
        </div>

        <div id="settings" class="tab-pane">
          <form role="form" class="form-horizontal">
            <div class="form-group">
              <label class="col-sm-3 control-label" for="nick">Avatar</label>
              <div class="col-sm-9">
                <div class="avatar-upload">
                  <img src="images/avatars/avatar1.jpg" class="profile-avatar img-thumbnail" />
                  <input id="fileupload" type="file" name="files[]">
                  <div id="progress" class="overlay"></div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label" for="name">Name</label>
              <div class="col-sm-9">
                <input type="email" value="Philip Gray" id="name" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label" for="inputEmail3">Email</label>
              <div class="col-sm-9">
                <input type="email" value="hello@example.com" id="inputEmail3" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-3"></div>
              <label class="col-sm-9" for="inputPassword3">Change Password</label>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPassword3">Password</label>
              <div class="col-sm-9">
                <input type="password" placeholder="Password" id="inputPassword3" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPassword4">Repeat Password</label>
              <div class="col-sm-9">
                <input type="password" placeholder="Password" id="inputPassword4" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-3 col-sm-9">
                <button class="btn btn-primary" type="submit">Update</button>
                <button class="btn btn-default">Reset</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

    <br>

    <div class="block-transparent">
      <div class="header">
        <h4>Timeline</h4>
      </div>

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
</div>
{% endblock %}

