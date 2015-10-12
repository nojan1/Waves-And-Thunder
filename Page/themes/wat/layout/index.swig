{% extends 'main-layout.swig' %}

{% block primary %}
    <div class="jumbotron">
        <h1>Welcome!</h1>
        <p class="lead">
            This is the main page for the wonderful miniature game of <i>Waves And Thunder!</i>
        </p>
    </div>

    {% include '_partials/_posts.swig' %}
{% endblock %}