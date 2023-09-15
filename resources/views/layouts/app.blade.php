<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
 
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




</head>
<body>
   
        <!-- <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}"> -->
       
             @if(Auth::user())
    
             <div id="app" style="height: 80vh">  
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="container">
            
                <!-- <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('app.name', 'Laravel') }} 
                    </a> -->
               
               
                    <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                        <span class="navbar-toggler-icon"></span>
                    </button> -->
                
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <!-- Left Side Of Navbar -->
                        <ul class="navbar-nav mr-auto">
                                {{-- <li class="nav-item">
                                    <a  class="nav-link" href="">Home</a> 
                                </li> --}}
                                <!-- <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{__('user.bill')}}
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href=" {{ route('billing-history') }} ">{{__('user.Hist')}}</a>
                                    <a class="dropdown-item" href=" {{ route('billing-status') }} ">{{__('user.Status')}}</a>
                                    <a class="dropdown-item" href=" {{ route('billing-default-method') }} "> {{__('user.Change')}} </a>
                                </div>
                                </li> -->
                             
                                <!-- <li class="nav-item" > 
                                    
                                    <a class="nav-link"  href="{{'http://'.Auth::user()->name. '.' .config('helpers')['saas_domain'].'/login/login_sso/'.\App\Helpers\ENC::encode(Auth::user()->email)}}" target="_blank"> {{__('user.Dashboard')}}</a>
                                    
                                </li> -->
                                <!--<li class="nav-item" > -->
                                    
                                <!--    <a class="nav-link"  href="{{'http://'.Auth::user()->name.'.custom-development.xyz/login/login_sso/'.\App\Helpers\ENC::encode(Auth::user()->email)}}" target="_blank"> Dashboard</a>-->
                                <!--                                     
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('manage-domain') }}"> Domains </a>
                                </li> -->

                                <!-- <li class="nav-item">
                                    <a class="nav-link" href="{{route('manage-subdomain') }}">{{__('user.do')}}</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('manage-subdomain') }}">{{__('user.course')}}</a>
                                </li>
                        </ul> -->
                        <!-- Right Side Of Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <!-- Authentication Links -->
                            @guest
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                                @if (Route::has('register'))
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                    </li>
                                @endif
                            @else
                                <!-- <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="javascript:" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                        {{ Auth::user()->name }}
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                                        document.getElementById('logout-form').submit();">
                                            {{ __('Logout') }}
                                        </a> 

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                            @csrf
                                        </form>
                                    </div>
                                </li> -->
                            @endguest
                        </ul>
                    </div>
               

                                <!-- <div>
                            <ul class="navbar-nav">              
                            <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="flag-icon flag-icon-{{Config::get('languages')[App::getLocale()]['flag-icon']}}"></span> {{ Config::get('languages')[App::getLocale()]['display'] }}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        @foreach (Config::get('languages') as $lang => $language)
                            @if ($lang != App::getLocale())
                                    <a class="dropdown-item" href="{{ route('lang.switch', $lang) }}"><span class="flag-icon flag-icon-{{$language['flag-icon']}}"></span> {{$language['display']}}</a>
                            @endif
                        @endforeach
                        </div>
                </li>
                </ul>
                </div> -->
            </div>
        </nav>
    
        @endif
        <main class="py-4" >
            @yield('content')
        </main>
    </div>
</body>
</html>
