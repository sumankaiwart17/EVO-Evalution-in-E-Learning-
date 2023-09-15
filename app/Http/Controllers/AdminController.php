<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;
use Hash ;
use Illuminate\Support\Facades\Auth;


class AdminController extends Controller 
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('adminLogin');
    } 

    public function display(Request $request)
    {
       // return "admin login";
        
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required'
        ]);
        

    $email = $request->input('email');
        $password = $request->input('password');

       $res=Admin::where('email',$email)
       ->where('password',$password)
       ->first();

 

       if($res != '')
       {
        return view('home');
       }
       else{
        return "admin not found";
       }






        //  $admin = Admin::where('email', request('email') )->first();
            
        // if($admin && Hash::check(request('password') , $admin->password))
        //     {
        //         return view('home');
               
        //         }
        //         else{
        //             return "admin not found";
        //         } 









    //     $admin_data =array(
    //         'email' => $request->get('email'), 
    //         'password' => $request->get('password')
    //     );

    //     if(Auth::attempt($admin_data))
    //     {
    //         return view('home');
    //     }
    //         else
    //             {
    //                 return "admin not found";
    //             }
      
    //     // $admin = new Admin;
    //     // $email = $request->input('email');
    //     // $password = $request->input('password');
    //     //  $dbemail = $admin->email;
    //     // if( $email == 'admin@gmail.com')
    //     // {
    //     //     return view('home');
    //     // }
    //     //     else
    //     //         {
    //     //             return "admin not found";
    //     //         }
      



    //     //  return "admin login";
    //     // $userdata = array(
    //     //     'email' => Request::get('email') ,
    //     //     'password' => Request::get('password')
    //     //   );
    //     //   // attempt to do the login
    //     //   if (Auth::attempt($userdata))
    //     //     {
    //     //         return view('home');
    //     //     }
    //     //     else
    //     //     {
    //     //         return "admin not found";
    //     //     }
  





    //     //  $admin = Admin::where("email",$request->input('email'))->get();

    //     // if(Auth::check())
    //     // {
    //     //     return view('home');
    //     // }
    //     // else{
    //     //     return "admin not found";
    //     // }

    //     $email = $request->input('email');
    //     $password = $request->input('password');

    //    $res=DB::table('admins')
    //    ->where('email',$email)
    //    ->where('password',$password)
    //    ->get();

    //    if(Auth::check())
    //    {
    //     return view('home');
    //    }
    //    else{
    //     return "admin not found";
    //    }

//    if(auth()->attempt(array('email' => $email, 'password' => $password )))
//         {
//             return view('home');
//         }
//         else{
//             return "admin not found";
//         }
            

     }

}
