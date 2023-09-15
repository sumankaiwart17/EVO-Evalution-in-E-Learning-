
<!DOCTYPE html>
<html lang="en">
  <head>
  <link href="{{asset('images/favicon.png')}}" rel="icon" sizes="16x16" type="image/png">
    <title>EVOSAAS Register</title>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="{{asset('css/style.css')}}" >
    
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/fonts/icomoon/style.css')}}">

    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/jquery-ui.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/owl.theme.default.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/owl.theme.default.min.css')}}">

    <link rel="stylesheet" href="{{asset('assets/css/jquery.fancybox.min.css')}}">

    <link rel="stylesheet" href="{{asset('assets/css/bootstrap-datepicker.css')}}">

    <link rel="stylesheet" href="{{asset('assets/fonts/flaticon/font/flaticon.css')}}">

    <link rel="stylesheet" href="{{asset('assets/css/aos.css')}}">

    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    
    <link rel="stylesheet" href="{{asset('assets/css/registration_forms.css')}}">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
 <style>
  .searchbar{
    position:relative;
  }
 
  .searchbtn {
    background:none !important;
color: #000 !important;
  }

  .searchbar i.fa-check-circle{
    color:#2ecc71;
    visibility:hidden;
  }
  .searchbtn i.fa-magnifying-glass{
    position: absolute;
    margin-left: 17px;
    margin-top: 5px;
  }

  .search_2 {
    position: absolute !important;
    left: 0px !important;
    margin-left: 8px !important;
    margin-top: -28px !important;
    visibility:hidden;
  }
  .searchbar i.fa-exclamation-circle{
    color: #e74c3c;
    visibility:hidden;
  }

  .searchbar .searchbtn{
    position:absolute;
    top: 9px;
    right: 5px;
  }

  </style>
 
 
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300" style ="background: #edf1fd">
 
