# django-listutils
Django template tag to split list into sub lists.


~~~
{% for indi in children|partition:"2" %}
    <div class="row">
    {% for indj in indi %}
        <div class="col-sm-6">
         <p> indj.name </p>
         </div>
    {% endfor %}
    </div>
{% endfor %}




