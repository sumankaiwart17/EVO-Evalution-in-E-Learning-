
   {{-- PRICING SECTION  --}}
   <div class="site-section" id="pricing-section">
    <div class="container">
      <div class="row mb-5 justify-content-center text-center"  data-aos="fade-up">
        <div class="col-7 text-center  mb-5">
          <h2 class="section-title">Plans For You To Get Started </h2>
          <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga quos quaerat sapiente nam, id vero.</p>
        </div>
      </div>
      <div class="row align-items-stretch">

        @foreach (App\Models\Pricing::all() as $item)
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">            
                <div class="unit-4 d-block">
                    <div class="unit-4-icon mb-3">
                    <span class="icon-wrap"><span class="text-primary icon-attach_money"></span></span>
                    </div>
                    <div>
                    <h3> {{$item->name}} USD </h3>
                    <h3> {{$item->monthly_cost}} USD / month </h3>
                    <h3> {{$item->yearly_cost}} USD / year </h3>
                    {{-- <h3>Marketing Consulting</h3> --}}
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                    <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
        @endforeach
        {{-- hear  --}}
        {{-- <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">

          <div class="unit-4 d-block">
            <div class="unit-4-icon mb-3">
              <span class="icon-wrap"><span class="text-primary icon-store_mall_directory"></span></span>
            </div>
            <div>
              <h3>Market Analysis</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up"  data-aos-delay="200">
          <div class="unit-4 d-block">
            <div class="unit-4-icon mb-3">
              <span class="icon-wrap"><span class="text-primary icon-shopping_basket"></span></span>
            </div>
            <div>
              <h3>Easy Purchase</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
        </div>


        <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
          <div class="unit-4 d-block">
            <div class="unit-4-icon mb-3">
              <span class="icon-wrap"><span class="text-primary icon-settings_backup_restore"></span></span>
            </div>
            <div>
              <h3>Free Updates</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">
          <div class="unit-4 d-block">
            <div class="unit-4-icon mb-3">
              <span class="icon-wrap"><span class="text-primary icon-sentiment_satisfied"></span></span>
            </div>
            <div>
              <h3>100% Satistified</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>

          
        </div>
        
        <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
          <div class="unit-4 d-block">
            <div class="unit-4-icon mb-3">
              <span class="icon-wrap"><span class="text-primary icon-power"></span></span>
            </div>
            <div>
              <h3>Easy Plugin</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
              <p><a href="#">Learn More</a></p>
            </div>
          </div>
        </div> --}}

      </div>
    </div>
  </div>
  