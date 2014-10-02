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
    <title>Styleo Admin 1.0 | {{getRouteBySlug(currentRouteSlug).name}}</title>

    <link rel="shortcut icon" href="favicon.ico">

    <!-- Bootstrap Core CSS -->
    {# <link href="sb-admin-2/css/bootstrap.min.css" rel="stylesheet"> #}
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Social Buttons CSS -->
    <link href="sb-admin-2/css/plugins/social-buttons.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="sb-admin-2/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="sb-admin-2/css/sb-admin-2.css" rel="stylesheet">
    <link href="css/styleo-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    {# <link href="sb-admin-2/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> #}
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    {% block headEnd %}{% endblock %}

</head>

<body>

    {% block content %}{% endblock %}

    <!-- jQuery Version 1.11.0 -->
    <!--<script src="sb-admin-2/js/jquery-1.11.0.js"></script>-->
    <script src="bower_components/jquery-1.11.0/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <!--<script src="sb-admin-2/js/bootstrap.min.js"></script>-->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="sb-admin-2/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <!-- <script src="sb-admin-2/js/sb-admin-2.js"></script>-->

    <script src="js/styleo-admin.js"></script>

    {% block bodyEnd %}{% endblock %}

</body>

</html>