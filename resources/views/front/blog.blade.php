@extends('layout')
@section('css')

@stop
@section('content')
    <!-- section content begin -->
    <div class="uk-section uk-margin-top">
        <div class="uk-container">
            <div class="uk-grid" data-uk-grid>
                <div class="uk-width-2-3@m">
                    <div class="uk-grid-medium uk-child-width-1-2@m in-blog-1" data-uk-grid>
                        @foreach ($posts as $vblog)
                        <div class="uk-width-1-1">
                            <article class="uk-card uk-card-default uk-box-shadow-small uk-border-rounded">
                                <div class="uk-card-media-top">
                                    <a href="{{url('/')}}/single/{{$vblog->id}}/{{str_slug($vblog->title)}}"><img src="{{url('/')}}/asset/thumbnails/{{$vblog->image}}" alt="sample-image" height=""></a>
                                </div>
                                <div class="uk-card-body">
                                    <h3>
                                        <a href="{{url('/')}}/single/{{$vblog->id}}/{{str_slug($vblog->title)}}">{{$vblog->title}}</a>
                                    </h3>
                                    <p>{!! \Illuminate\Support\Str::words($vblog->details, 40) !!}</p>
                                    <div class="uk-flex uk-flex-middle">

                                        <div>
                                            <p class="uk-text-small uk-text-muted uk-margin-remove-bottom">
                                                <a href="#">Jeffrey Reyes</a>
                                                <span class="uk-margin-small-left uk-margin-small-right">•</span>
                                                {{date("M j, Y", strtotime($vblog->created_at))}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-card-footer uk-clearfix">
                                    <div class="uk-float-left">
                                        <a href="#"><span class="uk-label uk-label-success uk-border-pill">Automotive</span></a>
                                    </div>
                                    <div class="uk-float-right">
                                        <a href="{{url('/')}}/single/{{$vblog->id}}/{{str_slug($vblog->title)}}" class="uk-button uk-button-text">Read more</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        @endforeach
                    </div>
                    <!-- module pagination begin -->
                    <ul class="uk-pagination uk-flex-center uk-margin-medium-top">
                        <li class="uk-active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#"><i class="fas fa-angle-right fa-xs"></i></a></li>
                    </ul>
                    <!-- module pagination end -->
                </div>
                <div class="uk-width-expand@m">
                    <!-- widget content begin -->
                    <aside class="uk-margin-medium-bottom">
                        <form class="uk-search uk-search-default uk-width-1-1">
                            <a href="" class="uk-search-icon-flip" data-uk-search-icon></a>
                            <input class="uk-input uk-border-pill" type="search" placeholder="Search here...">
                        </form>
                    </aside>
                    <!-- widget content end -->
                    <!-- widget content begin -->
                    <aside class="uk-margin-medium-bottom">
                        <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                            <h5 class="uk-heading-bullet uk-text-uppercase uk-margin-remove-bottom">Categories</h5>
                            <ul class="uk-list in-widget-category">
                                @foreach ($cat as $vcat)
                                    @php
                                        $rate=count(App\Models\Blog::wherecat_id($vcat->id)->wherestatus(1)->get());
                                    @endphp
                                    <li><a href="{{url('/')}}/cat/{{$vcat->id}}/{{str_slug($vcat->categories)}}">{{$vcat->categories}}<span class="uk-label uk-label-success uk-border-pill uk-float-right">{{$rate}}</span></a></li>
                                @endforeach
                            </ul>
                        </div>
                    </aside>
                    <!-- widget content end -->
                    <!-- widget content begin -->
                    <aside class="uk-margin-medium-bottom">
                        <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                            <h5 class="uk-heading-bullet uk-text-uppercase uk-margin-remove-bottom">Popular</h5>
                            <ul class="uk-list in-widget-popular">
                                @foreach ($trending as $vtrending)
                                @php $vslug=str_slug($vtrending->title); @endphp
                                    <li>
                                        <div class="uk-grid-collapse uk-flex uk-flex-middle" data-uk-grid>
                                            <div class="uk-width-auto">
                                                <a href="{{url('/')}}/single/{{$vtrending->id}}/{{$vslug}}"><img class="uk-border-rounded" src="{{url('/')}}/asset/thumbnails/{{$vtrending->image}}" alt="sample-image" width="74" height="74"></a>
                                            </div>
                                            <div class="uk-width-expand uk-margin-left">
                                                <a href="{{url('/')}}/single/{{$vtrending->id}}/{{$vslug}}">{{$vtrending->title}}
                                                    <span class="uk-article-meta uk-text-small"><br><i class="fas fa-clock fa-sm uk-margin-small-right"></i>{{date("M j, Y", strtotime($vtrending->created_at))}}</span>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </aside>
                    <!-- widget content end -->
                    <!-- widget content begin -->
                    <aside class="uk-margin-medium-bottom">
                        <div class="uk-card uk-card-default uk-card-body uk-border-rounded">
                            <h5 class="uk-heading-bullet uk-text-uppercase uk-margin-remove-bottom">Tags</h5>
                            <div class="uk-margin-top in-widget-tag">
                                @foreach ($cat as $vcat)
                                <a href="{{url('/')}}/cat/{{$vcat->id}}/{{str_slug($vcat->categories)}}"><span class="uk-label uk-border-pill">{{$vcat->categories}}</span></a>
                                @endforeach
                            </div>
                        </div>
                    </aside>
                    <!-- widget content end -->
                </div>
            </div>
        </div>
    </div>
    <!-- section content end -->
@endsection
