<!DOCTYPE html>
<head>
    {% include '_partials/_head.swig' %}
</head>
<body>
    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" {% if page.path == 'index.html' %}class="active"{% endif %}>
                <a href="{{ url_for('/')}}">Start</a>
            </li>
            <li role="presentation" {% if page.path.indexOf('Rules') != -1 %}class="active"{% endif %}>
                <a href="{{ url_for('/Rules')}}">Rules</a>
            </li>
          </ul>
        </nav>
        <h3 class="text-muted">{{config.title}}</h3>
      </div>

      {% block primary %}{% endblock %}

      <footer class="footer">
        <p>&copy; Company 2014</p>
      </footer>

    </div>

    {% block scripts %}
        {% include '_partials/_scripts.swig' %}
    {% endblock %}
</body>
</html>