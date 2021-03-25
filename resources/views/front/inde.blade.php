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
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="{{url('/')}}/asset/front/css/vendors/uikit.min.css">
    <link rel="stylesheet" href="{{url('/')}}/asset/front/css/style.css">
    {{-- <link rel="stylesheet" href="{{url('/')}}/asset/css/toast.css" type="text/css"> --}}
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
                            <a class="uk-logo" href="index.html">
                                <img class="uk-margin-small-right in-offset-top-10" src="img/in-lazy.gif" data-src="img/in-logo-1.svg" alt="wave" width="134" height="23" data-uk-img>
                            </a>
                            <!-- module logo begin -->
                        </div>
                    </div>
                    <div class="uk-navbar-right uk-width-expand uk-flex uk-flex-right">
                        <ul class="uk-navbar-nav uk-visible@m">
                            <li><a href="index.html">Home<i class="fas fa-chevron-down"></i></a>
                                <div class="uk-navbar-dropdown">
                                    <ul class="uk-nav uk-navbar-dropdown-nav">
                                        <li><a href="homepage2.html">Homepage 2</a></li>
                                        <li><a href="homepage3.html">Homepage 3</a></li>
                                        <li><a href="homepage4.html">Homepage 4</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="markets.html">Markets</a></li>
                            <li><a href="#">Company<i class="fas fa-chevron-down"></i></a>
                                <div class="uk-navbar-dropdown">
                                    <ul class="uk-nav uk-navbar-dropdown-nav">
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="blog-list.html">Blog</a></li>
                                        <li><a href="careers.html">Careers</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="education.html">Education</a></li>
                            <li><a href="#">Resources<i class="fas fa-chevron-down"></i></a>
                                <div class="uk-navbar-dropdown uk-navbar-dropdown-width-2">
                                    <div class="uk-navbar-dropdown-grid uk-child-width-1-2" data-uk-grid>
                                        <div>
                                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                                <li><a href="https://getuikit.com/docs/">Documentation<i class="fas fa-external-link-square-alt fa-sm"></i></a></li>
                                                <li><a href="help-center.html">Help Center</a></li>
                                                <li><a href="customers.html">Customers</a></li>
                                                <li><a href="roadmap.html">Roadmap</a></li>
                                                <li><a href="legal-docs.html">Legal Docs<i class="fas fa-gavel fa-sm"></i></a></li>
                                            </ul>
                                        </div>
                                        <div>
                                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                                <li><a class="uk-disabled" href="#">Adipiscing elit sed do eiusmod incididunt ut labore dolore magna lorem ipsum sit dolor amet consectetur</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="uk-navbar-item uk-visible@m in-optional-nav">
                            <a href="signin.html" class="uk-button uk-button-text"><i class="fas fa-user-circle uk-margin-small-right"></i>Log in</a>
                            <a href="#" class="uk-button uk-button-primary uk-button-small uk-border-pill">Sign up</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- module navigation end -->
            <div class="uk-container">
                <div class="uk-grid">
                    <div class="uk-width-1-1">
                        <div class="uk-card uk-card-secondary uk-card-small uk-card-body uk-border-rounded">
                            <div class="uk-grid uk-text-small" data-uk-grid>
                                <div class="uk-width-3-4@m uk-visible@m">
                                    <p>Trading involves substantial risk and may result in the loss of your invested/greater that your invested capital, respectively.</p>
                                </div>
                                <div class="uk-width-expand@m uk-text-center uk-text-right@m">
                                    <a class="uk-margin-right" href="#"><i class="fas fa-comment-alt uk-margin-small-right"></i>Live Chat</a>
                                    <a href="#"><i class="fas fa-phone-alt uk-margin-small-right uk-margin-small-left"></i>1-800-123-4567</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header content end -->
    </header>
