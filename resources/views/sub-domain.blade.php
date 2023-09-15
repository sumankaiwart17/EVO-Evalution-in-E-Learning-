<!DOCTYPE html>
<html lang="en">

<head>
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>

<body>
    <header>
        <div class="container">
            <nav class="navbar navbar-expand-lg" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
                <button class="navbar-toggler nav-button" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars"></i>
                </button>

                <a class="navbar-brand mobile-logo" href="{{ url('/') }}">
                    <h2>EVOS<span>AAS</span></h2>
                </a>
                <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                    <div class="d-flex ">
                        <ul class="navbar-nav">



                            <li class="nav-item">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{__('user.bill')}}
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                        href=" {{ route('billing-history') }} ">{{__('user.Hist')}}</a>
                                    <a class="dropdown-item"
                                        href=" {{ route('billing-status') }} ">{{__('user.Status')}}</a>
                                    <a class="dropdown-item" href=" {{ route('billing-default-method') }} ">
                                        {{__('user.Change')}} </a>
                                </div>
                            </li>
                            <!-- <li class="nav-item">
                      <a class="nav-link" href="pricing"><strong id="Book">{{__('home.price')}}</strong></a>
                    </li> -->
                            <li class="nav-item">
                                <a class="nav-link"
                                    href="{{'http://'.Auth::user()->name. '.' .config('helpers')['saas_domain'].'/login/login_sso/'.\App\Helpers\ENC::encode(Auth::user()->email)}}"
                                    target="_blank"> {{__('user.Dashboard')}}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('manage-subdomain') }}">{{__('user.do')}}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{route('manage-subdomain') }}">{{__('user.course')}}</a>
                            </li>
                        </ul>
                    </div>
                    <!-- {{session()->get('username')}} -->
                    <div>
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a id="useremail" class="nav-link dropdown-toggle" href="javascript:" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{Auth::user()->name}}


                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                        document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span
                                        class="flag-icon flag-icon-{{Config::get('languages')[App::getLocale()]['flag-icon']}}"></span>
                                    {{ Config::get('languages')[App::getLocale()]['display'] }}
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    @foreach (Config::get('languages') as $lang => $language)
                                    @if ($lang != App::getLocale())
                                    <a class="dropdown-item" href="{{ route('lang.switch', $lang) }}"><span
                                            class="flag-icon flag-icon-{{$language['flag-icon']}}"></span>
                                        {{$language['display']}}</a>
                                    @endif
                                    @endforeach
                                </div>
                            </li>
                        </ul>
                        <!-- @if(Auth::user())
                    {
                        $username = Auth::user()->name ;
                        Session::put('username', $username);
                    }
                    @endif
                 -->
                    </div>


            </nav>

        </div>
    </header>



    <div class="row justify-content-center">
        <div class="col-md-8">






            <div class="card mt-4">
                <div class="card-header">{{ __('sub_domain.status') }}</div>
                @php

                foreach( $uname as $u)
                {
                $user = $u->username;
                $loginuser = Auth::user()->name;
                if($user == $loginuser)
                {
                @endphp

                <div class="card-body">

                    <span> {{__('admin.Domain')}} </span>


                    <?php
    if(  $u->status == "Activated")
    {
        echo '<b class= "text-success" >'.
         $u->status
            .'</b>';
    }
    else if( $u->status == "Pending")
    {
        echo '<b style="color:#FF0000">'.
        $u->status
           .'</b>';
    }
   
    ?>


                    <br>
                    <!-- 'http://'.$u->subdomain -->
                    <span><a href="{{'http://'.$u->subdomain}}" target="_blank">{{ $u->subdomain}}</a></span>
                </div>
                @php
                }
                }

                @endphp




            </div>

            @if($errors->any())
            <div class="alert alert-danger" role="alert">{{$errors->first()}}</div>
            @endif



        </div>
    </div>
    </div>
    </div>


</body>

</html>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
</script>
<script>
var email = document.getElementById('useremail').innerHTML;
//var email =  $("#navbarDropdown").val(); 
// console.log(email);
sessionStorage.setItem('name', email);
</script>