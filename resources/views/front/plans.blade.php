@extends('layout')
@section('css')

@stop
@section('content')
    <!-- section content begin -->
    <div class="uk-section">
        <div class="uk-container">
            <div class="in-wave-3">
                <div class="uk-grid uk-flex uk-flex-center">
                    <div class="uk-width-1-1 uk-text-center">
                        <h1 class="uk-margin-medium-bottom">Complete package for every one</h1>
                    </div>
                    <div class="uk-section">
                        <div class="uk-container">
                            <div class="uk-grid-medium uk-child-width-1-3@m in-testimonial-7" data-uk-grid>
                                {{-- @foreach ($plan as $val)
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
                                @endforeach --}}
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
            <hr>
        </div>
    </div>
    <!-- section content end -->
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
                                <div class="uk-grid uk-grid-small uk-section-muted">
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
    <!-- section content begin -->
    <div class="uk-section">
        <div class="uk-container"><hr><br>
            <div class="uk-grid">
                <div class="uk-width-2-3@m">
                    <div class="uk-grid uk-grid-small" data-uk-grid>
                        <div class="uk-width-auto@m">
                            <i class="fas fa-money-bill-wave fa-2x in-icon-wrap large primary-color uk-margin-right"></i>
                        </div>
                        <div class="uk-width-expand">
                            <h3>Own a piece of a company's future.</h3>
                            <p>One of the primary characteristics of any asset is its liquidity – We are assuring you of bountiful returns on your investments with us</p>
                            <div class="uk-grid uk-child-width-1-2@s uk-child-width-1-2@m in-margin-bottom-30@s" data-uk-grid>
                                <div>
                                    <ul class="uk-list uk-list-bullet in-list-check">
                                        <li>Direct Market Access (DMA)</li>
                                        <li>While stocks fluctuate, growth may help you keep ahead of inflation</li>
                                        <li>Potentially generate income with dividends</li>
                                        <li>Dividends paid in cash</li>
                                    </ul>
                                </div>
                                <div class="in-margin-small-top@s in-margin-bottom@s">
                                    <ul class="uk-list uk-list-bullet in-list-check">
                                        <li>Free from UK Stamp Duty</li>
                                        <li>Short selling available</li>
                                        <li>Flexibility for long- and short-term investing strategies</li>
                                        <li>Access to 1500 global shares</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="uk-width-1-3@m">
                    <h3>Check out our Shares offer</h3>
                    <table class="uk-table uk-table-divider uk-table-striped uk-text-small uk-text-center">
                        <thead>
                            <tr>
                                <th class="uk-text-center">Name</th>
                                <th class="uk-text-center">Initial Deposit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Apple Inc CFD</td>
                                <td><span class="">$170 <sub>pps</sub></span></td>
                            </tr>
                            <tr>
                                <td>Tesla CFD</td>
                                <td><span class="">$650 <sub>pps</sub></span></td>
                            </tr>
                            <tr>
                                <td>Upwork CFD</td>
                                <td><span class="">$40 <sub>pps</sub></span></td>
                            </tr>
                            <tr>
                                <td>Saudi Aramco</td>
                                <td><span class="">$160 <sub>pps</sub></span></td>
                            </tr>
                        </tbody>
                    </table>
                    {{-- <p class="uk-text-small"><a href="#">See Full Shares Table</a></p> --}}
                </div>
            </div>
        </div>
    </div>
    <!-- section content end -->
    <!-- section content begin -->
    <div class="uk-section">
        <div class="uk-container">
            <div class="uk-grid">
                <div class="uk-width-1-1 in-card-16">
                    <div class="uk-card uk-card-default uk-card-body uk-box-shadow-small uk-border-rounded">
                        <div class="uk-grid uk-flex-middle" data-uk-grid>
                            <div class="uk-width-1-1 uk-width-expand@m">
                                <h3>Get up to $600 plus 60 days of commission-free stocks &amp; crypto investments</h3>
                            </div>
                            <div class="uk-width-auto">
                                <a class="uk-button uk-button-primary uk-border-rounded" href="{{route('register')}}">Open an Account</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- section content end -->
@stop
