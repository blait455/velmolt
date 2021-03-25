@extends('authlayout')

@section('content')
<div>
    <!-- module logo begin -->
    <p class="uk-text-lead uk-margin-top uk-margin-remove-bottom">Create your new account</p>
    <p class="uk-text-small uk-margin-remove-top uk-margin-medium-bottom">Have an account? <a href="{{route('login')}}">Sign-in here</a></p>
    <!-- login form begin -->
    <form class="uk-grid uk-form" role="form" action="{{route('submitregister')}}" method="post">
        @csrf
        <div class="uk-margin-small uk-width-1-1 uk-inline">
            <span class="uk-form-icon uk-form-icon-flip fas fa-briefcase fa-sm"></span>
            <input class="uk-input uk-border-rounded" id="username" name="username" type="text" placeholder="Username" required>
        </div>
        <div class="uk-margin-small uk-width-1-1 uk-inline">
            <span class="uk-form-icon uk-form-icon-flip fas fa-user fa-sm"></span>
            <input class="uk-input uk-border-rounded" id="username" name="first_name" type="text" placeholder="First Name" required>
        </div>
        <div class="uk-margin-small uk-width-1-1 uk-inline">
            <span class="uk-form-icon uk-form-icon-flip fas fa-user fa-sm"></span>
            <input class="uk-input uk-border-rounded" id="username" name="last_name" type="text" placeholder="Last Name" required>
        </div>
        <div class="uk-margin-small uk-width-1-1 uk-inline">
            <span class="uk-form-icon uk-form-icon-flip fas fa-envelope fa-sm"></span>
            <input class="uk-input uk-border-rounded" id="username" name="email" type="email" placeholder="Email" required>
        </div>
        <div class="uk-margin-small uk-width-1-1 uk-inline">
            <span class="uk-form-icon uk-form-icon-flip fas fa-briefcase fa-sm"></span>
            <input class="uk-input uk-border-rounded" id="username" name="ref" type="text" placeholder="Referer Username">
        </div>

        <div class="uk-margin-small uk-width-1-1 uk-inline">
            <span class="uk-form-icon uk-form-icon-flip fas fa-lock fa-sm"></span>
            <input class="uk-input uk-border-rounded" id="new_password" name="password" type="password" placeholder="Password" required>
        </div>
        <div class="uk-margin-small uk-width-auto uk-text-small">
            <label><input class="uk-checkbox uk-border-rounded" type="checkbox" required> Agree to <a href="{{route('terms')}}">Terms and Conditions</a></label>
        </div>
        @if($set->recaptcha==1)
            {!! app('captcha')->display() !!}
            @if ($errors->has('g-recaptcha-response'))
                <span class="help-block">
                    {{ $errors->first('g-recaptcha-response') }}
                </span>
            @endif
        @endif
        <div class="uk-margin-small uk-width-1-1">
            <button class="uk-button uk-width-1-1 uk-button-primary uk-border-rounded uk-float-left" type="submit" name="submit">Create Account</button>
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
