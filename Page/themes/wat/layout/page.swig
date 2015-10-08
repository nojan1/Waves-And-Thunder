{% extends 'main-layout.swig' %}

{% block primary %}
    <h1>{{page.title}}</h1>
    {{page.content}}
{% endblock %}