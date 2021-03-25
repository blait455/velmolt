<!DOCTYPE html>
<html class="no-js" lang="en">

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
    <title>{{ $title }} - {{$set->site_name}}</title>
    <!-- Critical preload -->
    <link rel="preload" href="{{url('/')}}/asset/front/js/vendors/uikit.min.js" as="script">
    <link rel="preload" href="{{url('/')}}/asset/front/css/vendors/uikit.min.css" as="style">
    <link rel="preload" href="{{url('/')}}/asset/front/css/style.css" as="style">
    <!-- Icon preload -->
    <link rel="preload" href="{{url('/')}}/asset/front/fonts/fa-brands-400.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{{url('/')}}/asset/front/fonts/fa-solid-900.woff2" as="font" type="font/woff2" crossorigin>
    <!-- Font preload -->
    <link rel="preload" href="{{url('/')}}/asset/front/fonts/rubik-v9-latin-500.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{{url('/')}}/asset/front/fonts/rubik-v9-latin-300.woff2" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{{url('/')}}/asset/front/fonts/rubik-v9-latin-regular.woff2" as="font" type="font/woff2" crossorigin>
    <!-- Favicon and apple icon -->
    <link rel="shortcut icon" href="{{url('/')}}/asset/front/img/cw-fav.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="{{url('/')}}/asset/front/img/cw-fav.png">
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
    <header>
        <!-- header content begin -->
        <div class="uk-section uk-padding-remove-vertical in-header-inner uk-background-cover uk-background-top-center" style="background-image: url({{url('/')}}/asset/front/img/in-wave-background-1.png);">
            <!-- module navigation begin -->
            <nav class="uk-navbar-container uk-navbar-transparent" data-uk-sticky="show-on-up: true; top: 80; animation: uk-animation-fade;">
                <div class="uk-container" data-uk-navbar>
                    <div class="uk-navbar-left uk-width-auto">
                        <div class="uk-navbar-item">
                            <!-- module logo begin -->
                            <a class="" href="{{route('home')}}">
                                <img class="uk-margin-small-right in-offset-top-10" src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/cw-l.png" alt="wave" width="300" height="23" data-uk-img>
                            </a>
                            <!-- module logo begin -->
                        </div>
                    </div>
                    <div class="uk-navbar-right uk-width-expand uk-flex uk-flex-right">
                        <ul class="uk-navbar-nav uk-visible@m">
                            <li><a href="{{route('home')}}">Home</a></li>
                            <li><a href="{{route('about')}}">About</a></li>
                            @if($set->plan==1)
                                <li><a href="{{route('plans')}}">Invest</a></li>
                            @endif
                            @if($set->blog==1)
                                <li><a href="{{route('blog')}}">Blog</a></li>
                            @endif
                            @if($set->contact==1)
                                <li><a href="{{route('contact')}}">Contact</a></li>
                            @endif
                            {{-- <li><a href="#">Legal</a></li> --}}
                        </ul>
                        <div class="uk-navbar-item uk-visible@m in-optional-nav">
                            @if (Auth::guard('user')->check())
                                <a href="{{route('user.dashboard')}}" class="uk-button uk-button-primary uk-button-small uk-border-pill">{{__('Dashboard')}}</a>
                            @else
                                <a href="{{route('login')}}" class="uk-button uk-button-text"><i class="fas fa-user-circle uk-margin-small-right"></i>Log in</a>
                                <a href="{{route('register')}}" class="uk-button uk-button-primary uk-button-small uk-border-pill">Sign up</a>
                            @endif
                        </div>
                    </div>
                </div>
            </nav>
            <!-- module navigation end -->

        </div>
        <!-- header content end -->
    </header>
    <main>
        @yield('content')
    </main>
    <footer>
        <!-- footer content begin -->
        <div class="uk-section uk-section-muted uk-padding-large uk-padding-remove-horizontal uk-margin-medium-top">
            <div class="uk-container">
                <div class="uk-grid-medium" data-uk-grid>
                    <div class="uk-width-expand@m">
                        <img class="uk-margin-small-right in-margin-top-30@s" src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/cw-l.png" alt="wave" width="300" height="23" data-uk-img>
                        <p class="uk-text-large uk-margin-small-top">{{$set->site_desc}}</p>
                        <p class="uk-visible@m">{{$set->address}} <br>
                            @if($set->contact==1)
                                <p>{{$set->email}}<br>{{$set->mobile}}</p>
                            @endif
                        </p>
                    </div>
                    <div class="uk-width-3-5@m">
                        <div class="uk-child-width-1-3@s uk-child-width-1-3@m" data-uk-grid>
                            <div>
                                <h4><span>Company</span></h4>
                                <ul class="uk-list uk-link-text">
                                    <li><a href="{{route('about')}}">Our story</a></li>
                                    <li><a href="{{route('about')}}">Contact us</a></li>
                                </ul>
                            </div>
                            <div>
                                <h4><span>Quick Links</span></h4>
                                <ul class="uk-list uk-link-text">
                                    <li><a href="{{route('home')}}">Home</a></li>
                                    <li><a href="{{route('plans')}}">Invest</a></li>
                                    <li><a href="{{route('blog')}}">Blog</a></li>
                                    @if (Auth::guard('user')->check())
                                        <li><a href="{{route('user.dashboard')}}">Dashboard</a></li>
                                    @else
                                        <li><a href="{{route('login')}}">Login</a></li>
                                        <li><a href="{{route('register')}}">Register</a></li>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-1-1 uk-margin-large-top in-offset-bottom-20">
                        <h6><i class="fas fa-exclamation-triangle fa-sm uk-text-danger uk-margin-small-right"></i>Risk warning</h6>
                        <p class="uk-text-small">The financial products offered via this website include digitals, contracts for difference (CFDs), and other complex derivatives and financial products. Trading options may not be suitable for everyone. Trading CFDs carries a high level of risk since leverage can work both to your advantage and disadvantage. As a result, the products offered on this website may not be suitable for all investors because of the risk of losing all of your invested capital. You should never invest money that you cannot afford to lose, and never trade with borrowed money. Before trading in the complex financial products offered, please be sure to understand the risks involved and learn about <a href="#">Secure and responsible trading.</a></p>
                        <hr>
                        <div class="uk-grid uk-flex uk-flex-middle" data-uk-grid>
                            <div class="uk-width-1-2@m">
                                <div class="uk-grid-small uk-flex uk-child-width-1-4@s uk-flex uk-child-width-1-5@m in-payment-method uk-text-center" data-uk-grid>
                                    <div>
                                        <div class="uk-card uk-card-default uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-visa.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-default uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-mastercard.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-default uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-skrill.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-default uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-paypal.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-default uk-card-small uk-card-body uk-visible@m">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-neteller.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="uk-width-1-2@m uk-text-right@m">
                                <div class="in-footer-socials in-margin-bottom-40@s">
                                    @foreach($social as $socials)
                                        @if(!empty($socials->value))
                                            <a href="{{$socials->value}}" class="icon-{{$socials->type}}"><i class="fab fa-{{$socials->type}}"></i></a>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-section uk-section-secondary uk-padding-remove-vertical">
            <div class="uk-container">
                <div class="uk-grid">
                    {{-- <div class="uk-width-3-4@m uk-visible@m">
                        <ul class="uk-subnav uk-subnav-divider">
                            <li><a href="#">Regulations</a></li>
                            <li><a href="#">Legal documents</a></li>
                            <li><a href="#">Important information</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Public relations</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div> --}}
                    <div class="uk-width-expand@m uk-text-right@m">
                        <p>{{$set->site_name}}  &copy; {{date('Y')}}. {{__('All Rights Reserved.')}}</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer content end -->
        <!-- module totop begin -->
        <div class="uk-visible@m">
            <a href="#" class="in-totop fas fa-chevron-up" data-uk-scroll></a>
        </div>
        <!-- module totop begin -->
    </footer>
    {!!$set->livechat!!}
    <!-- Javascript -->
    <script src="{{url('/')}}/asset/front/js/vendors/uikit.min.js"></script>
    <script src="{{url('/')}}/asset/front/js/vendors/indonez.min.js"></script>
    <script src="{{url('/')}}/asset/js/toast.js"></script>
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
</body>

</html>
