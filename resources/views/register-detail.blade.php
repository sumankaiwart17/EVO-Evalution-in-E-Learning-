@extends('theme-files')
<link href="{{asset('images/favicon.png')}}" rel="icon" sizes="16x16" type="image/png">
    <title>EVOSAAS Registration</title>

@section('main-content')
 
    {{-- {{ $errors }} --}}

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
        <!--getting defualt language form our config file => Config::get('languages')[App::getLocale()] -->
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        @foreach (Config::get('languages') as $lang => $language)
            @if ($lang != App::getLocale())     
           
            <!-- {{ route('lang.switch', $lang) }} -->
                    
            <a class="dropdown-item " id ="switchLang" href="" onclick="add({{$lang}});"><span class="flag-icon flag-icon-{{$language['flag-icon']}}"></span> {{$language['display']}}</a>
            @endif
        @endforeach
        </div>
</li>
</ul>  
<!-- onclick="add({{$lang}})" -->

</div>
    <div class="form-1 {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="form-container">
            <div class="form-1-heading part-1" >
            {{__('register.Step')}}
                <h2>{{__('register.Tell')}}</h2>
                <div>
                {{__('register.we')}}
                </div>
            </div> 
            <div class="form-2-heading part-2" >
            {{__('register.Step_two')}}
                <h2>{{__('register.Add_an')}}  </h2>
                <div>
                    <p>{{__('register.this_will')}}  </p> 
                </div>
            </div>
            <div class="part-1">
                {{ Form::open(['action' => 'App\Http\Controllers\UserRegistrationController@saveDetail' , 'method' => 'post'])}}

                  <input type="text" name="user_id" value="{{$user_id}}" style="display: none">  
                  <div class="form-group">
                        <label for=""> {{__('register.Are')}}</label>
                        {{
                          Form::select('already_teaching', 
                          [ '0' => __('register.select') , '1' =>__('register.Yes'), '2' => __('register.No')],
                            '0',
                          ['class' => 'form-control rounded-0']) 
                        }}
                    </div>
                    <div class="form-group">
                        <label for=""> {{__('register.What')}}</label>
                        {{
                            Form::select('revenue',['0' => __('register.select') ,
                                             '1' =>  __('register.less') ,
                                             '2' =>  __('register.more') ,
                                             '3' =>  __('register.less_then') , 
                                             '4' =>  __('register.mone_then') ,
                                             '5' =>  __('register.No_revenue')],
                            '0',
                            ['class' => 'form-control rounded-0'])
                            
                      }}
                    </div>
                    <div class="form-group">
                        <label for=""> {{__('register.Which')}}</label>
                        {{
                            Form::select('teaching_field',['0' => __('register.select') ,
                                             '1' =>  __('register.Science'),
                                             '2' => __('register.Buisness') ,
                                             '3' =>  __('register.Atrs') , 
                                             '4' =>  __('register.English'),
                                             '5' =>  __('register.Math')],
                            '0',
                            ['class' => 'form-control rounded-0'])
                            
                      }}
                    <div class="form-group">
                        <label for=""> {{__('register.Do_you')}} </label>
                        {{
                            Form::select('has_website',['0' => __('register.select') ,
                                             '1' => __('register.Yes'),
                                             '5' => __('register.No')],
                            '0',
                            ['class' => 'form-control rounded-0'])
                            
                      }} 
                    </div>
                    <a href="javascript:;" class="btn btn-primary rounded-0" id="next_btn">{{__('register.next')}}</a>
            </div>

            
        </div>
        <div class="part-2">
            <div class="row">
                <div class="col">
                    <label for="">{{__('register.First_Name')}}</label>
                    {{
                        Form::text('first_name','',['class' => 'form-control rounded-0','placeholder' => ''])
                    }}
                </div>
                <div class="col">
                    <label for="">{{__('register.Last_Name')}}</label>
                    {{
                        Form::text('last_name','',['class' => 'form-control rounded-0','placeholder' => ''])
                    }}
                </div>   
            </div>
            <div class="form-group">
                <label for="">{{__('register.Adress')}}</label>
                {{ Form::text('address','',['class' => 'form-control rounded-0']) }}
            </div>
            <div class="form-group">
                <label for="">{{__('register.Apartment')}}</label>
                {{ Form::text('house','',['class' => 'form-control rounded-0']) }}
            </div>
            <div class="form-group">
                <label for="">{{__('register.City')}}</label>
                {{ Form::text('city','',['class' => 'form-control rounded-0']) }}
            </div>
            <div class="row">
                <div class="col">
                    <label for="">{{__('register.Country')}} </label>
                    {{
                        Form::text('region','',['class' => 'form-control rounded-0','placeholder' => ''])
                    }}
                </div>
                <div class="col">
                    <label for="">{{__('register.Postal')}}</label>
                    {{
                        Form::text('postal_code','',['class' => 'form-control rounded-0','placeholder' => ''])
                    }}
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="">{{__('register.Phone')}} </label>
                    {{
                        Form::text('phone','',['class' => 'form-control rounded-0','placeholder' => ''])
                    }}
                </div>
                <div class="col">
                    <label for="">{{__('register.Business')}} </label>
                    {{
                        Form::text('website_link','',['class' => 'form-control rounded-0','placeholder' => ''])
                    }}
                </div>
            </div>
            <button class="btn btn-primary mt-3 rounded-0" type="submit">{{__('register.submit')}}</button>
        </div>
        {{ Form::close()}}
    </div>

@endsection

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script>
    $(document).ready(function(){
        $("#next_btn").click(function(e){
            e.preventDefault()
            $(".part-1").hide()
            $(".part-2").show()
            $(".form-2-heading").css({"display" : "flex","flex-direction":"column","align-items": "center"})
        })
    })
</script>

<script>
function add(id)
{
    alert(id);
}
</script>

<style>
.part-2{
    display: none;
}
.form-1 , .form-1-heading {
    display: flex ;
    flex-direction: column;
    align-items: center ;
    margin: 20px;
}
.form-container{
    border : 1px solid lightgrey ;  
    width: 50%;
    padding:20px ;
}
</style>