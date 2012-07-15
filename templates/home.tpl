{% extends "base.tpl" %}

{% block title %}Home{% endblock %}
{% block page_id %}home{% endblock %}

{% block _js_include_extra %}
    <script type="text/javascript">
        $(function() { 
            $('#content-text').css('min-height', $('#banners').height()-120); 
        });
    </script>
{% endblock %}

{% block content %}
    {% with id|menu_trail|first as root_id %}
    <div id="banners">
        {% image m.rsc['page_home'].media[1] width=562 lossless %}
        <div id="banners-text">
            <div id="banners-text-background"><!-- background --></div>
            <div>{{ m.rsc['page_home_sidebar'].body }}</div>
        </div>
    </div>
    <div id="content-text">
        <div id="page-body-home">
            {% with m.media[m.rsc['page_home'].media[2]].oembed_url|replace:["http://www.youtube.com/watch\\?v=",""] as vid_code %}
                <iframe width="560" height="315" src="http://www.youtube.com/embed/{{ vid_code }}" frameborder="0" allowfullscreen></iframe>
            {% endwith %}
            <div id="page-body-home-text">
                {{ m.rsc['page_home'].body }}
            </div>
        </div>
    </div>
    {% endwith %}
{% endblock %}
