<!DOCTYPE html>
<html lang="zxx" dir="ltr">

<head>
    <!-- Standard Meta -->
    <meta charset="utf-8">
    <meta name="application-name" content="{{$set->site_name}}"/>
    <meta name="apple-mobile-web-app-title" content="{{$set->site_name}}"/>
    <meta name="description" content="{{$set->site_desc}}">
    <meta name="author" content="Mcjovial">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#313131" />
    <!-- Site Properties -->
    <title>{{ $title }} | {{$set->site_name}}</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="{{url('/')}}/asset/front/css/vendors/uikit.min.css">
    <link rel="stylesheet" href="{{url('/')}}/asset/front/css/style.css">
    <link rel="stylesheet" href="{{url('/')}}/asset/css/toast.css" type="text/css">
    @yield('css')
</head>

<body>
    <!-- preloader begin -->
    <div class="in-loader">
        <div></div>
        <div></div>
        <div></div>
    </div>
    <!-- preloader end -->
    <main>
        <!-- section content begin -->
            <div class="uk-section uk-padding-remove-vertical">
                <div class="uk-container uk-container-expand">
                    <div class="uk-grid" data-uk-height-viewport="expand: true">
                        <div class="uk-width-3-5@m uk-background-cover uk-background-center-right uk-visible@m uk-box-shadow-xlarge" style="background-image: url({{url('/')}}/asset/front/img/login.png);">
                        </div>
                        <div class="uk-width-expand@m uk-flex uk-flex-middle">
                            <div class="uk-grid uk-flex-center">
                                <div class="uk-width-3-5@m">
                                    <div class="in-padding-horizontal@s">
                                        <!-- module logo begin -->
                                        <a class="uk-logo" href="{{route('home')}}">
                                            <img class="uk-margin-small-right in-offset-top-10" src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/cw-l.png" alt="wave" width="350" height="50" data-uk-img>
                                        </a>
                                        @yield('content')
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- section content end -->
    </main>
    <!-- Javascript -->
    <script src="{{url('/')}}/asset/front/js/vendors/uikit.min.js"></script>
    <script src="{{url('/')}}/asset/front/js/vendors/indonez.min.js"></script>

    <script src="{{url('/')}}/asset/dashboard/vendor/jquery/dist/jquery.min.js"></script>
    <script src="{{url('/')}}/asset/js/toast.js"></script>
</body>

</html>
@yield('script')
@if (session('success'))
    <script>
      "use strict";
      toastr.success("{{ session('success') }}");
    </script>
@endif

@if (session('alert'))
    <script>
      "use strict";
      toastr.warning("{{ session('alert') }}");
    </script>
@endif

@if($set->recaptcha==1)
  {!! NoCaptcha::renderJs() !!}
@endif
