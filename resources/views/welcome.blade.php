<!DOCTYPE html>

<html lang="en">
  <head>
    <title>Ustora Demo</title>
    @include('include.frontend.style')

  </head>
  <body>

    @include('include.frontend.topHeader')

    @include('include.frontend.siteBranding')

    @include('include.frontend.mainMenu')

    @yield('front-content')
    
    @include('include.frontend.footer')
    @include('include.frontend.scripts')
  </body>
</html>

