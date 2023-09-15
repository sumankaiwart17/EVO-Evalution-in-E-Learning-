<?php

namespace App\Test\Facade ;
use Illuminate\Support\Facades\Facade;

class Test extends Facade {

    protected static function getFacadeAccessor() { return 'testy'; }
}

