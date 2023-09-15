@extends('theme-files')
<link href="{{asset('images/favicon.png')}}" rel="icon" sizes="16x16" type="image/png">
    <title>EVOSAAS Registration</title>
@section('main-content')
<div class="shadow-sm {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">

            <ul class="navbar-nav ">              
              <li class="nav-item dropdown  justify-content-start">
               </li>

            <li class="nav-item dropdown d-flex justify-content-between px-5">
            <a class="navbar-brand " href="{{ url('/') }}" style="color: rgba(0,0,0,.5)" >
                    {{ config('app.name', 'Laravel') }} 
                </a>
               
        <a class="nav-link dropdown-toggle " style="color: rgba(0,0,0,.5)" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span class="flag-icon flag-icon-{{Config::get('languages')[App::getLocale()]['flag-icon']}}"></span> {{ Config::get('languages')[App::getLocale()]['display'] }}
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        @foreach (Config::get('languages') as $lang => $language)
            @if ($lang != App::getLocale())
                    <a class="dropdown-item " href="{{ route('lang.switch', $lang) }}"><span class="flag-icon flag-icon-{{$language['flag-icon']}}"></span> {{$language['display']}}</a>
            @endif
        @endforeach
        </div>
</li>
</ul>
</div>
      <div class="m-5 d-flex flex-column align-items-center {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="jumbotron">
            <h1 class="display-4">{{__('register.complete')}}</h1>
            <p class="lead">{{__('register.confirm')}}</p>
            <hr class="my-4">
            <p>{{__('register.it')}}</p>
            <p class="lead">
              <a class="mr-3" href="/login" role="button">{{__('register.login')}}</a>
              <a class="" href="/" role="button">{{__('register.home')}}</a>
            </p>
          </div>
      </div>  
@endsection
