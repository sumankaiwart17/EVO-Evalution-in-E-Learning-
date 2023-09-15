<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    @if(!is_null($favicon = Admin::favicon()))
    <link rel="shortcut icon" href="{{$favicon}}">
    @endif

    {!! Admin::css() !!}

    <script src="{{ Admin::jQuery() }}"></script>
    {!! Admin::headerJs() !!}

  
    </head>

<body class="hold-transition {{config('admin.skin')}} {{join(' ', config('admin.layout'))}}">

@if($alert = config('admin.top_alert'))
    <div style="text-align: center;padding: 5px;font-size: 12px;background-color: #ffffd5;color: #ff0000;">
        {!! $alert !!}
    </div>
@endif

<div class="wrapper">

    @include('admin::partials.header')

    @include('admin::partials.sidebar') 

    <div class="content-wrapper" id="pjax-container">
        {!! Admin::style() !!}

    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"> <h4>{{__('admin.Activation')}}</h4></div>
                <!-- {{ __('sub_domain.Subdomain') }} -->
                <div class="card-body">
    <span>
    <h5> {{__('admin.For')}}</h5>
    <p>{{__('admin.Open')}}  </p>
   
    <pre>
           i. cd /var/www/html/goyaqoot/public/evosaas/public/newdomain
          ii. sh User_Subdomain (i.e. sita.goyaqoot.com.sh)

        </pre>
    </span>
    
            </div>
    <!-- <div class = "container">
<table>
    <tr>
<th scope="col">Date</th>
        <th scope="col">UserName</th>
        <th scope="col">SubDomain</th>
        <th scope="col">Status</th>
        <th scope="col">Action</th>
            </tr>
            </table>
            </div>

</div> -->
                </div>
            </div>
    
            </div>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
    <h3>{{__('admin.Request')}}</h3>   
    <table class="table">
  <thead>
    <tr>
      

      <th scope="col">Sn</th>
        <th scope="col">{{__('admin.Date')}}</th>
        <th scope="col">{{__('admin.Username')}}</th>
        <th scope="col">{{__('admin.SubDomain')}}</th>
        <th scope="col">{{__('admin.Status')}}</th>
        <th scope="col">{{__('admin.Action')}}</th>
    </tr>
  </thead>
  <tbody>
  @php
    foreach( $uname as $index => $u)
            {
                @endphp
                <tr>
               
                <td> {{$index+1}}</td>
                    <td>{{$u->date}}</td>
                    <td>{{$u->username}}</td>
                    <td>{{$u->subdomain}}</td> 
                    <td>{{$u->status}}</td>
                    <td><a href="{{url('Activate',$u->id)}}"><buttun class="btn btn-success "> Activate </button></a></td>
            </tr>
            @php           }
            @endphp
  </tbody>
    </table>
            </div>
                </div>
            </div>


            {!! Admin::script() !!}
        {!! Admin::html() !!}
    </div>


<button id="totop" title="Go to top" style="display: none;"><i class="fa fa-chevron-up"></i></button>

<script>
    function LA() {}
    LA.token = "{{ csrf_token() }}";
  
</script>

<!-- REQUIRED JS SCRIPTS -->
{!! Admin::js() !!}
@include('admin::partials.footer')
</body>
</html>
