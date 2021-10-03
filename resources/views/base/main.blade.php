<!DOCTYPE html>
<html>
@include('base.head')
<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">
    @include('base.header')
    <aside class="main-sidebar" style="background-color: #1583b5;">
      <section class="sidebar">
        <div class="user-panel">
          <div class="pull-left image">
            <img src="{{ asset('images/img-user2-160x160.jpg')}}" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>
             Demo
            </p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div>
        @include('base.menu')
      </section>
    </aside>
    

    <div class="content-wrapper">
      <section class="content-header">
        <h1>
            @yield('page_icon')
            @yield('page_title')
            <small>@yield('page_subtitle')</small>
        </h1>
        @yield('breadcrumb')
      </section>

      <section class="content">
        @yield('menu')
        @yield('content')
        @include('base.modal')
      </section>
    </div>

  @include('base.footer')
 
</div>
@include('base.script')
</body>
</html>