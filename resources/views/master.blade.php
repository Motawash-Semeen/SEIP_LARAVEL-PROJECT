<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Dashboard - SB Admin</title>
       @include('include.backend.style')
    </head>
    <body class="sb-nav-fixed">
        @include('include.backend.header')
        
        <div id="layoutSidenav">
            @include('include.backend.sidebar')
            
            <div id="layoutSidenav_content">
                <main>
                   @yield('content') 
                </main>
                @include('include.backend.footer')
            </div>
        </div>
       @include('include.backend.script')
    </body>
</html>
