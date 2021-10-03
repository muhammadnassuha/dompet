<header class="main-header">
  <a href="/" class="logo">
  <span class="logo-mini"><b>N</b>T</span>
  <span class="logo-lg"><b>Dompet</b>ku</span>
  </a>
  <nav class="navbar navbar-static-top">
  <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button"><span class="sr-only">Toggle navigation</span></a>

  <div class="navbar-custom-menu">
    <ul class="nav navbar-nav">

      <li class="dropdown user user-menu">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <img src="{{ asset('images/img-user2-160x160.jpg')}}" class="user-image" alt="User Image"><span class="hidden-xs">Demo</span></a>
        <ul class="dropdown-menu">
          <!-- User image -->
          <li class="user-header">
            <img src="{{ asset('images/img-user2-160x160.jpg')}}" class="img-circle" alt="User Image">
            <p>
               Demo <small></small>
            </p>
          </li>
          <li class="user-footer">
            <div class="pull-left">
              <a href="#" class="btn btn-default btn-flat">Profile</a>
            </div>
            <div class="pull-right">
              <a class="btn btn-default btn-flat" href="" onclick="event.preventDefault();
                document.getElementById('logout-form').submit();">Log Out
              </a>
              <form id="logout-form" action="" method="POST" style="display: none;">
                @csrf
              </form>
            </div>
          </li>
        </ul>
      </li>
      
    </ul>
  </div>
  </nav>
  </header>