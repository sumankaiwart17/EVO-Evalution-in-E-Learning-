@extends('layouts.app')
@section('content')

    <div class="container border {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">

    <table class="table">
          <thead>
            <tr>
              <th scope="col">{{__('history.#')}}</th>
              <th scope="col">{{__('history.Date')}}</th>
              <th scope="col">{{__('history.Amount')}}</th>
              <th scope="col">{{__('history.Plan')}}</th>
              <th scope="col">{{__('history.Status')}}</th>
            </tr>
          </thead>
            
        </table>

    </div>

@endsection