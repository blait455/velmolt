@extends('authlayout')

@section('content')
    <div>
        <!-- module logo begin -->
        <p class="uk-text-lead uk-margin-top uk-margin-remove-bottom">Forgot Password?</p>
        <p class="uk-text-small uk-margin-remove-top uk-margin-medium-bottom">Fill in correctly, a link will be sent to your email</a></p>
        <!-- login form begin -->
        <form class="uk-grid uk-form" role="form" action="{{route('user.password.email')}}" method="post">
            @csrf

            <div class="uk-margin-small uk-width-1-1 uk-inline">
                <span class="uk-form-icon uk-form-icon-flip fas fa-envelope fa-sm"></span>
                <input class="uk-input uk-border-rounded" id="email" name="email" type="email" placeholder="Email" required>
            </div>
            <div class="uk-margin-small uk-width-expand uk-text-small">
                <label class="uk-align-right">Or Login <a class="" href="{{route('login')}}">Here..</a></label>
            </div>
            <div class="uk-margin-small uk-width-1-1">
                <button class="uk-button uk-width-1-1 uk-button-primary uk-border-rounded uk-float-left" type="submit" name="submit">Send link</button>
            </div>
        </form>
        <!-- login form end -->
        <p class="uk-heading-line uk-text-center"><span>Or sign in with</span></p>
        <div class="uk-margin-medium-bottom uk-text-center">
            <a class="uk-button uk-button-small uk-border-rounded in-brand-google" href="#"><i class="fab fa-google uk-margin-small-right"></i>Google</a>
            <a class="uk-button uk-button-small uk-border-rounded in-brand-facebook" href="#"><i class="fab fa-facebook-f uk-margin-small-right"></i>Facebook</a>
        </div>
    </div>
@stop
