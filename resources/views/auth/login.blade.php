@extends('layouts.app')
@include('header')
<body style ="background: #edf1fd">
@section('content')
<div class="container" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}" >
    <div class="row justify-content-center"> 
        <div class="col-md-8">
            <div class="card">
                <div class="card-header {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }} ">{{__('login.login')}}</div>
             
                    <!-- 
                                                <label for="email" class="col-md-4 col-form-label text-md-right">Login  as</label>

                                                <div class="col-md-6 d-flex">
                                                <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                    Student
                    </label>
                    </div>
                    <div class="form-check ml-3">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Instructor
                    </label>
                    </div> --> 

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{__('login.email')}}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{__('login.password')}}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                    {{__('login.remember')}}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary" id="login">
                                {{__('login.login')}}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{__('login.forgot')}}
                                    </a>
                                @endif
                            </div>
                        </div>
                        <div class = "d-flex justify-content-center mt-3">
                        <span >{{__('login.dont')}}</span><a href = "{{url('register/form')}}">{{__('login.signUp')}}</a>
                        </div>
                    </form>
                </div>
                
            </div>
            
           

        </div>
    </div>
</div>
</div>
@endsection
</body>
