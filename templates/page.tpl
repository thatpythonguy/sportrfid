{% extends "base.tpl" %}

{% block title %}{{ m.rsc[id].title }}{% endblock %}
{% block page_id %}{{ page_id }}{% endblock %}

{% block content %}
    <img id="circles" src="/lib/images/circles.png" />
    <div class="banner">{% image m.rsc[id].o.relation[1].media[1] width=402 lossless %}</div>
    <div id="content-text" style="min-height: {{ m.media[m.rsc[id].o.relation[1].media[1]].height }}px;">
        <div id="page-title">
            <div id="page-title-background"><!-- transparent background --></div>
            <div id="page-title-content">
                <h1>{{ m.rsc[id].o.relation[1].title }}</h1>
                {% for subpage in m.rsc[id].o.relation[1].s.relation %}
                    {% ifequal subpage.page_url m.req.path %}
                        <div>{{ subpage.title }}</div>
                    {% else %}
                        <div><a href="{{ subpage.page_url }}">{{ subpage.title }}</a></div>
                    {% endifequal %}
                {% endfor %}
            </div>
            <div class="clear"><!-- transparent background --></div>
        </div>
        <div id="page-body">
            {{ m.rsc[id].body|show_media }}
        </div>
    </div>
{% endblock %}