@include('header')
      

        <div class="form-container {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
          {{-- @foreach ($errors->all() as $error)
          <div class="alert alert-danger" role="alert">
          {{ $error }}
          </div>
          @endforeach --}}

       
            @if($errors->any())
            <div class="alert alert-danger" role="alert">{{$errors->first()}}</div>
            @endif

            <div class="form-1">
                

            <div class="form-group  ">
             <div class="d-flex justify-content-center">
                             <!-- <label for="email" class="col-md-4 col-form-label text-md-right">Register as</label>
          </div>
                            <div class="col-md-12 d-flex justify-content-center ">
                            <div class="form-check ">
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
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>






                {!! Form::open(['action' => 'App\Http\Controllers\UserRegistrationController@store' , 'method' => 'post' ]) !!}
                   

                <div class="form-group">
                       {{ Form::label('prefix',__('register.name'),['for' => 'exampleInputEmail1'])}} 
                       <!-- <span>{{__('register.only')}}</span> -->
                        {{ Form::text('prefix','',['class' => 'form-control rounded-0','placeholder' => __('register.enter_name'),'id'=>'username'])}}
                </div>  

                @if($errors->has("prefix"))
                        @foreach ( $errors->getMessages()["prefix"] as $error)
                          <div class="alert alert-danger" role="alert">
                          {{ $error }}
                          </div>
                        @endforeach
                      @endif  
                      
               
                    <div class="form-group">
                        {{ Form::label('email',__('register.Email'),['for' => 'exampleInputEmail1'])}}
                        {{ Form::text('email','',['class' => 'form-control rounded-0','placeholder' => __('register.email'),'id'=>'email','value' =>'old(email)'])}}
                    </div>  


                    @if($errors->has("email"))
                      @foreach ( $errors->getMessages()["email"] as $error)
                        <div class="alert alert-danger" role="alert">
                        {{ $error }}
                        </div>
                      @endforeach
                    @endif  
                    
                     

                    <div class="form-group">
                      {{ Form::label('password',__('register.password'))}}
                      {{ Form::password('password',['class' => 'form-control rounded-0','value' =>'old(password)','placeholder' => __('register.ent_password')])}}
                    </div>      
 

                    @if($errors->has("password"))
                      @foreach ( $errors->getMessages()["password"] as $error)
                        <div class="alert alert-danger" role="alert">
                        {{ $error }}
                        </div>
                      @endforeach
                    @endif   

                    <div class="form-group">

                        {{ __('sub_domain.subdomain') }}

                        <div class="form-group mt-4">
                          <!-- <form action="{{route('submit-subdomain') }}" method="POST" class="form-horizontal">
                            {{ csrf_field() }}
                            -->

                           
                            <div class="col-sm-12 searchbar  p-0  " >
                                <input type="text" name="subdomain" id="task-name" class="form-control rounded-0" value ="" placeholder="{{ __('sub_domain.Enter') }}" required >
                                <i class="fa-solid fa-magnifying-glass search_2" style="color:black; visibility:{{ (App::getLocale()=='ar') ? 'visible' : 'hidden' }}"></i> 
                                <p id="search"  class="searchbtn " style ="position:absolute;rigt:5px !importent">
                                
                                <i class="fa-solid fa-magnifying-glass" id="searchicon" style="color:black; visibility:{{ (App::getLocale()=='ar') ? 'hidden' : 'visible' }}"  ></i> 
                                <i class="fas fa-check-circle" id="checkicon"></i>
                                <i class="fas fa-exclamation-circle" id="erroricon"></i>
                              </p>
                            </div>
                          <!-- </form> -->
                        </div>
                           
                    </div>

                    <div id="error" style="color:red;margine-left:5px;"></div>
                    <div id="success" style="color:#2ecc71;margine-left:5px;"></div>
                
                        <!-- {{ Form::label('prefix',__('register.Prefix'),['for' => 'exampleInputEmail1'])}} 
                        <span>{{__('register.only')}}</span>
                        {{ Form::text('prefix','',['class' => 'form-control rounded-0','placeholder' => __('register.pre'),'id'=>'exampleInputEmail1'])}}
                     -->
                      
<!-- 
                      @if($errors->has("prefix"))
                        @foreach ( $errors->getMessages()["prefix"] as $error)
                          <div class="alert alert-danger" role="alert">
                          {{ $error }}
                          </div>
                        @endforeach
                      @endif   
                       -->
                       <!-- <select id="planeSEl" style="display:none">
                          <option>1</option>
                          <option>2</option>
          </select> -->

          <div class="form-group" id="planeselect1">
                        {{ Form::label('plan', __('register.select_plan'),['for' => 'exampleInputEmail1'])}}
                      

                        {{
                            Form::select('plan',['0' => __('register.select_p') ,
                                             '1' =>  __('register.Free'),
                                             '2' => __('register.Paid') ,
                                            ],
                            '0',
                            ['class' => 'form-control rounded-0']) 
                            
                      }}
                      
                      
                      </div> 

                      <div class="form-group" id="planeselect2">
                        {{ Form::label('plan', __('register.select_plan'),['for' => 'exampleInputEmail1'])}}
                      

                        {{
                            Form::select('plan',['0' => __('register.select_p') ,
                                             '1' =>  __('register.Free'),
                                             '2' => __('register.Paid') ,
                                            ],
                            '1',
                            ['class' => 'form-control rounded-0','disabled']) 
                            
                      }}
                      
                      
                      </div> 

         

                      <div class="form-group" id="planeselect3" >
                        {{ Form::label('plan', __('register.select_plan'),['for' => 'exampleInputEmail1'])}}
                      

                        {{
                            Form::select('plan',['0' => __('register.select_p') ,
                                             '1' =>  __('register.Free'),
                                             '2' => __('register.Paid') ,
                                            ],
                            '2',
                            ['class' => 'form-control rounded-0','disabled']) 
                            
                      }}
                      
                      
                      </div> 

                       
    

                    {{Form::submit( __('register.next'),['class' => 'btn btn-primary rounded-0 ','id'=>'btnNext'])}}  
                    
          
                      @if($errors->has("plan"))
                        @foreach ( $errors->getMessages()["plan"] as $error)
                          <div class="alert alert-danger" role="alert">
                          {{ $error }}
                          </div>
                        @endforeach
                      @endif   
                      
                {!! Form::close() !!}                
 
            </div>
         {{-- @if($errors->has()) --}}

         {{-- @endif --}}
        
        
        
        
        
        </div>

  <script src="{{asset('assets/js/jquery-3.3.1.min.js')}}"></script>
  <script src="{{asset('assets/js/jquery-ui.js')}}"></script>
  <script src="{{asset('assets/js/popper.min.js')}}"></script>
  <script src="{{asset('assets/js/bootstrap.min.js')}}"></script>
  <script src="{{asset('assets/js/owl.carousel.min.js')}}"></script>
  <script src="{{asset('assets/js/jquery.countdown.min.js')}}"></script>
  <script src="{{asset('assets/js/bootstrap-datepicker.min.js')}}"></script>
  <script src="{{asset('assets/js/jquery.easing.1.3.js')}}"></script>
  <script src="{{asset('assets/js/aos.js')}}"></script>
  <script src="{{asset('assets/js/jquery.fancybox.min.js')}}"></script>
  <script src="{{asset('assets/js/jquery.sticky.js')}}"></script>

  
  <script src="{{asset('assets/js/main.js')}}"></script>
  <div class="mt-5">
  @include('footer');
                    </div>
  </body>
