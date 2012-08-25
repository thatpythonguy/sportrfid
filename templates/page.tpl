{% extends "base.tpl" %}

{% block title %}{{ m.rsc[id].title }}{% endblock %}
{% block page_id %}{{ page_id }}{% endblock %}

{% block _js_include_extra %}
    <script type="text/javascript">
        $(function() { 
            $('#content-text').css('min-height', $('#banners').height()); 
        });
    </script>
{% endblock %}

{% block content %}
    {% with id|menu_trail|first as root_id %}
    <img id="circles" src="/lib/images/circles.png" />
    <div id="banners">
        {% for item in m.rsc[root_id].media %}
            {% ifequal item.category.name 'image' %}
                {% image item width=402 lossless %}
            {% endifequal %}
        {% endfor %}
    </div>
    <div id="content-text">
        <div id="page-title">
            <div id="page-title-background"><!-- transparent background --></div>
            <div id="page-title-content">
                <h1>{{ m.rsc[root_id].title }}</h1>
                {% menu root_id=root_id template="includes/_submenu.tpl" %}    
            </div>
            <div class="clear"><!-- transparent background --></div>
        </div>
        <div id="page-body">
            {{ m.rsc[id].body|show_media }}
        </div>
    </div>
    {% endwith %}
{% endblock %}
