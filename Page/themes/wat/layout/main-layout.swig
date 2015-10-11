<!DOCTYPE html>
<head>
    {% include '_partials/_head.swig' %}
</head>
<body>
    <div class="backdrop">
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">{{config.title}}</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li {% if page.path == 'index.html' %}class="active"{% endif %}>
                <a href="{{ url_for('/')}}">Start</a>
            </li>
            <li {% if page.path.indexOf('Rules') != -1 %}class="active"{% endif %}>
                <a href="{{ url_for('/Rules')}}">Rules</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container content">

      {% block primary %}{% endblock %}

    </div>
    </div>
    
    {% block scripts %}
        {% include '_partials/_scripts.swig' %}
    {% endblock %}
    
</body>
</html>