</html>

<script>

  $(document).ready(function(){
    // alert()
    $("#email").val(getUrlParameter('email'))
  })

  var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};
</script>

<script type="text/javascript">
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
</script>
<script>

     jQuery("#search").click(function () {
     var subdomain =  $("#task-name").val();
     var uname =  $("#username").val();
     console.log(subdomain);
     jQuery.ajax({
                 url:"{{url('Check_subdomain')}}",
                 data: {udomain:subdomain,uname:uname},
                  type: 'post',
                  success: function(response)
                {
                    if(response.status==0)
                    {
                      jQuery('.btn').prop('disabled', true);
                      jQuery('#error').html(response.msg)
                      jQuery("#task-name").attr('style','border:1px solid #e74c3c');
                      jQuery("#searchicon").attr('style','visibility:hidden');
                      jQuery("#checkicon").attr('style','visibility:hidden');
                      jQuery("#erroricon").attr('style','visibility:visible');
  //                     setTimeout(() => {
  // toastr.success(response.message, response.title);
  // },500);
                    }
                    else{
                      jQuery('.btn').prop('disabled', false);
                      jQuery('#success').html(response.msg);
                      jQuery("#task-name").attr('style','border:1px solid #2ecc71');
                      jQuery("#searchicon").attr('style','visibility:hidden');
                      jQuery("#checkicon").attr('style','visibility:visible');
                      jQuery("#erroricon").attr('style','visibility:hidden');
                    }
                 
                },

          
       })

    });

    
</script>
<script type="text/javascript">

$val= localStorage.getItem('plan');
// console.log($val);
if($val=='free'){
  document.getElementById('planeselect2').style.display='block';
  document.getElementById('planeselect1').style.display='none';
  document.getElementById('planeselect3').style.display='none';
}
else if($val=='paid'){
  document.getElementById('planeselect2').style.display='none';
  document.getElementById('planeselect1').style.display='none';
  document.getElementById('planeselect3').style.display='block';
}
else{
  document.getElementById('planeselect2').style.display='none';
  document.getElementById('planeselect1').style.display='block';
  document.getElementById('planeselect3').style.display='none';
}

</script> 
<script>
jQuery("#search").click(function () {

  localStorage.removeItem("plan");
});

</script>