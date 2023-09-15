<?php 
namespace App\Helpers;
use DB;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Artisan;
class WHM {
    
    public  static function config () {
        return   config( config('helpers.vendor') ) ;
    }
    
    public static function CreateDatabase($name) {
       

        $config =  WHM::config() ;
                
        $endpoint = $config['db_create_endpoint'] . strtolower($name)  ;   

        $client = new \GuzzleHttp\Client();
        
        $response = $client->request('GET', $endpoint, ['headers' => [
            'Authorization' => $config['authorization_header'], 
        ]]);

        $statusCode = $response->getStatusCode();
        
        $content = $response->getBody();
   
    }

    public static function AssignUserToDatabase($name){

        $config =  WHM::config() ;

        $endpoint = $config['assign_db_user_endpoint'] . strtolower($name) . '&privileges=ALL PRIVILEGES' ;

        $client = new \GuzzleHttp\Client();
        
        $response = $client->request('GET', $endpoint, ['headers' => [
            'Authorization' => $config['authorization_header'],  
        ]]);
       
        $statusCode = $response->getStatusCode();
       
        $content = $response->getBody();        
    }

    // WARNING :  will only work on local server 
    public static function RunMigration($name) {

        $config =  WHM::config() ;

        $db_name = $config['db_prefix']. strtolower($name)  ;    
        
        $main_db = Config::get("database.connections.mysql.database") ; //,"saas_1"

        Config::set("database.connections.mysql.database",$db_name) ; //, set new db dynamically 

        DB::connection("mysql")->reconnect() ;

        Artisan::call("migrate:install") ;       

        Artisan::call("migrate",['--path' => '/database/migrations/new_db']) ;

        Config::set("database.connections.mysql.database",$main_db) ; //,"saas_1"

        DB::connection("mysql")->reconnect() ;
        
        /// Artisan::call('migrate', array('--path' => 'app/migrations', '--force' => true));   
    }

    public static function updateCustomerCredential($user){
        

        $config =  WHM::config() ;

        $db_name = $config['db_prefix']. strtolower($user->name)  ;


        $main_db = Config::get("database.connections.mysql.database") ; //,"saas_1"

        Config::set("database.connections.mysql.database",$db_name) ; //, set new db dynamically 

        DB::connection("mysql")->reconnect() ;

        // update username pass 
        DB::table('users')->where('id','=','1')
                          ->update(['email' => $user->email , 'password' => $user->password_2 ]) ;

        Config::set("database.connections.mysql.database",$main_db) ; //,"saas_1"

        DB::connection("mysql")->reconnect() ;

   
    }

    public static function addDomain($domain) {
        
        // domain will point to wild card dir on server
        $config      =  WHM::config() ;
        // return $config ;
        $endpoint    = $config['domain_add_endpoint'] .$domain. '&subdomain=demo.' . $domain ;
        
        $client      = new \GuzzleHttp\Client(); 
        
        $response    = $client->request('GET', $endpoint, ['headers' => [
            'Authorization' => $config['whm_authorization_header'], 
        ]]);
        
        $statusCode  = $response->getStatusCode();
        
        $content     = $response->getBody();
        // echo $content ;    
        return $statusCode ;
    }


    public static function removeDomain($domain) {

        $config      =  WHM::config() ;
        // return $config ;
        $endpoint    = $config['domain_remove_endpoint'] .$domain  . '&subdomain=demo.' . $domain ;
        // return $endpoint  ;
        $client      = new \GuzzleHttp\Client(); 
        
        $response    = $client->request('GET', $endpoint, ['headers' => [
            'Authorization' => $config['whm_authorization_header'], 
        ]]);
        
        $statusCode  = $response->getStatusCode();
        
        $content     = $response->getBody();
        
        // echo $content ;
        
        return $statusCode ;
    }


}