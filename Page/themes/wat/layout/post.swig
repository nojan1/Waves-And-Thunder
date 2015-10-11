{% extends 'main-layout.swig' %}

{% block primary %}
        <h1>{{page.title}}</h1>  
        {{page.content}}

        <span class="pull-left timestamp">{{page.date.format('dddd, MMMM Do YYYY, h:mm:ss a')}}</span>
{% endblock %}