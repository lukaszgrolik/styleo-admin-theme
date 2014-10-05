{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-wizard' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/fuelux/dist/css/fuelux.css">
<link rel="stylesheet" href="bower_components/fuelux/dist/css/fuelux.css">

{% endblock %}

{% block bodyEnd %}
<script src="bower_components/fuelux/js/wizard.js"></script>

<script>
$(function() {
    $('.wizard').wizard();

    // $(".wizard-next").click(function(e){
    //   var id = $(this).data("wizard");
    //   // $(id).wizard('next');
    //   e.preventDefault();
    // });

    // $(".wizard-previous").click(function(e){
    //   var id = $(this).data("wizard");
    //   $(id).wizard('previous');
    //   e.preventDefault();
    // });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row fuelux">
    <div class="col-md-12">
        <div class="wizard" data-initialize="wizard" id="myWizard">
            <ul class="steps">
                <li data-step="1" class="active"><span class="badge">1</span>Campaign<span class="chevron"></span></li>
                <li data-step="2"><span class="badge">2</span>Recipients<span class="chevron"></span></li>
                <li data-step="3"><span class="badge">3</span>Template<span class="chevron"></span></li>
                <li data-step="4"><span class="badge">4</span>Preview<span class="chevron"></span></li>
                <li data-step="5"><span class="badge">5</span>Send<span class="chevron"></span></li>
            </ul>
            <div class="actions">
                <button class="btn btn-default btn-prev"><span class="glyphicon glyphicon-arrow-left"></span>Prev</button>
                <button class="btn btn-default btn-next" data-last="Complete">Next<span class="glyphicon glyphicon-arrow-right"></span></button>
            </div>
            <div class="step-content">
                <div class="step-pane active sample-pane" data-step="1">
                  <h4>Setup Campaign</h4>
                  <p>Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic. Beetroot water spinach okra water chestnut ricebean pea catsear courgette.</p>
                  <p>Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke. Beetroot water spinach okra water chestnut ricebean pea catsear courgette.</p>
                  <p>Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini. </p>
              </div>
              <div class="step-pane sample-pane" data-step="2">
                  <h4>Choose Recipients</h4>
                  <p>Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard. </p>
                  <p>Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jÃ­cama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd. Gumbo kakadu plum komatsuna black-eyed pea green bean zucchini gourd winter purslane silver beet rock melon radish asparagus spinach. </p>
                  <p>Beetroot water spinach okra water chestnut ricebean pea catsear courgette summer purslane. Water spinach arugula pea tatsoi aubergine spring onion bush tomato kale radicchio turnip chicory salsify pea sprouts fava bean. Dandelion zucchini burdock yarrow chickpea dandelion sorrel courgette turnip greens. </p>
              </div>
              <div class="step-pane sample-pane" data-step="3">
                  <h4>Design Template</h4>
                  <p>Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jÃ­cama salsify. </p>
                  <p>Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard. </p>
                  <p>Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jÃ­cama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd. Gumbo kakadu plum komatsuna black-eyed pea green bean zucchini gourd winter purslane silver beet rock melon radish asparagus spinach. </p>
              </div>
              <div class="step-pane sample-pane" data-step="4">
                  <h4>Preview Message</h4>
                  <p>Beetroot water spinach okra water chestnut ricebean pea catsear courgette summer purslane. Water spinach arugula pea tatsoi aubergine spring onion bush tomato kale radicchio turnip chicory salsify pea sprouts fava bean. Dandelion zucchini burdock yarrow chickpea dandelion sorrel courgette turnip greens tigernut soybean radish artichoke wattle seed endive groundnut broccoli arugula. Beetroot water spinach okra water chestnut ricebean pea catsear courgette.</p>
                  <p>Soko radicchio bunya nuts gram dulse silver beet parsnip napa cabbage lotus root sea lettuce brussels sprout cabbage. Catsear cauliflower garbanzo yarrow salsify chicory garlic bell pepper napa cabbage lettuce tomato kale arugula melon sierra leone bologi rutabaga tigernut. Sea lettuce gumbo grape kale kombu cauliflower salsify kohlrabi okra sea lettuce broccoli celery lotus root carrot winter purslane turnip greens garlic.</p>
                  <p>Ja­cama garlic courgette coriander radicchio plantain scallion cauliflower fava bean desert raisin spring onion chicory bunya nuts. Sea lettuce water spinach gram fava bean leek dandelion silver beet eggplant bush tomato. </p>
              </div>
              <div class="step-pane sample-pane" data-step="5">
                  <h4>Send Message</h4>
                  <p>Soko radicchio bunya nuts gram dulse silver beet parsnip napa cabbage lotus root sea lettuce brussels sprout cabbage. Catsear cauliflower garbanzo yarrow salsify chicory garlic bell pepper napa cabbage lettuce tomato kale arugula melon sierra leone bologi rutabaga tigernut.</p>
                  <p>Sea lettuce gumbo grape kale kombu cauliflower salsify kohlrabi okra sea lettuce broccoli celery lotus root carrot winter purslane turnip greens garlic. JÃ­cama garlic courgette coriander radicchio plantain scallion cauliflower fava bean desert raisin spring onion chicory bunya nuts. Sea lettuce water spinach gram fava bean leek dandelion silver beet eggplant bush tomato. </p>
                  <p>Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jÃ­cama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd.  </p>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

<div class="row fuelux">
    <div class="col-lg-12">
        <div class="wizard">
            <ul class="steps">
                <li data-step="1" class="active"><span class="badge">1</span>Campaign<span class="chevron"></span></li>
                <li data-step="2"><span class="badge">2</span>Recipients<span class="chevron"></span></li>
                <li data-step="3"><span class="badge">3</span>Template<span class="chevron"></span></li>
            </ul>
            <div class="actions">
                <button class="btn btn-default btn-prev"><span class="glyphicon glyphicon-arrow-left"></span>Prev</button>
                <button class="btn btn-default btn-next" data-last="Complete">Next<span class="glyphicon glyphicon-arrow-right"></span></button>
            </div>
            <div class="step-content">
                <div class="step-pane active sample-pane alert bg-success" data-step="1">
                  <h4>Setup Campaign</h4>
                  <p>Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic. Beetroot water spinach okra water chestnut ricebean pea catsear courgette.</p>
                </div>
                <div class="step-pane sample-pane bg-info alert" data-step="2">
                  <h4>Choose Recipients</h4>
                  <p>Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard. </p>
                </div>
                <div class="step-pane sample-pane bg-danger alert" data-step="3">
                  <h4>Design Template</h4>
                  <p>Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jÃ­cama salsify. </p>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

<div class="row fuelux">
    <div class="col-lg-12">
        <div id="wizard1" class="wizard">
            <ul class="steps">
                <li data-step="1" class="active">Step 1<span class="chevron"></span></li>
                <li data-step="2">Step 2<span class="chevron"></span></li>
                <li data-step="3">Step 3<span class="chevron"></span></li>
            </ul>
            <div class="actions">
                <button type="button" class="btn btn-xs btn-prev btn-primary"> <i class="icon-arrow-left"></i>Prev</button>
                <button type="button" class="btn btn-xs btn-next btn-primary" data-last="Finish">Next<i class="icon-arrow-right"></i></button>
            </div>
            <div class="step-content">
                <div class="step-pane active" data-step="1">
                    <form action="" class="form-horizontal">
                  <div class="form-group no-padding">
                    <div class="col-sm-7">
                      <h3 class="hthin">User Info</h3>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" placeholder="User name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">E-Mail</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" placeholder="User E-Mail">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-6">
                      <input type="password" class="form-control" placeholder="Enter your password">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Verify Password</label>
                    <div class="col-sm-6">
                      <input type="password" class="form-control" placeholder="Enter your password again">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button class="btn btn-default">Cancel</button>
                      <button data-wizard="#wizard1" class="btn btn-primary wizard-next">Next Step <i class="fa fa-caret-right"></i></button>
                    </div>
                  </div>
                </form>
                </div>
                <div class="step-pane" data-step="2">
                    <form action="" class="form-horizontal">
                  <div class="form-group no-padding">
                    <div class="col-sm-7">
                      <h3 class="hthin">Notifications</h3>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-7">
                      <label class="control-label">E-Mail Notifications</label>
                      <p>This option allow you to recieve email notifications by us.</p>
                    </div>
                    <div class="col-sm-3">
                      <input class="switch" data-size="small" type="checkbox" checked>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-7">
                      <label class="control-label">Phone Notifications</label>
                      <p>Allow us to send phone notifications to your cell phone.</p>
                    </div>
                    <div class="col-sm-3">
                      <input class="switch" data-size="small" type="checkbox" checked>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-7">
                      <label class="control-label">Global Notifications</label>
                      <p>Allow us to send notifications to your dashboard.</p>
                    </div>
                    <div class="col-sm-3">
                     <input class="switch" data-size="small" type="checkbox" checked>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <button data-wizard="#wizard1" class="btn btn-default wizard-previous"><i class="fa fa-caret-left"></i> Previous</button>
                      <button data-wizard="#wizard1" class="btn btn-primary wizard-next">Next Step <i class="fa fa-caret-right"></i></button>
                    </div>
                  </div>
                </form>
                </div>
                <div class="step-pane" data-step="3">
                    <form action="" class="form-horizontal">
                  <div class="form-group no-padding">
                    <div class="col-sm-7">
                      <h3 class="hthin">Configuration</h3>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-6">
                      <label class="control-label">Buy Credits: <span id="credits">$0</span></label>
                      <p>This option allow you to buy an amount of credits.</p>

                      <input id="credit_slider" type="text" class="bslider form-control" value="0" />
                    </div>
                    <div class="col-sm-6">
                      <label class="control-label">Change Plan</label>
                      <p>Change your plan many times as you want.</p>
                      <select class="select2">
                         <optgroup label="Personal">
                           <option value="p1">Basic</option>
                           <option value="p2">Medium</option>
                         </optgroup>
                         <optgroup label="Company">
                           <option value="p3">Standard</option>
                           <option value="p4">Silver</option>
                           <option value="p5">Gold</option>
                         </optgroup>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-6">
                      <label class="control-label">Payment Rate: <span id="rate">0%</span></label>
                      <p>Choose your payment rate to calculate how much money you will recieve.</p>

                      <input id="rate_slider"  data-slider-min="0" data-slider-max="100" type="text" class="bslider form-control" value="0" />
                    </div>
                    <div class="col-sm-6">
                      <label class="control-label">Keywords</label>
                      <p>Write your keywords to do a successful CEO with web search engines.</p>
                      <input class="tags" type="hidden" value="brown,blue,green" />
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-12">
                      <button data-wizard="#wizard1" class="btn btn-default wizard-previous"><i class="fa fa-caret-left"></i> Previous</button>
                      <button data-wizard="#wizard1" class="btn btn-success wizard-next"><i class="fa fa-check"></i> Complete</button>
                    </div>
                  </div>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

<br>
{% endblock %}