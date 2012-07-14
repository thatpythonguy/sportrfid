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
        {% image m.rsc['page_home'].media[1] width=562 lossless %}
    </div>
    <div id="content-text">
        <div id="page-body">
            {% media m.rsc['page_home'].media[2] width=562 lossless %}
            {{ m.rsc['page_home'].body }}
        </div>
    </div>
    {% endwith %}
{% endblock %}
