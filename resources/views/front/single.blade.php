@extends('layout')
@section('css')

@endsection

@section('content')
        <!-- section content begin -->
        <div class="uk-section uk-margin-top">
            <div class="uk-container">
                <div class="uk-grid uk-flex uk-flex-center in-blog-1 in-article">
                    <div class="uk-width-1-1 in-figure-available">
                        <img class="uk-width-1-1 uk-border-rounded" src="{{url('/')}}/asset/thumbnails/{{$post->image}}" alt="sample-image">
                    </div>
                    <div class="uk-width-3-4@m">
                        <article class="uk-card uk-card-default uk-box-shadow-small uk-border-rounded">
                            <div class="uk-card-body">
                                <div class="uk-flex uk-flex-middle uk-margin-remove-bottom">
                                    <div>
                                        <p class="uk-text-small uk-text-muted uk-margin-remove-bottom">
                                            <a href="#">Jeffrey Reyes</a>
                                            <span class="uk-margin-small-left uk-margin-small-right">•</span>
                                            {{date("M j, Y", strtotime($post->created_at))}}
                                        </p>
                                    </div>
                                </div>
                                <h2 class="uk-margin-top uk-margin-medium-bottom">{{$post->title}}</h2>
                                {!! $post->details !!}
                            </div>
                            <div class="uk-card-footer uk-clearfix">
                                <div class="uk-float-right in-article-share">
                                    @php $slug  = str_slug($post->title); @endphp
                                    <a href="https://www.facebook.com/sharer.php?u={{url('/')}}/single/{{$post->id}}/{{$slug}}" target="blank" data-uk-tooltip="Share with Facebook" class="uk-label uk-border-pill in-brand-facebook"><i class="fab fa-facebook-f fa-sm"></i></a>
                                    <a href="https://twitter.com/intent/tweet?url={{url('/')}}/single/{{$post->id}}/{{$slug}}&text={{$post->title}}" target="blank" data-uk-tooltip="Share with Twitter" class="uk-label uk-border-pill in-brand-twitter"><i class="fab fa-twitter fa-sm"></i></a>
                                    <a href="https://pinterest.com/pin/create/button/?url={{url('/')}}/single/{{$post->id}}/{{$slug}}" target="blank" data-uk-tooltip="Share with Pinterest" class="uk-label uk-border-pill in-brand-pinterest"><i class="fab fa-pinterest-p fa-sm"></i></a>
                                    <a href="https://plus.google.com/share?url={{url('/')}}/single/{{$post->id}}/{{$slug}}&text={{$post->title}}&hl=english" target="blank" data-uk-tooltip="Share with google+" class="uk-label uk-border-pill in-generic-email"><i class="fas fa-envelope fa-sm"></i></a>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
        <!-- section content end -->
@endsection

