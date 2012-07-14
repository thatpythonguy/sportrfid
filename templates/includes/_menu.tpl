{% if menu %}
{% with id|menu_trail:menu_id as parents %}
    <ul id="{{ id_prefix }}navigation" class="clearfix sf-menu do_superfish">
    {% for mid, path, action in menu %}
        {% if mid %}
        {% ifequal path|length 1 %}
            <li class="menu-item{% if mid|member:parents %} selected{% endif %}">
                <a href="{{ m.rsc[mid].page_url }}" 
                   class="{{ m.rsc[mid].name }}{% if mid|member:parents %}{% if m.rsc[mid].name %} {% endif %}current{% endif %}">
                    {{ m.rsc[mid].short_title|default:m.rsc[mid].title }}
                </a>
            </li>
        {% endifequal %}
        {% endif %}
    {% endfor %}
    </ul>
{% endwith %}
{% endif %}
