<!DOCTYPE html>
<html lang="en">
    <head>
       @include('include.style')
    </head>
    <body class="sb-nav-fixed">
        @include('include.header')
        
        <div id="layoutSidenav">
            @include('include.sidebar')
            @yield('content')
        </div>
       @include('include.script')
    </body>
</html>