<main>
    <div class="uk-section uk-padding-remove-vertical">
        <div class="in-slideshow" data-uk-slideshow>
            <ul class="uk-slideshow-items uk-light">
                <li>
                    <div class="uk-position-cover">
                        <img src="img/in-lazy.gif" data-src="{{('/')}}/asset/front/img/in-slideshow-image-1.jpg" alt="slideshow-image" data-uk-cover width="1920" height="700" data-uk-img>
                    </div>
                    <span></span>
                    <div class="uk-container">
                        <div class="uk-grid" data-uk-grid>
                            <div class="uk-width-3-5@m">
                                <div class="uk-overlay">
                                    <h1>Trade Shares and Forex with Financial Thinking</h1>
                                    <p class="uk-text-lead uk-visible@m">Access 40,000+ instruments – across asset classes – to trade, hedge and invest from a single account.</p>
                                    <a href="#" class="uk-button uk-button-primary uk-border-rounded uk-visible@m"><i class="fas fa-scroll uk-margin-small-right"></i>Discover it now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="uk-position-cover">
                        <img src="img/in-lazy.gif" data-src="img/in-slideshow-image-2.jpg" alt="slideshow-image" data-uk-cover width="1920" height="700" data-uk-img>
                    </div>
                    <span></span>
                    <div class="uk-container">
                        <div class="uk-grid" data-uk-grid>
                            <div class="uk-width-3-5@m">
                                <div class="uk-overlay">
                                    <h1>Multi-regulated Global Forex and Shares Broker</h1>
                                    <p class="uk-text-lead uk-visible@m">A trusted destination for traders worldwide, Authorised by FCA, ASIC &amp; FSCA with multi-lingual support 24/5.</p>
                                    <a href="#" class="uk-button uk-button-primary uk-border-rounded uk-visible@m"><i class="fas fa-scroll uk-margin-small-right"></i>Discover it now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="uk-position-cover">
                        <img src="img/in-lazy.gif" data-src="img/in-slideshow-image-3.jpg" alt="slideshow-image" data-uk-cover width="1920" height="700" data-uk-img>
                    </div>
                    <span></span>
                    <div class="uk-container">
                        <div class="uk-grid" data-uk-grid>
                            <div class="uk-width-3-5@m">
                                <div class="uk-overlay">
                                    <h1>Award-winning Products and Trading platforms</h1>
                                    <p class="uk-text-lead uk-visible@m">Tap into the world's markets and explore endless trading opportunities with tight spreads and no commission.</p>
                                    <a href="#" class="uk-button uk-button-primary uk-border-rounded uk-visible@m"><i class="fas fa-scroll uk-margin-small-right"></i>Discover it now</a>
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

    <!-- section content end -->
    <!-- section content begin -->
    {{-- <div class="uk-section">
        <div class="uk-container in-wave-9">
            <div class="uk-grid uk-flex uk-flex-center">
                <div class="uk-width-3-4@m">
                    <div class="uk-grid-large uk-child-width-1-2@s uk-child-width-1-2@m uk-flex uk-flex-middle" data-uk-grid>
                        <div>
                            <img src="{{url('/')}}/asset/front/img/www.png" alt="wave-mockup">
                        </div>
                        <div>
                            <h1 class="uk-margin-remove-bottom in-offset-top-50">Capital-wave</h1>
                            <p class="uk-text-lead uk-text-muted uk-margin-remove-top">helps you grow your crypto currencies</p>
                            <p class="uk-margin-medium-bottom">Take control with all-in-one investment, checking and more.</p>
                            <a href="#" class="uk-button top-btn uk-button-secondary uk-border-rounded in-button-app">
                                <span class="txt">Get Started</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <!-- section content end -->

    <div class="uk-section uk-section-muted uk-section-xsmall">
        <div class="uk-container">
            <div class="uk-grid">
                <div class="uk-width-1-1">
                    <div data-uk-slider="autoplay: true; autoplay-interval: 5000">
                        <ul class="uk-grid-divider uk-child-width-1-3@s uk-child-width-1-5@m uk-slider-items" data-uk-grid>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>XAU/USD</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">1730.69</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">1731.44</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>GBP/USD</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">1.2382</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">1.2383</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>EUR/USD</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">1.1240</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">1.1245</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>USD/JPY</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">106.915</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">106.924</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>USD/CAD</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">1.3591</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">1.3593</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>USD/CHF</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">0.9506</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">0.9508</span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="uk-grid uk-grid-small">
                                    <div class="uk-width-1-1 uk-text-center">
                                        <h5>AUD/USD</h5>
                                    </div>
                                    <div class="uk-width-1-2">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Bid</p>
                                        <span class="uk-label uk-text-small uk-label-success uk-border-pill">0.6868</span>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <p class="uk-text-small uk-text-uppercase uk-margin-remove">Ask</p>
                                        <span class="uk-label uk-text-small uk-label-danger uk-border-pill">0.6869</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="uk-section uk-padding-large in-offset-bottom-70 in-wave-6">
        <div class="uk-container">
            <div class="uk-grid-collapse uk-position-relative" data-uk-grid>
                <div class="uk-position-bottom-right">
                    <img src="{{url('/')}}/asset/front/img/in-wave-background-2.png" alt="wave-hq" width="540" height="513">
                </div>
                <div class="uk-width-1-1">
                    <h1>Join a club of more than <span class="in-highlight">480,000</span> investors</h1>
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
                        <span class="uk-label uk-text-small uk-text-uppercase uk-border-pill uk-margin-small-right">Start investing</span>
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
                    <h1 class="uk-margin-small-top uk-margin-remove-bottom">New level of <span class="in-highlight">security</span></h1>
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
                    <div class="in-create-account uk-margin-medium-top">
                        <span class="uk-label uk-text-small uk-text-uppercase uk-border-pill uk-margin-small-bottom">Open your account</span>
                        <p class="uk-margin-remove-top uk-visible@m">Connect with over 5 millions investors in the world’s leading social investment network</p>
                        <form class="uk-grid-small" data-uk-grid>
                            <div class="uk-width-1-1 uk-width-1-4@m">
                                <input class="uk-input uk-border-rounded" type="text" placeholder="Full name">
                            </div>
                            <div class="uk-width-1-1 uk-width-1-4@m">
                                <input class="uk-input uk-border-rounded" type="text" placeholder="Email address">
                            </div>
                            <div class="uk-width-1-1 uk-width-1-4@m">
                                <input class="uk-input uk-border-rounded" type="text" placeholder="Phone number">
                            </div>
                            <div class="uk-width-1-1 uk-width-1-4@m">
                                <a href="{{ route('register') }}" class="uk-button uk-button-primary uk-border-rounded uk-width-expand">Create Account</a>
                            </div>
                        </form>
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
                <h1 class="uk-margin-medium-bottom"><span class="in-highlight">Grow</span> your knowledge</h1>
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
                    <h1 class="uk-margin-remove">Why <span class="in-highlight">invest</span> with us</h1>
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
    <!-- section content begin -->
    <div class="uk-section ">
        <div class="in-wave-3">
            <div class="uk-grid uk-flex uk-flex-center">
                <div class="uk-width-1-1 uk-text-center">
                    <h1 class="uk-margin-medium-bottom"><span class="in-highlight">Complete</span> package for every trader</h1>
                </div>
                <div class="uk-section">
                    <div class="uk-container">
                        <div class="uk-grid-medium uk-child-width-1-3@m in-testimonial-7" data-uk-grid>
                            @foreach ($plan as $val)
                                <div class="uk-width-1-2@s uk-width-1-4@m">
                                    <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium uk-border-rounded">
                                        <p class="uk-text-small uk-text-uppercase">Minimum funding<span class="uk-label uk-border-pill uk-text-small uk-margin-small-left">${{($val->min_deposit)}}</span></p>
                                        <h2 class="uk-margin-top uk-margin-remove-bottom">{{$val->name}}</h2>
                                        <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><small>{{__('Payouts wont be available till end of plan duration')}}</small></p>
                                        <hr>
                                        <ul class="in-faq-5" data-uk-accordion="collapsible: true">
                                            <li class="uk-open">
                                                <a class="uk-accordion-title" href="#">Details</a>
                                                <div class="uk-accordion-content">
                                                    <ul class="uk-list uk-list-bullet">
                                                        <li>{{__('Profit Topup is Automated')}}</li>
                                                        <li>{{__('For')}} {{$val->duration}} {{$val->period}}(s)</li>
                                                        <li>{{$val->percent}}% {{__('Daily')}}</li>
                                                        @if($val->ref_percent!=null)
                                                            <li>{{$val->ref_percent}}% {{__('Referral Percent')}}</li>
                                                        @endif
                                                        @if($val->bonus!=null)
                                                            <li>{{$val->bonus}}% {{__('Trading Bonus')}}</li>
                                                        @endif
                                                    </ul>
                                                    <p class="uk-text-lead uk-text-muted uk-margin-remove-top"><strong>{{__('Maximum Price')}}: {{$currency->symbol.number_format($val->amount)}}</strong></p>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="{{route('register')}}" class="uk-button uk-button-primary uk-border-rounded uk-align-center">Invest<i class="fas fa-chevron-circle-right fa-xs uk-margin-small-left"></i></a>
                                    </div>
                                </div>
                            @endforeach
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
                                <a href="#"><i class="fab fa-youtube"></i></a>
                                <a href="#"><i class="fab fa-facebook-square"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
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
                <div class="uk-width-3-4@m uk-visible@m">
                    <ul class="uk-subnav uk-subnav-divider">
                        <li><a href="#">Regulations</a></li>
                        <li><a href="#">Legal documents</a></li>
                        <li><a href="#">Important information</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Public relations</a></li>
                        <li><a href="#">Careers</a></li>
                    </ul>
                </div>
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
