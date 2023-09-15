<!DOCTYPE html>
<html lang="en">
<head>
    
    <link rel="stylesheet" href="{{asset('css/style.css')}}" >
</head>
<body>
    
</body>
</html>
<header>
         <div class="container" >
            <nav class="navbar navbar-expand-lg" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
                <button class="navbar-toggler nav-button" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars"></i>
                </button>

                <a class="navbar-brand mobile-logo"  href="{{ url('/') }}"><h2>EVOS<span>AAS</span></h2></a>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                  <ul class="navbar-nav">

                  

                    <li class="nav-item">
                    <a class="nav-link"  href="{{ url('/') }}">   <span class="nav-link" >{{__('home.home')}}</span> </a>  
                      </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link" href="pricing"><strong id="Book">{{__('home.price')}}</strong></a>
                    </li> -->
                    <li class="nav-item">
                      <a class="nav-link" href="{{url('subscription')}}"><strong id="Book">{{__('register.subscription')}}</strong></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#" id="About_facility">{{__('home.about')}}</a>
                    </li>
            
                    
                    <li class="nav-item dropdown">
                    @if(Auth::user())
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
                                </li>

                    @else
                    <li class="nav-item">
                      <a class="nav-link" href="{{ route('login') }}" id="Content">{{__('home.login')}}</a>
                      @endif
                    </li>
                    
                    <li class="nav-item">
                      <a class="nav-link" href="{{url('register/form')}}" id="About_facility">{{__('home.register')}}</a>
                    </li>
                    
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
                    
                  <a class="navbar-brand desktop-logo" href="#"><h2>EVOS<span>AAS</span></h2></a>
                </div>

               
              </nav>

         </div>
      </header>