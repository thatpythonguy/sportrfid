{% extends "base.tpl" %}

{% block title %}Home{% endblock %}
{% block page_id %}home{% endblock %}

{% block _js_include_extra %}
    <script type="text/javascript">
        $(function() { 
            $('#content-text').css('min-height', $('#banners').height()); 
        });
    </script>
{% endblock %}

{% block content %}
    {% with id|menu_trail|first as root_id %}
    <div id="banners">
        {% for img in m.rsc['page_home'].media %}
            {% image img width=562 lossless %}
        {% endfor %}
    </div>
    <div id="content-text">
        <div id="page-title">
            <div id="page-title-content">
                <h1>{{ m.rsc[root_id].title }}</h1>
            </div>
            <div class="clear"><!-- transparent background --></div>
        </div>
        <div id="page-body">
            {{ m.rsc[page_home].body|show_media }}
        </div>
    </div>
    {% endwith %}
{% endblock %}
