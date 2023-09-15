<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Facades\Admin;
use Illuminate\Support\Facades\DB ;
class HomeController extends Controller
{
    public function index(Content $content)
    {    
   
            $content->header('chart');
            $content->description('.....');
            $arr = DB::table('users')->select( DB::raw('CAST(created_at as DATE) AS date') , DB::raw('count(*) as total'))->groupBy(DB::raw('CAST(created_at as DATE)'))->get() ;
            
            // handel from repository 
            $dates = $arr->pluck('date')->all();
            $counts = $arr->pluck('total')->all();
            $data = [
                'arr' => $arr ,
                'dates' => $dates ,
                'counts' => $counts , 
            ] ;

            $content->body(view('charts.dashboard',compact('data') ) );
            // $content->body(view('charts.bar'));  
            return $content ;

    }
}
