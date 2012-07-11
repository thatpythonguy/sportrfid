    <div id="footer-content">
        <div id="social-icons"> 
            {% for social_page in m.search[{query cat='social' sort='-rsc.publication_start' is_published='true'}] %}
            <div class="figure">
                <a href="{{ m.rsc[social_page].website }}" target="_blank">{% image m.rsc[social_page].medium lossless %}</a>
            </div>
            {% endfor %}
        </div>

        <br />

        {% comment %}
        <span class="copyline">Copyright SportRFID 2012 </span> | 
        <a href="{% url terms %}" class="copyline">Terms of Use</a> |
        <a href="{% url privacy %}" class="copyline">Privacy Policy</a> |
        <a href="{% url sitemap %}" class="copyline">Site Map</a> <br />
        {% endcomment %}

        {{ m.rsc['footer_message'].body }}
    </div>
