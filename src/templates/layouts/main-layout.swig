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
        slug: 'index',
        name: 'Dashboard',
        iconClass: 'fa-home'
    },
    {
        slug: 'ui-elements',
        name: 'UI Elements',
        iconClass: 'fa-wrench',
        routes: [
            {
                slug: 'ui-elements-basic-elements',
                name: 'Basic Elements'
            },
            {
                slug: 'ui-elements-panels',
                name: 'Panels'
            },
            {
                slug: 'ui-elements-wells',
                name: 'Wells'
            },
            {
                slug: 'ui-elements-tabs-accordions',
                name: 'Tabs & Accordions'
            },
            {
                slug: 'ui-elements-buttons',
                name: 'Buttons'
            },
            {
                slug: 'ui-elements-notifications',
                name: 'Notifications'
            },
            {
                slug: 'ui-elements-alerts',
                name: 'Alerts'
            },
            {
                slug: 'ui-elements-progress-bars',
                name: 'Progress Bars'
            },
            {
                slug: 'ui-elements-typography',
                name: 'Typography'
            },
            {
                slug: 'ui-elements-grid',
                name: 'Grid',
                label: {
                    class: 'label label-default',
                    text: '12 COLUMNS'
                }
            },
            {
                slug: 'ui-elements-icons',
                name: 'Icons',
                routes: [
                    {
                        slug: 'ui-elements-icons-font-awesome',
                        name: 'Font Awesome',
                        iconClass: 'fa-flag',
                        label: {
                            class: 'badge badge-primary',
                            text: 479
                        }
                    },
                    {
                        slug: 'ui-elements-icons-glyphicons',
                        name: 'Glyphicons',
                        iconClass: 'fa-plus-square',
                        label: {
                            class: 'badge badge-primary',
                            text: 200
                        }
                    }
                ]
            },
        ]
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