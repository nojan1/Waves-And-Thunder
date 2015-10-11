<ul class="media-list post-list">
{% for post in page.posts %}    
    <li class="media">
        <div class="media-left media-top">
            <a href="#">
              <img class="media-object" src="images/battleship.png" alt="battleship cartoon" style="width:100px;">
            </a>
        </div>
      <div class="media-body">
        <h4 class="media-heading">{{post.title}}</h4>
        {% if post.excerpt %}
			{{ post.excerpt }}...
        {% else %}
			{{ post.content }}
        {% endif %}
        
        <div>
            <span class="pull-left">{{post.date.format('dddd, MMMM Do YYYY, h:mm:ss a')}}</span>
            <a href="{{ url_for(post.path) }}" class="pull-right">Read more</a>
        </div>
      </div>
     </li>
{% endfor %}
</ul>