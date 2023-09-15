<?php

namespace App\Http\Controllers;
use App\Models\SubDomain ;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Response;

class SubDomainController extends Controller
{
    //
    public function index() {
        $uname = SubDomain::get();
        
     return view('sub-domain',compact('uname'));
    }


    public function Accept() {
        $uname = SubDomain::get();
        
     return view('sub-domain-accept',compact('uname'));
    }

    public function Active(Request $req) {
        $data = SubDomain::find($req->id);

        $action = "Activated";
        $data->status = $action;
        $data->save();
        return Redirect::back();
    }

    public function store(Request $request)
    {

        //return ["msg"=>"Subdomain available"];

//subdomain creation 

        // <h1> New subdomain: </h1>

        // <?php
        // $results = shell_exec('/var/www/html/goyaqoot/newdomain.sh');
        // echo (var_dump($results));
        // echo "End";
        
        
        
        
        $domains = shell_exec('grep server_name /etc/nginx/conf.d/*' );
        
        // echo $domains;
        
        
       
        
        
        $pattern = '/[" ;"]/';
        
        $string1 = array_unique(preg_split( $pattern, $domains));
        // print_r($string1);
        
        $demo_str = $request->udomain;//$_POST['subdomain'].'.';//'goyaqoot1.com';
         

        
        $demo_str1 = $demo_str.'.goyaqoot.com';
        $response = '';
     
        //$response = in_array($demo_str1, $string1);//array_search(strtolower($demo_str), array_map('strtolower', $string1));
        
        
// dd($response);
                    
if (in_array($demo_str1, $string1)) {
   
    return Response::json(['status'=>0,'msg'=>'Subdomain not available']);
   // $status = 0;
 //return response()->json($message);
                
                //return Response::json(['status'=>0,'info']);
    
                //return ["msg"=>"Subdomain not available"];
               // return Redirect::back()->withErrors(['msg' => $demo_str1.' Domain is not available, Select a new one.']);
            }
    else {            
        $uname = SubDomain::get();
           
        $field = array();


        foreach( $uname as $u)
        {
            $user = $u->subdomain;
          $field[] = $user;  
        }


            if(in_array($demo_str1, $field))
            {
                
                return Response::json(['status'=>0,'msg'=>'Subdomain not available']);
                
                //return ["msg"=>"Subdomain not available"];
              //return Redirect::back()->withErrors(['msg' => $demo_str1.' duplicate domain']);
            }

            else{


   
    // code...
            
            //echo($demo_str1." Domain is available. Please wait for sometime. Your request has been taken.");
        
            //conf file generation
            $filename_conf = '/var/www/html/goyaqoot/public/evosaas/public/newdomain/'.$demo_str1.'.conf';

            $myfile = fopen($filename_conf, "w") or die("Unable to open file!");
            $txt_serverblock = " 
            server {
                root /var/www/html/goyaqoot/public/lms;
                index index.php index.html index.htm index.nginx-debian.html;
                server_name $demo_str1 ; #www.$demo_str1
        
                location / {
                        
                try_files \$uri \$uri/ /index.php?\$query_string;
                }
        
                location ~ \.php$ {
                        include snippets/fastcgi-php.conf;
                        fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
                }
        
                location ~ /\.ht {
                        deny all;
                }
        
            
        }
        
            \n";
        
            fwrite($myfile, $txt_serverblock);  


            fclose($myfile);
        
            // create script file
            $filename = '/var/www/html/goyaqoot/public/evosaas/public/newdomain/'.$demo_str1.'.sh';
            // echo ($filename);
        
        
            // shell_exec('touch  $filename');
            $myfile_sh = fopen($filename, "w") or die("Unable to open file!");
            $txt = "mkdir /var/www/html/goyaqoot/public/$demo_str1 \n mv $filename_conf /etc/nginx/conf.d \nsudo systemctl restart nginx \n";
            fwrite($myfile_sh, $txt);
            $txt = "sudo certbot --nginx -d $demo_str1 \nsudo systemctl restart nginx \n cd /var/www/html/goyaqoot/public/\n sudo chown -R www-data:www-data $demo_str1 \n";
            fwrite($myfile_sh, $txt);
      
            fclose($myfile_sh);
            shell_exec('chmod +x $filename');

            // shell_exec('sudo sh $filename');
        
    
        
        
        
        // $results = shell_exec('/var/www/html/goyaqoot/newdomain.sh');
        // echo ($results);
        
        

        //data store in database


        $created_at = Carbon::now();
        //$username =  Auth::user()->name;
        $username = $request->uname;
        $sub = new SubDomain;
        $domain = ".goyaqoot.com";
        $sub->subdomain = $request->udomain.$domain ;
        $sub->date = $created_at;
        $pen = "Pending";
        $sub->status = $pen;
        $sub->username = $username;
       
        $sub->save();
       // toast('Success','info');
        return Response::json(['status'=>1,'msg'=>'Subdomain available']);
        //return Redirect::back();
    }

    }
   
       
    }
}


