{% extends "base.tpl" %}

{% block title %}Home{% endblock %}
{% block page_id %}home{% endblock %}

{% block _js_include_extra %}
    <script type="text/javascript">
        $(function() { 
            $('#content-text').css('min-height', $('#banners').height()-120); 
            $('#footer-background').css('height', $('#footer').height()); 
        });
    </script>
{% endblock %}

{% block content %}
    {% with id|menu_trail|first as root_id %}
    <div id="banners">
        {% for item in m.rsc['page_home'].media %}
            {% ifequal item.category.name 'banner' %}
                {% image item width=562 lossless %}
            {% endifequal %}
        {% endfor %}
        <div id="banners-text">
            <div id="banners-text-background"><!-- background --></div>
            <div>{{ m.rsc['page_home_sidebar'].body }}</div>
        </div>
    </div>
    <div id="content-text">
        <div id="page-body-home">
            {% with m.media[m.rsc['page_home'].media[2]].oembed_url|replace:["http://www.youtube.com/watch\\?v=",""] as vid_code %}
            {% if vid_code %}
                <iframe style="padding-top:20px;" width="560" height="315" src="http://www.youtube.com/embed/{{ vid_code }}" frameborder="0" allowfullscreen></iframe>
            {% endif %}
            {% endwith %}
            <div id="page-body-home-text">
                {{ m.rsc['page_home'].body|show_media }}
            </div>
        </div>
        <div class="clear"><!-- clear --></div>
    </div>
    {% endwith %}
{% endblock %}
