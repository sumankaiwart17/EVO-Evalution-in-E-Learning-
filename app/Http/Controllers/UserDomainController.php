<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\WHM ;
use App\Models\UserDomain ;
use Exception;
use Illuminate\Validation\ValidationException ;
//use Validator;

class UserDomainController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index() {

        $domains = auth()->user()->domains ;
        // return $domains ;
        // return with view 
        return view('domains',[
            'domains' => $domains 
        ]); 

    }

    public function add(Request $request) {
         $request->validate([
             'domain' => 'required|unique:user_addon_domain' ,
         ]);  
         // cehck if domain is taken or already added    
         $user = auth()->user() ;

         // add to server 
        //  try{
             WHM::addDomain($request->domain) ;  
             // add to db    
             $user->domains()->create([
                'user_id' => $user->id ,
                'domain'  => $request->domain 
             ]);

        //  }catch(Exception $e){
        //      $error = ValidationException::withMessage([
        //          'error_1' => 'service not available' , 
        //          'error_2' => 'try again later' 
        //      ]);

        //      throw $error ;
        //  }

         return redirect('/domain');   

    }

    public function remove($id) {
        
        // $request->validate([
        //     // 'id' => 'required' ,
        // ]);  
        // remove from server 
        // remove from db 
        if($domain = UserDomain::find($id)){
            $domain->delete() ;
        }

        return redirect('/domain');   
    }

}
