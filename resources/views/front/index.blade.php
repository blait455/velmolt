<!DOCTYPE html>
<html lang="zxx" dir="ltr">

<head>
    <!-- Standard Meta -->
    <meta charset="utf-8">
    <meta name="description" content="Premium HTML5 Template by Indonez">
    <meta name="keywords" content="blockit, uikit3, indonez, handlebars, scss, vanilla javascript">
    <meta name="author" content="Indonez">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#313131" />
    <!-- Site Properties -->
    <title>Homepage - Wave HTML5 Template</title>
    <!-- Critical preload -->
    <link rel="preload" href="{{ asset('asset/front/js/vendors/uikit.min.js')}}" as="script">
    <link rel="preload" href="{{ asset('asset/front/css/vendors/uikit.min.css')}}" as="style">
    <link rel="preload" href="{{ asset('asset/front/css/style.css')}}" as="style">
    <!-- Icon preload -->
    <link rel="preload" href="{{ asset('asset/front/fonts/fa-brands-400.woff2')}}" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{{ asset('asset/front/fonts/fa-solid-900.woff2')}}" as="font" type="font/woff2" crossorigin>
    <!-- Font preload -->
    <link rel="preload" href="{{ asset('asset/front/fonts/rubik-v9-latin-500.woff2')}}" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{{ asset('asset/front/fonts/rubik-v9-latin-300.woff2')}}" as="font" type="font/woff2" crossorigin>
    <link rel="preload" href="{{ asset('asset/front/fonts/rubik-v9-latin-regular.woff2')}}" as="font" type="font/woff2" crossorigin>
    <!-- Favicon and apple icon -->
    <link rel="shortcut icon" href="{{url('/')}}/asset/front/img/cw-fav.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="{{url('/')}}/asset/front/img/cw-fav.png">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="{{ asset('asset/front/css/vendors/uikit.min.css')}}">
    <link rel="stylesheet" href="{{ asset('asset/front/css/style.css')}}">
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
        <div class="uk-section uk-padding-remove-vertical in-header-home ">
            <!-- module navigation begin -->
            <nav class="uk-navbar-container uk-navbar-transparent" data-uk-sticky="show-on-up: true; top: 80; animation: uk-animation-fade;">
                <div class="uk-container" data-uk-navbar>
                    <div class="uk-navbar-left uk-width-auto">
                        <div class="uk-navbar-item">
                            <!-- module logo begin -->
                            <a class="uk-" href="{{route('home')}}">
                                <img class="uk-margin-small-right in-offset-top-10" src="{{url('/')}}/asset/front/img/cw-l2.png" data-src="{{url('/')}}/asset/front/img/cw-l2.png" alt="wave" width="300" height="23" data-uk-img>
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

        </div>
        <!-- header content end -->
    </header>
    <main>
        <div class="uk-section uk-padding-remove-vertical">
            <div class="in-slideshow" data-uk-slideshow>
                <ul class="uk-slideshow-items uk-light">
                    <li>
                        <div class="uk-position-cover">
                            <img src="img/in-lazy.gif" data-src="{{ asset('asset/front/img/slide1.jpg')}}" alt="slideshow-image" data-uk-cover width="1920" height="700" data-uk-img>
                        </div>
                        <span></span>
                        <div class="uk-container">
                            <div class="uk-grid" data-uk-grid>
                                <div class="uk-width-3-5@m">
                                    <div class="uk-overlay">
                                        <h1>Buy Shares and also Invest with Crypto</h1>
                                        <p class="uk-text-lead uk-visible@m">Access our investment plans – to grow, hedge and invest from a single account.</p>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-visible@m"><i class="fas fa-scroll uk-margin-small-right"></i>Discover it now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="uk-position-cover">
                            <img src="img/in-lazy.gif" data-src="{{ asset('asset/front/img/slide3.jpeg')}}" alt="slideshow-image" data-uk-cover width="1920" height="700" data-uk-img>
                        </div>
                        <span></span>
                        <div class="uk-container">
                            <div class="uk-grid" data-uk-grid>
                                <div class="uk-width-3-5@m">
                                    <div class="uk-overlay">
                                        <h1>Multi-regulated Global crypto and Shares Broker</h1>
                                        <p class="uk-text-lead uk-visible@m">A trusted destination for investors worldwide, Authorised by FCA, ASIC &amp; FSCA with multi-lingual support 24/5.</p>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-visible@m"><i class="fas fa-scroll uk-margin-small-right"></i>Discover it now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="uk-position-cover">
                            <img src="img/in-lazy.gif" data-src="{{ asset('asset/front/img/slide2.jpg')}}" alt="slideshow-image" data-uk-cover width="1920" height="700" data-uk-img>
                        </div>
                        <span></span>
                        <div class="uk-container">
                            <div class="uk-grid" data-uk-grid>
                                <div class="uk-width-3-5@m">
                                    <div class="uk-overlay">
                                        <h1>More investment options. More opportunities to grow.</h1>
                                        <p class="uk-text-lead uk-visible@m">Get access to stocks, bonds & CDs, options, non-proprietary mutual funds, futures and more to stay diversified and ready to take advantage of a wider range of opportunities.</p>
                                        <a href="{{route('plans')}}" class="uk-button uk-button-primary uk-border-rounded uk-visible@m"><i class="fas fa-scroll uk-margin-small-right"></i>Discover it now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="uk-container uk-light">
                    <ul class="uk-slideshow-nav uk-dotnav uk-position-bottom-center"></ul>
                </div>
            </div>
        </div> <!-- section content begin -->

        <div class="uk-section uk-section-muted uk-section-xsmall">
            <!-- TradingView Widget BEGIN -->
            <div class="tradingview-widget-container">
                <div class="tradingview-widget-container__widget"></div>
                <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com" rel="noopener" target="_blank"><span class="blue-text">Quotes</span></a> by TradingView</div>
                <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-tickers.js" async>
                {
                    "symbols": [
                    {
                        "description": "Tesla",
                        "proName": "NASDAQ:TSLA"
                    },

                    {
                        "description": "Apple Inc",
                        "proName": "NASDAQ:AAPL"
                    },

                    {
                        "description": "Aramco",
                        "proName": "SWB:HJ33"
                    },
                    {
                        "description": "Upwork",
                        "proName": "NASDAQ:UPWK"
                    },
                    {
                        "description": "Dropbox",
                        "proName": "NASDAQ:DBX"
                    }
                    ],
                    "colorTheme": "light",
                    "isTransparent": false,
                    "showSymbolLogo": true,
                    "locale": "en"
                }
                </script>
            </div>
            <!-- TradingView Widget END -->
        </div>

        <div class="uk-section uk-padding-large in-offset-bottom-70 in-wave-6">
            <div class="uk-container">
                <div class="uk-grid-collapse uk-position-relative" data-uk-grid>
                    <div class="uk-position-bottom-right">
                        <img src="{{url('/')}}/asset/front/img/in-wave-background-2.png" alt="wave-hq" width="540" height="513">
                    </div>
                    <div class="uk-width-1-1">
                        <h1>Join a club of more than 480,000 investors</h1>
                    </div>
                    <div class="uk-width-3-5@m">
                        <div class="uk-grid-medium uk-child-width-1-2@s uk-child-width-1-2@m uk-margin-medium-top uk-margin-medium-bottom" data-uk-grid>
                            <div>
                                <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                                    <div class="uk-flex uk-flex-middle">
                                        <div class="uk-margin-small-right">
                                            <i class="fas fa-award fa-2x in-icon-wrap small transparent"></i>
                                        </div>
                                        <div>
                                            <h4 class="uk-margin-remove">Smart</h4>
                                        </div>
                                    </div>
                                    <p class="uk-margin-small-top">Access smart portfolios designed by experts, that adjust automatically as you and your money grow.</p>
                                </div>
                            </div>
                            <div>
                                <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                                    <div class="uk-flex uk-flex-middle">
                                        <div class="uk-margin-small-right">
                                            <i class="fas fa-tools fa-2x in-icon-wrap small transparent"></i>
                                        </div>
                                        <div>
                                            <h4 class="uk-margin-remove">Easy</h4>
                                        </div>
                                    </div>
                                    <p class="uk-margin-small-top">Invest spare change automatically, set aside money from each paycheck, earn more, and get money tips on the go.</p>
                                </div>
                            </div>
                            <div>
                                <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                                    <div class="uk-flex uk-flex-middle">
                                        <div class="uk-margin-small-right">
                                            <i class="fas fa-users fa-2x in-icon-wrap small transparent"></i>
                                        </div>
                                        <div>
                                            <h4 class="uk-margin-remove">480,000+ clients</h4>
                                        </div>
                                    </div>
                                    <p class="uk-margin-small-top">We have a pool of investors with whom we have a community that propels this business, here we are customer-centric</p>
                                </div>
                            </div>
                            <div>
                                <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                                    <div class="uk-flex uk-flex-middle">
                                        <div class="uk-margin-small-right">
                                            <i class="fas fa-building fa-2x in-icon-wrap small transparent"></i>
                                        </div>
                                        <div>
                                            <h4 class="uk-margin-remove">Trusted</h4>
                                        </div>
                                    </div>
                                    <p class="uk-margin-small-top">Backed by leading investors and innovators, from Blackrock to CNBC, and chosen by more than 8 million people.</p>
                                </div>
                            </div>
                        </div>
                        <p class="uk-text-small uk-text-muted uk-margin-large-bottom">
                            <a href="{{ route('register') }}" class="uk-button uk-button-primary uk-button-small uk-border-pill">Get started</a>
                            Capital wave offers a lot better options <a href="{{ route('register') }}">Join now!</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->
        <!-- section content begin -->
        <div class="uk-section uk-section-muted uk-padding-large uk-background-cover uk-background-center-center" style="background-image: url({{url('/')}}/asset/front/img/in-wave-background-3.jpg);">
            <div class="uk-container in-wave-7">
                <div class="uk-grid uk-flex uk-flex-center">
                    <div class="uk-width-3-4@m">
                        <h4 class="uk-text-primary uk-margin-remove-bottom">Invest with confidence</h4>
                        <h1 class="uk-margin-small-top uk-margin-remove-bottom">New level of security</h1>
                        <div class="uk-grid-divider uk-child-width-1-2@s uk-child-width-1-2@m uk-margin-medium-top" data-uk-grid>
                            <div>
                                <img class="uk-margin-remove-bottom" src="{{url('/')}}/asset/front/img/in-wave-icon-8.svg" alt="wave-icon" width="64">
                                <h3 class="uk-margin-small-top">Regulations &amp; funds</h3>
                                <p>Our layered defense systems and encryption help protect your personal information and activities.</p>
                            </div>
                            <div>
                                <img class="uk-margin-remove-bottom" src="{{url('/')}}/asset/front/img/in-wave-icon-9.svg" alt="wave-icon" width="64">
                                <h3 class="uk-margin-small-top">Depth of protection</h3>
                                <p>Get instant notifications for transactions in your account, as well as stock, news, and portfolio alerts. To ensure prompt access, we recommend that you set your delivery preferences to receive your alerts via email. If we suspect your account has been the target of fraud, we'll send you a high-priority security alert.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->

        <!-- section content begin -->
        <div class="uk-section">
            <div class="uk-container">
                <div class="uk-width-1-1 uk-text-center">
                    <h1 class="uk-margin-medium-bottom">Grow your knowledge</h1>
                </div>
                <div class="uk-grid-medium uk-child-width-1-3@m in-testimonial-7" data-uk-grid>
                    @foreach ($posts as $post)
                        <div>
                            <div class="uk-card uk-card-default uk-box-shadow-small uk-border-rounded">
                                <div class="uk-card-body">
                                    <h2 class="uk-margin-remove-bottom">{!! \Illuminate\Support\Str::words($post->title, 7) !!}</h2>
                                    <p>{!! \Illuminate\Support\Str::words($post->details, 18) !!} <br> <a class="uk-text-small uk-text-uppercase uk-margin-small-left" href="{{url('/')}}/single/{{$post->id}}/{{str_slug($post->title)}}">Learn more<i class="fas fa-long-arrow-alt-right fa-sm uk-margin-small-left"></i></a></p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- section content end -->

        <!-- section content begin -->
        <div class="uk-section uk-section-muted uk-padding-large in-wave-3 uk-background-contain uk-background-center" style="background-image: url({{url('/')}}/asset/front/img/in-wave-background-1.png);" data-uk-parallax="bgy: -200">
            <div class="uk-container">
                <div class="uk-grid-large uk-flex uk-flex-middle" data-uk-grid>
                    <div class="uk-width-1-2@m">
                        <img class="uk-margin-bottom" src="img/in-lazy.gif" data-src="img/in-wave-icon-5.svg" alt="wave-icon" width="64" height="64" data-uk-img>
                        <h1 class="uk-margin-remove">Why invest with us</h1>
                        <p>Our tools, info, and professional guidance mean you’ll never have to face the markets on your own.</p>
                        <div class="uk-grid-medium uk-child-width-1-2@s uk-child-width-1-3@m uk-text-center uk-margin-medium-top" data-uk-grid>
                            <div>
                                <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                                    <img class="uk-margin-remove-bottom" src="img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-icon-6.svg" alt="wave-icon" width="52" height="52" data-uk-img>
                                    <h5 class="uk-margin-small-top">Flexibility &amp; Discussions</h5>
                                </div>
                            </div>
                            <div>
                                <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                                    <img class="uk-margin-remove-bottom" src="img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-icon-7.svg" alt="wave-icon" width="52" height="52" data-uk-img>
                                    <h5 class="uk-margin-small-top">Growth potential</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-1-2@m">
                        <div class="uk-inline uk-dark in-wave-video uk-margin-small-bottom">
                            <img class="uk-border-rounded uk-width-1-1" src="img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-image-1.jpg" alt="wave-video" width="533" height="355" data-uk-img>
                            <div class="uk-position-center">
                                <a href="#modal-media-youtube" data-uk-toggle>
                                    <div class="in-play-button"></div>
                                    <i class="fas fa-play"></i>
                                </a>
                            </div>
                            <div id="modal-media-youtube" class="uk-flex-top" data-uk-modal>
                                <div class="uk-modal-dialog uk-width-auto uk-margin-auto-vertical in-iframe">
                                    <button class="uk-modal-close-outside" type="button" data-uk-close></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->
        <!-- section content end -->
        <div class="uk-section"><br>
            <div class="uk-width-1-1 uk-text-center">
                <h1 class="uk-margin-medium-bottom">See what others have to say
                </h1>
            </div>
            <div class="uk-section uk-section-xsmall">
                <div class="uk-container">
                    <div class="uk-grid">
                        <div class="uk-width-1-1">
                            <div data-uk-slider="autoplay: true; autoplay-interval: 5000">
                                <ul class="uk-grid-divider uk-child-width-1-3@s uk-child-width-1-5@m uk-slider-items" data-uk-grid>
                                    <li class="uk-width-1-3">
                                        <div class="uk-grid uk-grid-small">
                                            <blockquote>
                                                <p class="uk-margin-bottom uk-text-small uk-text-center">Investing is one of the effective ways to build wealth, and you dont need a lot of money to get started thanks to capital wave</p>
                                                <footer>CNBC</footer>
                                            </blockquote>
                                        </div>
                                    </li>
                                    <li class="uk-width-1-3">
                                        <div class="uk-grid uk-grid-small">
                                            <blockquote>
                                                <p class="uk-margin-bottom uk-text-small">Capital wave i my favorite money platform because it makes it simple and cheap to make small investments</p>
                                                <footer>Business insider</footer>
                                            </blockquote>
                                        </div>
                                    </li>
                                    <li class="uk-width-1-3">
                                        <div class="uk-grid uk-grid-small">
                                            <blockquote>
                                                <p class="uk-margin-bottom uk-text-small">The hard part is putting money aside but capital wave does it for you</p>
                                                <footer>Anthony Torres</footer>
                                            </blockquote>
                                        </div>
                                    </li>
                                    <li class="uk-width-1-3">
                                        <blockquote>
                                            <p class="uk-margin-bottom uk-text-small">You think you need thousands of dollars to invest  or it's for the rich folks.. not the case anymore because there's capital wave.</p>
                                            <footer>Mike Jonas</footer>
                                        </blockquote>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content begin -->
        <!-- section content begin -->
        <div class="uk-section ">
            <div class="in-wave-3">
                <div class="uk-grid uk-flex uk-flex-center">
                    <div class="uk-width-1-1 uk-text-center">
                        <h1 class="uk-margin-medium-bottom">Complete package for everyone</h1>
                    </div>
                    <div class="uk-section">
                        <div class="uk-container">
                            <div class="uk-grid-medium uk-child-width-1-3@m in-testimonial-7" data-uk-grid>
                                <div class="uk-width-1-2@s uk-width-1-4@m">
                                    <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded">
                                        <p class="uk-text-small uk-text-uppercase">Minimum funding<span class="uk-label uk-border-pill uk-text-small uk-margin-small-left">$100</span></p>
                                        <h2 class="uk-margin-top uk-margin-remove-bottom">Lite Plan</h2>
                                        <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><small>{{__('Payouts wont be available till end of plan duration')}}</small></p>
                                        <hr>
                                        <ul class="in-faq-5" data-uk-accordion="collapsible: true">
                                            <li class="uk-open">
                                                <a class="uk-accordion-title" href="#">Details</a>
                                                <div class="uk-accordion-content">
                                                    <ul class="uk-list uk-list-bullet">
                                                        <li>{{__('Profit Topup is Automated')}}</li>
                                                        <li>{{__('For')}} 5 Day(s)</li>
                                                        <li>10% {{__('Weekly')}}</li>
                                                        <li>Compoundment bonus: 5%</li>
                                                        <li>Capitals are withdrawable</li>
                                                        <li>Other special benefits...</li>
                                                    </ul>
                                                    <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><strong>{{__('Maximum Price')}}: $500</strong></p>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-align-center">Invest<i class="fas fa-chevron-circle-right fa-xs uk-margin-small-left"></i></a>
                                    </div>
                                </div>
                                <div class="uk-width-1-2@s uk-width-1-4@m">
                                    <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded">
                                        <p class="uk-text-small uk-text-uppercase">Minimum funding<span class="uk-label uk-border-pill uk-text-small uk-margin-small-left">$1,000</span></p>
                                        <h2 class="uk-margin-top uk-margin-remove-bottom">Compact Plan</h2>
                                        <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><small>{{__('Payouts wont be available till end of plan duration')}}</small></p>
                                        <hr>
                                        <ul class="in-faq-5" data-uk-accordion="collapsible: true">
                                            <li class="uk-open">
                                                <a class="uk-accordion-title" href="#">Details</a>
                                                <div class="uk-accordion-content">
                                                    <ul class="uk-list uk-list-bullet">
                                                        <li>{{__('Profit Topup is Automated')}}</li>
                                                        <li>12% {{__('Weekly')}}</li>
                                                        <li>Referal bonus: 5%</li>
                                                        <li>Compoundment bonus: 5%</li>
                                                        <li>Capitals are withdrawable</li>
                                                        <li>Other special benefits...</li>
                                                    </ul>
                                                    <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><strong>{{__('Maximum Price')}}: $5,000</strong></p>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-align-center">Invest<i class="fas fa-chevron-circle-right fa-xs uk-margin-small-left"></i></a>
                                    </div>
                                </div>
                                <div class="uk-width-1-2@s uk-width-1-4@m">
                                    <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded">
                                        <p class="uk-text-small uk-text-uppercase">Minimum funding<span class="uk-label uk-border-pill uk-text-small uk-margin-small-left">$5,100</span></p>
                                        <h2 class="uk-margin-top uk-margin-remove-bottom">Platinum Plan</h2>
                                        <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><small>{{__('Payouts wont be available till end of plan duration')}}</small></p>
                                        <hr>
                                        <ul class="in-faq-5" data-uk-accordion="collapsible: true">
                                            <li class="uk-open">
                                                <a class="uk-accordion-title" href="#">Details</a>
                                                <div class="uk-accordion-content">
                                                    <ul class="uk-list uk-list-bullet">
                                                        <li>{{__('Profit Topup is Automated')}}</li>
                                                        <li>15% {{__('Weekly')}}</li>
                                                        <li>Referal bonus: 5%</li>
                                                        <li>Compoundment bonus: 5%</li>
                                                        <li>Capitals are withdrawable</li>
                                                        <li>Other special benefits...</li>
                                                    </ul>
                                                    <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><strong>{{__('Maximum Price')}}: $10,000</strong></p>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-align-center">Invest<i class="fas fa-chevron-circle-right fa-xs uk-margin-small-left"></i></a>
                                    </div>
                                </div>
                                <div class="uk-width-1-2@s uk-width-1-4@m">
                                    <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded">
                                        <p class="uk-text-small uk-text-uppercase">Minimum funding<span class="uk-label uk-border-pill uk-text-small uk-margin-small-left">$11,000</span></p>
                                        <h2 class="uk-margin-top uk-margin-remove-bottom">Premium Plan</h2>
                                        <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><small>{{__('Payouts wont be available till end of plan duration')}}</small></p>
                                        <hr>
                                        <ul class="in-faq-5" data-uk-accordion="collapsible: true">
                                            <li class="uk-open">
                                                <a class="uk-accordion-title" href="#">Details</a>
                                                <div class="uk-accordion-content">
                                                    <ul class="uk-list uk-list-bullet">
                                                        <li>{{__('Profit Topup is Automated')}}</li>
                                                        <li>17% {{__('Weekly')}}</li>
                                                        <li>Referal bonus: 5%</li>
                                                        <li>Compoundment bonus: 5%</li>
                                                        <li>Capitals are withdrawable</li>
                                                        <li>Other special benefits...</li>
                                                    </ul>
                                                    <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><strong>{{__('Maximum Price')}}: $50,000</strong></p>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-align-center">Invest<i class="fas fa-chevron-circle-right fa-xs uk-margin-small-left"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->
        <!-- section content begin -->
        <div class="uk-section uk-padding-large">
            <div class="uk-container in-wave-8">
                <div class="uk-grid uk-flex uk-flex-center">
                    <div class="uk-width-3-5@m uk-text-center">
                        <h1 class="uk-margin-remove">We handle shares</h1>
                        <p class="uk-text-lead uk-text-muted uk-margin-small-top uk-margin-bottom">you can buy shares with crypto now</p>
                        <br>
                    </div>
                    <div class="uk-width-1-1">
                        <div class="uk-grid-large uk-child-width-1-2@m" data-uk-grid>
                            <div>
                                <ul class="uk-list uk-list-divider in-front-news">
                                    <li>
                                        <div class="uk-grid-collapse uk-flex uk-flex-middle" data-uk-grid>
                                            <div class="uk-width-auto">
                                                <img class="uk-border-rounded" src="{{ asset('asset/front/img/Tesla_logo.png')}}" alt="sample-image" width="94" height="94">
                                            </div>
                                            <div class="uk-width-expand uk-margin-medium-left">
                                                <a href="{{route('user.plans')}}">
                                                    <span class="uk-text-lead uk-display-block uk-margin-small-bottom">​Tesla​</span>
                                                </a>
                                                <span>Minimum: 3 shares</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="uk-text-lead">$650 <sub>pps</sub></span><br>
                                                <span class="uk-article-meta uk-text-small"><i class="fas fa-clock fa-sm uk-margin-small-right"></i>Q3</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="uk-grid-collapse uk-flex uk-flex-middle" data-uk-grid>
                                            <div class="uk-width-auto">
                                                <img class="uk-border-rounded" src="{{ asset('asset/front/img/aramco-logo.png')}}" alt="sample-image" width="94" height="94">
                                            </div>
                                            <div class="uk-width-expand uk-margin-medium-left">
                                                <a href="{{route('user.plans')}}">
                                                    <span class="uk-text-lead uk-display-block uk-margin-small-bottom">Arab Aramco​</span>
                                                </a>
                                                <span>Minimum: 5 shares </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="uk-text-lead">$160 <sub>pps</sub></span><br>
                                                <span class="uk-article-meta uk-text-small"><i class="fas fa-clock fa-sm uk-margin-small-right"></i>Q3</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="uk-grid-collapse uk-flex uk-flex-middle" data-uk-grid>
                                            <div class="uk-width-auto">
                                                <img class="uk-border-rounded" src="{{ asset('asset/front/img/apple.png')}}" alt="sample-image" width="94" height="94">
                                            </div>
                                            <div class="uk-width-expand uk-margin-medium-left">
                                                <a href="{{route('user.plans')}}">
                                                    <span class="uk-text-lead uk-display-block uk-margin-small-bottom">​A​ple Inc</span>
                                                </a>
                                                <span>Minimum: 5 shares </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="uk-text-lead">$170 <sub>pps</sub></span><br>
                                                <span class="uk-article-meta uk-text-small"><i class="fas fa-clock fa-sm uk-margin-small-right"></i>Q3</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="uk-grid-collapse uk-flex uk-flex-middle" data-uk-grid>
                                            <div class="uk-width-auto">
                                                <img class="uk-border-rounded" src="{{ asset('asset/front/img/upwork.png')}}" alt="sample-image" width="94" height="94">
                                            </div>
                                            <div class="uk-width-expand uk-margin-medium-left">
                                                <a href="{{route('user.plans')}}">
                                                    <span class="uk-text-lead uk-display-block uk-margin-small-bottom">​Upwork</span>
                                                </a>
                                                <span>Minimum: 8 shares</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="uk-text-lead">$40 <sub>pps</sub></span><br>
                                                <span class="uk-article-meta uk-text-small"><i class="fas fa-clock fa-sm uk-margin-small-right"></i>Q3</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div>
                                <!-- TradingView Widget BEGIN -->
                                <div class="tradingview-widget-container">
                                    <div class="tradingview-widget-container__widget"></div>
                                    <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/markets/stocks-usa/" rel="noopener" target="_blank"><span class="blue-text">Stock Market Today</span></a> by TradingView</div>
                                    <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-hotlists.js" async>
                                    {
                                    "colorTheme": "light",
                                    "dateRange": "12M",
                                    "exchange": "US",
                                    "showChart": true,
                                    "locale": "en",
                                    "largeChartUrl": "",
                                    "isTransparent": false,
                                    "showSymbolLogo": false,
                                    "width": "400",
                                    "height": "600",
                                    "plotLineColorGrowing": "rgba(33, 150, 243, 1)",
                                    "plotLineColorFalling": "rgba(33, 150, 243, 1)",
                                    "gridLineColor": "rgba(240, 243, 250, 1)",
                                    "scaleFontColor": "rgba(120, 123, 134, 1)",
                                    "belowLineFillColorGrowing": "rgba(241, 194, 50, 0.12)",
                                    "belowLineFillColorFalling": "rgba(33, 150, 243, 0.12)",
                                    "symbolActiveColor": "rgba(241, 194, 50, 0.12)"
                                }
                                    </script>
                                </div>
                                <!-- TradingView Widget END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->
        <!-- section content begin -->
        <div class="uk-section uk-section-primary in-offset-bottom-40">
            <div class="uk-container in-wave-10">
                <div class="uk-grid uk-position-relative uk-flex uk-flex-middle">
                    <div class="uk-position-bottom-right in-offset-bottom-40">
                        <img src="{{url('/')}}/asset/front/img/in-wave-background-4.svg" alt="wave-hq" width="500">
                    </div>
                    <div class="uk-width-auto@m uk-text-center">
                        <img src="{{url('/')}}/asset/front/img/in-wave-icon-10.svg" alt="wave-icon" width="96">
                    </div>
                    <div class="uk-width-3-5@m">
                        <h2 class="uk-margin-remove-bottom">Financial strength you can depend on</h2>
                        <p>Invest spare change automatically, set aside money from each paycheck, earn more, and get money tips on the go.<a class="uk-text-small uk-text-uppercase uk-margin-small-left" href="{{ route('plans')}}">Learn more<i class="fas fa-long-arrow-alt-right fa-sm uk-margin-small-left"></i></a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->
    </main>
    <footer>
        <!-- footer content begin -->
        <div class="uk-section uk-section-muted uk-padding-large uk-padding-remove-horizontal uk-margin-medium-top">
            <div class="uk-container">
                <div class="uk-grid-medium" data-uk-grid>
                    <div class="uk-width-expand@m">
                        <img class="uk-margin-small-right in-margin-top-30@s" src="{{url('/')}}/asset/front/img/in-lazy.gi" data-src="{{url('/')}}/asset/front/img/cw-l.png" alt="wave" width="300" height="23" data-uk-img>
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
                                        <div class="uk-card uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-visa.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-mastercard.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-skrill.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-small uk-card-body">
                                            <img src="{{url('/')}}/asset/front/img/in-lazy.gif" data-src="{{url('/')}}/asset/front/img/in-wave-paypal.svg" alt="wave-payment" width="59" height="22" data-uk-img>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="uk-card uk-card-small uk-card-body uk-visible@m">
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
    <script src="{{ asset('asset/front/js/vendors/uikit.min.js')}}"></script>
    <script src="{{ asset('asset/front/js/vendors/indonez.min.js')}}"></script>
    <script src="{{ asset('asset/front/js/config-theme.js')}}"></script>
</body>

</html>
