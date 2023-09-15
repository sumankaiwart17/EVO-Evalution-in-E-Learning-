<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Demo\DemoFacade;
use App\Demo\Demo;
use App\Test\Test ;

class DemoProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    // private $deffer = false ;

    public function register()
    {
        $this->app->bind('demo',function(){
            return new Demo;
        });

        $this->app->bind('testy',function(){
            return new Test ;
        });
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
