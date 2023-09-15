<?php
namespace App\Demo ;
use App\Demo\Demo;
use Illuminate\Support\Facades\Facade;

class DemoFacade extends Facade{

    protected static function getFacadeAccessor() { return 'demo'; }

    public function sayHello() {

        return "hello from demo class " ;
    }
}