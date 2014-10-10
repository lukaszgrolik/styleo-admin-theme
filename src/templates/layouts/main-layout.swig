{# {% set mainMenu = [
    {
        slug: 'index',
        title: 'Dashboard',
        iconClass: 'fa-dashboard'
    },
    {
        slug: 'ui-elements',
        title: 'UI Elements',
        iconClass: 'fa-wrench',
        items: [
            {
                slug: 'basic-elements',
                title: 'Basic Elements'
            },
            {
                slug: 'icons',
                title: 'Icons',
                items: [
                    {
                        slug: 'font-awesome',
                        title: 'Font Awesome'
                    },
                    {
                        slug: 'glyphicons',
                        title: 'Glyphicons'
                    },
                ]
            }
        ]
    },
    {
        slug: 'forms',
        title: 'Forms',
        iconClass: 'fa-edit',
    },
    {
        slug: 'charts',
        title: 'Charts',
        iconClass: 'fa-bar-chart',
    },
    {
        slug: 'maps',
        title: 'Maps',
        iconClass: 'fa-map-marker',
    }
] %} #}
{# {% include '../config/routes.swig' %} #}
{% set routes = [
  {
    "slug": "index",
    "name": "Dashboard",
    "iconClass": "fa-home"
  },
  {
    "slug": "ui-elements",
    "name": "UI Elements",
    "iconClass": "fa-wrench",
    "routes": [
      {
        "slug": "ui-elements-basic-elements",
        "name": "Basic Elements"
      },
      {
        "slug": "ui-elements-panels",
        "name": "Panels"
      },
      {
        "slug": "ui-elements-wells",
        "name": "Wells"
      },
      {
        "slug": "ui-elements-tabs-accordions",
        "name": "Tabs & Accordions"
      },
      {
        "slug": "ui-elements-buttons",
        "name": "Buttons"
      },
      {
        "slug": "ui-elements-notifications",
        "name": "Notifications"
      },
      {
        "slug": "ui-elements-alerts",
        "name": "Alerts"
      },
      {
        "slug": "ui-elements-progress-bars",
        "name": "Progress Bars"
      },
      {
        "slug": "ui-elements-typography",
        "name": "Typography"
      },
      {
        "slug": "ui-elements-grid",
        "name": "Grid",
        "label": {
          "class": "label label-default",
          "text": "12 COLUMNS"
        }
      },
      {
        "slug": "ui-elements-icons",
        "name": "Icons",
        "routes": [
          {
            "slug": "ui-elements-icons-font-awesome",
            "name": "Font Awesome",
            "iconClass": "fa-flag",
            "label": {
              "class": "badge badge-primary",
              "text": 479
            }
          },
          {
            "slug": "ui-elements-icons-glyphicons",
            "name": "Glyphicons",
            "iconClass": "fa-plus-square",
            "label": {
              "class": "badge badge-primary",
              "text": 200
            }
          }
        ]
      }
    ]
  },
  {
    "slug": "tables",
    "name": "Tables",
    "iconClass": "fa-table",
    "routes": [
      {
        "slug": "tables-simple-responsive-tables",
        "name": "Simple & Responsive Tables"
      },
      {
        "slug": "tables-datatables",
        "name": "DataTables"
      }
    ]
  },
  {
    "slug": "forms",
    "name": "Forms",
    "iconClass": "fa-edit",
    "routes": [
      {
        "slug": "forms-form-text-fields",
        "name": "Form Text Fields",
        "iconClass": "fa-pencil"
      },
      {
        "slug": "forms-form-controls",
        "name": "Form Controls",
        "iconClass": "fa-dot-circle-o"
      },
      {
        "slug": "forms-form-layouts",
        "name": "Form Layouts",
        "iconClass": "fa-th-large"
      },
      {
        "slug": "forms-form-wizard",
        "name": "Form Wizard",
        "iconClass": "fa-magic"
      },
      {
        "slug": "forms-form-validation",
        "name": "Form Validation",
        "iconClass": "fa-check"
      },
      {
        "slug": "forms-editors",
        "name": "Editors",
        "iconClass": "fa-edit",
        "routes": [
          {
            "slug": "forms-editors-simple-wysiwyg",
            "name": "Simple WYSIWYG Editors"
          },
          {
            "slug": "forms-editors-markdown",
            "name": "Markdown Editors"
          },
          {
            "slug": "forms-editors-ckeditor",
            "name": "CKEditor"
          }
        ]
      }
    ]
  },
  {
    "slug": "charts",
    "name": "Charts",
    "iconClass": "fa-bar-chart",
    "routes": [
      {
        "slug": "charts-flot",
        "name": "Flot Charts"
      },
      {
        "slug": "charts-morris",
        "name": "Morris Charts"
      },
      {
        "slug": "charts-sparkline",
        "name": "Sparkline Charts"
      }
    ]
  },
  {
    "slug": "maps",
    "name": "Maps",
    "iconClass": "fa-map-marker",
    "routes": [
      {
        "slug": "maps-google-maps",
        "name": "Google Maps"
      },
      {
        "slug": "maps-vector-maps",
        "name": "Vector Maps"
      }
    ]
  },
  {
    "slug": "pages",
    "name": "Pages",
    "iconClass": "fa-files-o",
    "routes": [
      {
        "slug": "pages-profile",
        "name": "Profile",
        "iconClass": "fa-users"
      },
      {
        "slug": "pages-login",
        "name": "Login",
        "iconClass": "fa-sign-in"
      },
      {
        "slug": "pages-register",
        "name": "Register",
        "iconClass": "fa-user"
      },
      {
        "slug": "pages-lock-screen",
        "name": "Lock Screen",
        "iconClass": "fa-lock"
      },
      {
        "slug": "pages-forgotten-password",
        "name": "Forgotten Password",
        "iconClass": "fa-key"
      },
      {
        "slug": "pages-timeline",
        "name": "Timeline",
        "iconClass": "fa-clock-o",
        "label": {
          "class": "label label-warning",
          "text": "NEW"
        }
      },
      {
        "slug": "pages-pricing-tables",
        "name": "Pricing Tables",
        "iconClass": "fa-credit-card"
      },
      {
        "slug": "pages-gallery",
        "name": "Gallery",
        "iconClass": "fa-th",
        "label": {
          "class": "label label-danger",
          "text": "NEW"
        }
      },
      {
        "slug": "pages-invoice",
        "name": "Invoice",
        "iconClass": "fa-file-text-o"
      },
      {
        "slug": "pages-calendar",
        "name": "Calendar",
        "iconClass": "fa-calendar"
      },
      {
        "slug": "pages-search-results",
        "name": "Search Results",
        "iconClass": "fa-search"
      },
      {
        "slug": "pages-error-404",
        "name": "Error 404",
        "iconClass": "fa-warning"
      },
      {
        "slug": "pages-error-500",
        "name": "Error 500",
        "iconClass": "fa-warning"
      },
      {
        "slug": "pages-blank-page",
        "name": "Blank Page",
        "iconClass": "fa-file-o"
      }
    ]
  },
  {
    "slug": "documentation",
    "name": "Documentation",
    "iconClass": "fa-graduation-cap"
  }
] %}

{% macro getPageTitleBySlug(slug) %}
aaa
{% endmacro %}

{% macro getPageIsCurrentParent(slug) %}
aaa
{% endmacro %}

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    {# <title>Styleo Admin 1.0 | {% block title %}{% endblock %}</title> #}
    {# <title>Styleo Admin 1.0 | {{getPageTitleBySlug(currentPageSlug)}}</title> #}
    <title>Styleo Admin 1.0 | {{getRouteBySlug(routes, currentRouteSlug).name}}</title>

    <link rel="shortcut icon" href="favicon.ico">

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Social Buttons CSS -->
    <link href="bower_components/bootstrap-social/bootstrap-social.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link rel="stylesheet" href="bower_components/metisMenu/dist/metisMenu.min.css">

    <link rel="stylesheet" href="bower_components/nanoscroller/bin/css/nanoscroller.css">

    {% block headEnd %}{% endblock %}

    <!-- Custom CSS -->
    <link href="css/styleo-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,300,400' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    {% block content %}{% endblock %}

    <!-- jQuery Version 1.11.0 -->
    <script src="bower_components/jquery-1.11.0/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>


    <script src="bower_components/nanoscroller/bin/javascripts/jquery.nanoscroller.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/styleo-admin.js"></script>

    {% block bodyEnd %}{% endblock %}

</body>

</html>