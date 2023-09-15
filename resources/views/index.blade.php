<!doctype html>
<html lang="en"> 
  <head>
  <link href="{{asset('images/favicon.png')}}" rel="icon" sizes="16x16" type="image/png">
    <title>EVOSAAS</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="{{asset('css/style.css')}}" >
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    
    <link rel="stylesheet" href="{{asset('css/owl.carousel.min.css')}}" />
    <link rel="stylesheet" href="{{asset('css/owl.theme.default.min.css')}}" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


  </head>
  <body>

      <header>
         <div class="container" >
            <nav class="navbar navbar-expand-lg" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
                <button class="navbar-toggler nav-button" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars"></i>
                </button>

                <a class="navbar-brand mobile-logo"  href="/"><h2>EVOS<span>AAS</span></h2></a>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                  <ul class="navbar-nav">

                  

                    <li class="nav-item">
                    <a class="nav-link"  href="{{ url('/') }}">   <span class="nav-link" >{{__('home.home')}}</span> </a>   
                      </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link" href="pricing"><strong id="Book">{{__('home.price')}}</strong></a>
                    </li> -->
                    <li class="nav-item">
                      <a class="nav-link" href="subscription"><strong id="Book">{{__('register.subscription')}}</strong></a>
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
                                    <a class="dropdown-item"  href="{{ url('/home') }}"> {{__('home.home')}} </a> 
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
      

      <section class="banner" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                <img src="{{asset('images/Global-workforce-removebg-preview.png')}}" class="img-fluid" alt="">
                </div> 
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="content {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" >
                        <p id ="human_resource_management_system">{{__('home.human')}}</p>
                        <p></p>
                        <h1 id= "Intelligent">{{__('home.Intelligent')}}</h1>
                        <strong  id="Control">{{__('home.Control')}}</strong>

                        <ul class="d-flex  mt-3 justify-content-start{{ (App::getLocale()=='ar') ? 'justify-content-start' : 'justify-content-end' }}">
                           
                            <li> <a class="new-link" href="#" id="Start"><button type="button">{{__('home.Start')}}</button></a></li>
                            <li><p id="Request">{{__('home.Request')}}</p></li>
                            <!-- <li><a  href="#"><button type="button" id="Start_now">Start now</button></a></li> -->
                        </ul>

                        <!-- <ul class="d-flex justify-content-end mt-3">
                            <li><span id="You_do_not">You do not need to enter credit card information</span></li>
                            <li><img src="{{asset('images/check-correct.svg')}}" alt=""></li>
                        </ul>

                        <ul class="d-flex justify-content-end mt-3">
                            <li><span id="Excellent">Excellent after-sales support services</span></li>
                            <li><img src="{{asset('images/check-correct.svg')}}" alt=""></li>
                        </ul>

                        <ul class="d-flex justify-content-end mt-3">
                            <li><span id="A_fully_native">A fully native human resource system</span></li>
                            <li><img src="{{asset('images/check-correct.svg')}}" alt=""></li>
                        </ul> -->
                    </div>
                </div>
            </div>
        </div>
      </section>


      <section class="resone" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="container">
           <div class="reson-border">
            <div class="row">
                <div class="col-lg-7 col-md-8 col-sm-6 c0l-12">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="resone-content">
                                <div class="img">
                                    <img src="{{asset('images/security-cae.svg')}}" alt="">
                                </div>
        
                                <h4>60 <span>%</span></h4> 
                                <p id="Increase">{{__('home.Increase')}}</p>
                            </div>
                        </div>

                        <div class="col-lg-4">
                            <div class="resone-content">
                                <div class="img">
                                    <img src="{{asset('images/time-saving.svg')}}" alt="">
                                </div>
        
                                <h4>60 <span>%</span></h4>
                                <p id="Increase_in_time">{{__('home.saving')}}</p>
                            </div>
                        </div>

                        <div class="col-lg-4">
                            <div class="resone-content">
                                <div class="img">
                                    <img src="{{asset('images/employee-engagment.svg')}}" alt="">
                                </div>
        
                                <h4>53 <span>%</span></h4>
                                <p id="Increase_in_employee">{{__('home.engagement')}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-4 col-sm-6 c0l-12">

                    <div class="ros-content {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                        <h3 id="Reasons_to_invest">{{__('home.Reasons')}}</h3>
                        <a href="#"><button  class="ros-button" id="Automate_HR">{{__('home.Automate')}}</button></a>
                    </div>
                </div>
            </div>
           </div>
        </div>
      </section>


      <div class="card-slider">
        <div class="container-01">
            <div class="heading text-center mb-5">
                <h3 id="Let_our_customers">{{__('home.Let')}}</h3>
                <p id="Invest_in_your">{{__('home.Invest')}}</p>
            </div>

            <div class="care-slider-sec">
                    <div class="ourCliendslider">
                <div id ="marketingBannerSlider1" class="marketingBannerSlider owl-carousel owl-theme">
                        
                                        
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support1">{{__('home.The_support')}}</p>
                                <strong id="Experts_Plus1">{{__('home.Experts')}}</strong>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                            
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo1.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support2">"The support provided by the ZenHR team is exceptional."</p>
                                <strong id="Experts_Plus2">Experts Plus Employment Services</strong>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                            
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo2.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support3">"The support provided by the ZenHR team is exceptional."</p>
                                <strong id="Experts_Plus3">Experts Plus Employment Services</strong>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                            
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo3.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support4">"The support provided by the ZenHR team is exceptional."</p>
                                <strong id ="Experts_Plus4">Experts Plus Employment Services</strong>
                                </div>
                            </div>
                        </div>
                    </div>		

                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo4.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support5">"The support provided by the ZenHR team is exceptional."</p>
                                <strong id="Experts_Plus5">Experts Plus Employment Services</strong>
                                </div>
                            </div>
                        </div>
                    </div>		

                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo5.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support6">"The support provided by the ZenHR team is exceptional."</p>
                                <strong id="Experts_Plus6">Experts Plus Employment Services</strong>
                                </div>
                            </div>
                        </div>
                    </div>		


                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide">
                                <div class="images d-flex justify-content-end">
                                    <img src="{{asset('images/logo6.png')}}" style="width:150px" class="img-fluid" alt="">
                                </div>
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <p id="The_support7">"The support provided by the ZenHR team is exceptional."</p>
                                <strong id="Experts_Plus7">Experts Plus Employment Services</strong>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                    </div>
            </div>
            
                </div>
            
                <p class="p" id="Find_out_more"></p>
       
     
</div>
</div>



      
                <section class="screenshot">
        <section id="slider" class="pt-5">
          <div class="container-01">
            <div class="heading">
              <h2 id="ZenHR_Solutions"></h2>
              <h3 id="Track"></h3>
              <p id="ZenHR_time"></p>
            </div>
            <div class="slider">
                <div class="owl-carousel">
                  <div class="slider-card">
                    <div class="d-flex justify-content-center align-items-center mb-4">
                      <img src="{{asset('images/screenshot.png')}}"  alt="">
                    </div>
                    
                  </div>
                  <div class="slider-card">
                    <div class="d-flex justify-content-center align-items-center mb-4">
                      <img src="{{asset('images/screenshot1.png')}}"  alt="">
                    </div>
                    </div>
  
                    <div class="slider-card">
                      <div class="d-flex justify-content-center align-items-center mb-4">
                        <img src="{{asset('images/screenshot2.png')}}"  alt="">
                      </div>
                  </div>
  
                  <div class="slider-card">
                    <div class="d-flex justify-content-center align-items-center mb-4">
                      <img src="{{asset('images/screenshot3.png')}}"  alt="">
                    </div>
                </div>
                </div>
              </div>
          </div>
        </section>
      </section>



     


      <div class="card-slider-01">
        <div class="container-01">
            <div class="reson-border-01">
            <div class="heading text-center mb-5">
                <h3 id="ZenHR_Features"></h3>
                <p id="Create_a_happier"></p>
            </div>

            <div class="care-slider-sec">
                    <div class="ourCliendslider">
                <div id ="marketingBannerSlider2" class="marketingBannerSlider owl-carousel owl-theme">
                        
                                        
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance"></h4>
                                    <p id="Instant_access_to"></p>
                                     <a href="" id="Lern_more"></a>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance">Health insurance for employees</h4>
                                    <p id="Instant_access_to">Instant access to health insurance information about employees and their families, and the calculation of contributions.</p>
                                     <a href="" id="Lern_more">Lern more</a>
                                </div>
                            </div>
                        </div>
                    </div>		      
                    
                        
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance">Health insurance for employees</h4>
                                    <p id="Instant_access_to">Instant access to health insurance information about employees and their families, and the calculation of contributions.</p>
                                     <a href="" id="Lern_more">Lern more</a>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                            
                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance">Health insurance for employees</h4>
                                    <p id="Instant_access_to">Instant access to health insurance information about employees and their families, and the calculation of contributions.</p>
                                     <a href="" id="Lern_more">Lern more</a>
                                </div>
                            </div>
                        </div>
                    </div>		

                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance">Health insurance for employees</h4>
                                    <p id="Instant_access_to">Instant access to health insurance information about employees and their families, and the calculation of contributions.</p>
                                     <a href="" id="Lern_more">Lern more</a>
                                </div>
                            </div>
                        </div>
                    </div>		

                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance">Health insurance for employees</h4>
                                    <p id="Instant_access_to">Instant access to health insurance information about employees and their families, and the calculation of contributions.</p>
                                     <a href="" id="Lern_more">Lern more</a>
                                </div>
                            </div>
                        </div>
                    </div>		


                    <div class="marketingBannerSliderBx item">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="slide-01">
                    
                                <div class="con {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                                    <h4 id="Health_insurance">Health insurance for employees</h4>
                                    <p id="Instant_access_to">Instant access to health insurance information about employees and their families, and the calculation of contributions.</p>
                                     <a href="" id="Lern_more">Lern more</a>
                                </div>
                            </div>
                        </div>
                    </div>		
                        
                    </div>
            </div>
            
                </div>
            
        </div>
      </div>
      </div>

    

      <section class="mobile_applaction" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="container">
            <div class="reson-border">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-6 col-12">
                    <div class="contant {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                        <h2 id="Mobile_Application">ZenHR's Employee Self-Service (ESS) Mobile App</h2>
                        <p class="p1" id="With_the_mobile_application">With the mobile application for self-service, employees and HR professionals can stay connected with their company wherever they go. 
                            With self-service solutions, employees can access and approve pay slips, leave requests, leave requests, and automatically track shifts, work schedules, and shifts from anywhere with absolute ease.
                        </p>

                        <ul class="d-flex justify-content-start">
                        <li><img src="{{asset('images/salary.svg')}}" alt=""></li>
                            <li><p id="Give_your_employees" class= "pl-3">Give your employees access to the payroll</p></li>
                            
                        </ul>

                        <ul class="d-flex justify-content-start">
                        <li><img src="{{asset('images/geolocation.svg')}}" alt=""></li>
                            <li><p id="Automate_time_and_attendance" class= "pl-3">Automated attendance and time-tracking with geolocation</p></li>
                            
                        </ul>

                        <ul class="d-flex justify-content-start">
                        <li><img src="{{asset('images/leaves.svg')}}" alt=""></li>
                            <li><p id="Managing_leave" class= "pl-3">Employee scheduling and shift management</p></li>
                         
                        </ul>

                      
                    </div>

                    <ul class="d-flex justify-content-start">
                        <li><img src="{{asset('images/google-play.png')}}" class="img-play" alt=""></li>
                        <li><img src="{{asset('images/app-store.png')}}"  class="img-play-01" alt=""></li>
                    </ul>

                    <div class="{{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                        <a href=""class="a" id="More_features">More features</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                    <img src="{{asset('images/mobile-app-.gif')}}" class="mobile-img" alt="">
                </div>
            </div>
        </div>
        </div>
      </section>


      <section class="localization {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}" dir="{{ (App::getLocale()=='en') ? 'ltr' : 'rtl' }}">
        <div class="container">
            <div class="reson-border-01">
            <div class="row">
               
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="contant {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                        <h3 id="localization">localization</h3>
                        <p id="ZenHRs_Human_Resource">ZenHR's Human Resource Management System is fully localized to reflect all local laws and labor regulations in the MENA region including GOSI, WPS, and Social Security.
                            This gives you the flexibility you need to automate payroll rolls while ensuring compliance with local human resources laws. 
                        </p>

                        <p class="pt-3" id="ZenHRs_Human_Resource1">ZenHR's Human Resource Management System is fully localized to reflect all local laws and labor regulations in the MENA region including GOSI, WPS, and Social Security.
                            This gives you the flexibility you need to automate payroll rolls while ensuring compliance with local human resources laws. 
                        </p>

                         <button type="button" id="Request_a_demo">Request a demo</button>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                    <img src="{{asset('images/localization.gif')}}" class="mobile-img-01" alt="">
                </div>
            </div>
        </div>
        </div>
      </section>


      <div class="review">
        <div class="container">
            <div class="reson-border">
            <div class="heading text-center">
                <h3 id="Our_users">Our users love our system</h3>
                <p id="See_our_review">See our review at:</p>
            </div>

                <div class="row">
                    <div class="col-lg-4 col-md-3 col-sm-6 col-12">
                        <div class="img d-flex justify-content-center">
                            <img src="{{asset('images/g2.png')}}" alt="">
                        </div>
                        <ul class="d-flex justify-content-center mt-2">
                            <li><p id="_4">4.7/5</p></li>      
                            <li>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-3 col-sm-6 col-12">
                        <div class="img d-flex justify-content-center">
                            <img src="{{asset('images/getapp.png')}}" alt="">
                        </div>
                        <ul class="d-flex justify-content-center mt-2">
                            <li><p id="_4">4.7/5</p></li>      
                            <li>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </li>
                        </ul>
                    </div>


                    <div class="col-lg-4 col-md-3 col-sm-6 col-12">
                        <div class="img d-flex justify-content-center">
                            <img src="{{asset('images/capter.png')}}" alt="">
                        </div>
                        <ul class="d-flex justify-content-center mt-2">
                            <li><p id="_4">4.7/5</p></li>      
                            <li>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
      </section>


      <section class="reted">
        <div class="container">
            <div class="reson-border">
            <div class="heading text-center">
                <h3 id="Choose_the_Highest">Choose the Highest Rated HR System</h3>
                <p id="ZenHR_is_an_award_winning">ZenHR is an award-winning HR software that has been recognized by many global service provider assessment platforms. 
                    These ratings are based on a range of quantitative and qualitative factors, including ratings by end users, integration with other applications, mobile application features, and other features.
                </p>
            </div>

            <div class="slidor">
                <img src="{{asset('images/Awards-svg-01.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-02.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-03.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-04.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-06.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-07.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-08.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-09.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-10.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-11.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-12.png')}}" alt="">
                <img src="{{asset('images/Awards-svg-14.png')}}" alt="">
                {{-- <img src="{{asset('images/Awards-svg-15.png')}}" alt=""> --}}
                <img src="{{asset('images/Awards-svg-16.png')}}" alt="">
            </div>
        </div>
        </div>
      </section>


      <section class="reted">
        <div class="container">
            <div class="reson-border">
            <div class="heading text-center">
                <h3 id="Enjoy_the_best">Enjoy the best user experience so you can focus on what's important - your employees</h3>
            </div>

            <div class="slidor-01">
                <img src="{{asset('images/vision-relaization-office-91f57e7ca852167ff892544bd22cea0a51379df5053eca6557cf5593e1e68280 (1).png')}}" alt="">
                <img src="{{asset('images/telfaz11-af16fb864fd39f59a4e59a9e18de3f2e98738a69d2bc6c63aa5c2e4d808fd96b.png')}}" alt="">
                <img src="{{asset('images/saudi-center-commercial-arbitration-c348804f1980b49121960827dfddc89a0014b18d0b9b7dd66e94f512d31904b7.png')}}" alt="">
                <img src="{{asset('images/foodics-ef9fcfa200dfe05f4d787b59b6fe8bda771548f93f86fa0af9a89b6c5e801388.png')}}" alt="">
                <img src="{{asset('images/opensooq-0e703a27b15a1dca12c00bb47f6f34125e182d06a890f7b77e32a44879b05ea8.png')}}" alt="">
                <img src="{{asset('images/the-chefz-de16fe6defea161c05c2d34ec2e5fb41d4b30414d4d2f68167886f2c8841083c.png')}}" alt="">
                <img src="{{asset('images/ennabi-grill-611c723efb4365392ca5f6ac306c43821f9a0926562ea6c9c74f05d20ae91dd5.png')}}" alt="">
                <img src="{{asset('images/jawaker-d1a5c6eb4d97d874097f4999bc7b0af04d39d1cfdfe45b5baa82350dc6b28714.png')}}" alt="">
                <img src="{{asset('images/danish-refugee-council-ba0b4a4acbb70576e6fe5f00ca60ec91b32cacbb875acc2d597f7619b156398b (1).png')}}" alt="">
                <img src="{{asset('images/logo.png')}}" alt="">
                <img src="{{asset('images/logo2.png')}}" alt="">
                <img src="{{asset('images/logo3.png')}}" alt="">
            </div>
        </div>
        </div>
      </section>


      <section class="do-went">
        <div class="container">
            <div class="heading text-center">
                <h3 id="Do_you_want">Do you want to facilitate the day-to-day HR operations of the employees in your facility?</h3>
            </div>

            <ul class="d-flex justify-content-center">
            <li><button type="button" id="Request_a_demo1">Request a demo</button></li>
                <li><button type="button" class="but-button" id="book_an_appointment">book an appointment</button></li>
                
            </ul>

        </div>
      </section>

    <footer>
        <div class="container">
            <div class="row">
            <ul>
                        <li><img src="{{asset('images/zenhr-footer-logo-99ab3a0608e834168a4cf2a24fff68a7ca97546bda52d1f7969cd24d2fac98c5.svg')}}" class="fo-img"alt=""></li>
                    </ul>
                <div class="col-lg-2 col-md-4 col-sm-4 col-12">
              
                   <div class="conten {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                  
                    <h6 id="Connect_with_us">Connect with us</h6>
                    <ul>
                        <li><a href="#" id="Kingdom_Saudi_Arabia">Kingdom Saudi Arabia</a></li>
                        <li><a href="#" id="_num"> +966 54 129 8521</a></li>
                        <li><a href="#" id="_Jordan">  +962 6 577 7500 Jordan</a></li>
                        <li><a href="#" id="The_United_Arab_Emirates"> The United Arab Emirates</a></li>
                        <li><a href="#" id="num71588167685"> +971 58 816 7685</a></li>
                    </ul>

                    <a href="#" style="color:#000;" id="sales">sales@zenhr.com</a>

                    <ul class="d-flex justify-content-end mt-2">
                        <li><img src="{{asset('images/twitter-8cf36c23d176d000e2f5dc387765dd27b66f904a8a315c6434cd1a6d8344211b.svg')}}" alt=""></li>
                        <li><img src="{{asset('images/youtube-c8f18995de96b0f4eb98b996d34cb3ea94e258a79a3b5e845bc579a038f19b6d.svg')}}" alt=""></li>
                        <li><img src="{{asset('images/linkedin-9ff131a270db726592e57fbfcebf96db44a3ce63a5d2914b91d27348284d0015.svg')}}" alt=""></li>
                        <li><img src="{{asset('images/instagram-41bfff538174da53c2864a7ddc503b681806535212c8ce0f92d4b85eb606788b.svg')}}" alt=""></li>
                        <li><img src="{{asset('images/facebook-38d7b78862a60774e5b384eb3ef906fe8332ba66508043a2e9c8fd5a9fb4ae12.svg')}}" alt=""></li>
                    </ul>

                    <img src="{{asset('images/google-play.png')}}" class="img-play mb-3" alt="">
                    <img src="{{asset('images/app-store.png')}}" class="img-play" alt="">
                   </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-4 col-12">
                    <div class="conten {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                        <h6 id ="content">content</h6>
                    <ul>
                        <li><a href="#" id="Blog">{{__('home.Blog')}}</a></li>
                        <li><a href="#" id="white_papers">{{__('home.white')}}</a></li>
                        <li><a href="#" id="common_question">{{__('home.common')}}</a></li>
                        <li><a href="#" id="glossary_of_human"> {{__('home.glossary')}} <br id ="resources_terms">{{__('home.your')}}</a></li>
                        <li><a href="#" id="Customer_Studies">{{__('home.Customer')}}</a></li>
                        <li><a href="#" id="salary_calculator">{{__('home.salary')}}</a></li>
                        <li><a href="#" id="Calculate_the_tax_on_your_salary">{{__('home.Calculate')}} <br id=" "> {{__('home.Invest')}}</a></li>
                        <li><a href="#" id="HR_letter_templates">{{__('home.HR')}}</a></li>
                        <li><a href="#" id="Application_Programming_Interface">{{__('home.ApplicationPro')}} <br id=" ">{{__('home.Invest')}}</a></li>
                        <li><a href="#" id="Resources_related_to_the_COVID">{{__('home.Resources')}}<br id=" ">{{__('home.Invest')}}</a></li>
                    </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                    <div class="conten {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                        <h6 id="our_solutions"></h6>
                    <ul>
                        <li><a href="#" id="salary_path">{{__('home.salary')}}</a></li>
                        <li><a href="#" id="Time_and_time_tracking">{{__('home.Time')}}</a></li>
                        <li><a href="#" id="common_questions ">{{__('home.common')}} </a></li>
                        <li><a href="#" id="Employee_self_service"> {{__('home.Invest')}}</a></li>
                        <li><a href="#" id="Welcoming_new_employees"> {{__('home.Invest')}} <br> {{__('home.Invest')}}</a></li>
                        <li><a href="#" id="Applicant_Tracking_System"> {{__('home.Applicant')}}<br>{{__('home.Invest')}}</a></li>
                        <li><a href="#" id="All_our_solutions">{{__('home.All')}}</a></li>
                    </ul>
                    </div>
                </div>
                <!-- <div class="col-lg-4 col-md-4 col-sm-3 col-12">
                    <div class="conten {{ (App::getLocale()=='ar') ? 'text-right' : 'text-left' }}">
                   <div class="fotter-contect">
                    
                    <ul>
                        <h6 id="About_the_facility">{{__('home.About')}}</h6>
                        <li><a href="#" id="About_ZenHR">{{__('home.About_zen')}}</a></li>
                        <li><a href="#" id="Customer_testimonials"> {{__('home.termination')}}</a></li>
                        <li><a href="#" id="Become_a_partner">{{__('home.Become')}}</a></li>
                        <li><a href="#" id="Join_our_team">{{__('home.Join')}} </a></li>
                    </ul>
                   
                   
                        
                   </div>
                    
                    </div> -->
                </div>
            </div>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <script defer  src="{{asset('js/owl.carousel.min.js')}}"></script>

  <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   
    <!-- <script src="{{asset('js/jquery.flagstrap.js')}}"></script> -->

     <!-- <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script> -->
    
    <!-- <script href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js" type="text/javascript">
   </script> -->



    <script>
        $("#marketingBannerSlider1").owlCarousel({
              loop:true,
              items:4,
              nav:true,
              autoplayTimeout:2000,
              autoplayHoverPause:false,
              dots:false,
              mouseDrag:true,
              responsive:{
                  0:{
                      items:1
                  },
                  600:{
                      items:1
                  },
                  1000:{
                      items:4
                  },
              },
        });
      </script>


<script>
    $("#marketingBannerSlider2").owlCarousel({
          loop:true,
          items:4,
          nav:true,
          autoplayTimeout:2000,
          autoplayHoverPause:false,
          dots:false,
          mouseDrag:true,
          responsive:{
              0:{
                  items:1
              },
              600:{
                  items:1
              },
              1000:{
                  items:4
              },
          },
    });
  </script>


<script>
$(document).ready(function(){
	$(".owl-carousel").owlCarousel({
		loop:true,
	  margin:10,
	  nav:false,
	  autoplay:true,
	  autoplayTimeout:3000,
	  autoplayHoverPause:true,
	  center: true,
	  responsive:{
		  0:{
			  items:1
		  },
		  600:{
			  items:1
		  },
		  1000:{
			  items:4
		  }
	  }
	});
  });

</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>


  localStorage.removeItem("plan");


</script>
  </body>
</html>