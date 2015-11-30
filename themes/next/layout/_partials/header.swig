<div class="site-meta {% if theme.custom_logo.enabled %}custom-logo{% endif %}">
  {% if theme.custom_logo.image and not theme.scheme %}
    <div class="site-meta-headline">
      <a>
        <img class="custom-logo-image" src="{{ theme.custom_logo.image }}"
             alt="{{ config.title }}"/>
      </a>
    </div>

    <nav class="main-nav overlay clearfix">
        <canvas width="1084" height="597" style="position: absolute; top: 0px; left: 0px;"></canvas>
            <a class="menu-button icon-menu" href="#"><span class="word">Menu</span></a>
    </nav>
    <div class="vertical">
        <div class="main-header-content inner">
            <h1 class="page-title">{{ config.title }}</h1>
            <h2 class="page-description"></h2>
        </div>
    </div>
    <a class="scroll-down icon-arrow-left" href="#main" data-offset="-45"><span class="hidden">Scroll Down</span></a>
  {% endif %}

</div>

<div class="site-nav-toggle">
  <button>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
  </button>
</div>

<nav class="site-nav">
  {% set hasSearch = theme.swiftype_key || theme.tinysou_Key %}

  {% if theme.menu %}
    <ul id="menu" class="menu {{ hasSearch and 'menu-left' }}">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item menu-item-{{ itemName }}">
          <a href="{{ url_for(path) }}" rel="section">
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-{{theme.menu_icons[itemName] || 'question-circle'}} fa-fw"></i> <br />
            {% endif %}
            {{ __('menu.' + itemName) }}
          </a>
        </li>
      {% endfor %}

      {# Search icon for default scheme #}
      {% if not theme.scheme and theme.swiftype_key %}
        <li class="menu-item menu-item-search">
          <a href="#" class="st-search-show-outputs">
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-search icon-next-search"></i> <br />
            {% endif %}
            {{ __('menu.search') }}
          </a>
        </li>
      {% endif %}
    </ul>
  {% endif %}

  {% if hasSearch %}
    <div class="site-search">
      {% include 'search.swig' %}
    </div>
  {% endif %}
</nav>
