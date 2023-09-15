
@extends('layouts.app')
@section('content')
<div class="container {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="card p-3">
            <h1> {{__('status.Hello')}} {{ $user->name }} </h1>
            @if( $user->hasDefaultPaymentMethod())
                <h2>{{__('status.you')}} </h2>
                <p>{{__('status.update')}} <a href="{{ url('/billings/default-method') }}">{{__('status.here')}}</a> </p>
            @else
                <h2>{{__('status.method')}}</h2>
                <p>{{__('status.add')}} <a href=" {{ url('/billings/default-method') }}">{{__('status.here')}}</a> </p>
            @endif
        </div>

    </div>

@endsection