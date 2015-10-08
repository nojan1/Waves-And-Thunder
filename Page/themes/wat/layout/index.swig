{% extends 'main-layout.swig' %}

{% block primary %}
    <div class="jumbotron">
        <h1>Hello</h1>
        <p class="lead">
            Bla bla bla bla
        </p>
    </div>

    {% include '_partials/_posts.swig' %}
{% endblock %}