<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>{% block title %}{% endblock %} &mdash; {{ m.config.site.title.value }}</title>
        <link rel="icon" href="/lib/images/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="/lib/images/favicon.ico" type="image/x-icon" />
        {% all include "_html_head.tpl" %}
        <!-- CSS -->
        {% lib 
            "css/jquery.loadmask.css"
            "css/main.css"
        %}
        <!--[if IE]>{% lib "css/zp-ie.css" %}<![endif]-->
        {% block html_head_extra %}{% endblock %}
    </head>
    <body id="{{ page_url }}-page">
        <div id="container">
            <div id="header">
                <div id="title">
                    <a href="{% url home %}" id="home-link"></a>
                </div>

                <div id="ribbon">
                </div>

                <div id="menu-background"><!-- transparent background --></div>
                <div id="menu">
                    {% menu id=main_menu template="includes/_menu.tpl" %}
                </div>
            </div>

            <div id="content-full">
                {% block content_area %}
                    {% block content %}
                    {% endblock %}
                {% endblock %}
            </div>

        </div>

        <div id="footer">
            {% include "includes/_footer.tpl" %}
        </div>

        {% include "_js_include_jquery.tpl" %}
        {% lib 
                "js/apps/zotonic-1.0.js" 
                "js/apps/z.widgetmanager.js" 
                "js/modules/livevalidation-1.3.js" 
                "js/modules/z.inputoverlay.js"
                "js/modules/jquery.loadmask.js"
                "js/z.superfish.js" 
        %}
        
        {% block _js_include_extra %}{% endblock %}

        <script type="text/javascript">
            $(function() { $.widgetManager(); });
        </script>

        {% stream %}
        {% script %}

        {% all include "_html_body.tpl" %}
    </body>
</html>

