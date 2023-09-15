<?php 
namespace App\Helpers;
use DB;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Artisan;
class WHM_BAK {
    
    // lms 
    // DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4
    // https://uksrv1.websiteserverbox.com:2083
    // masudpag
    
    public static function CreateDatabase($name) {

        $endpoint = "https://uksrv1.websiteserverbox.com:2083/execute/Mysql/create_database?name=masudpag_{$name}";
        
        $client = new \GuzzleHttp\Client();
        
        $response = $client->request('GET', $endpoint, ['headers' => [
            'Authorization' => 'cpanel masudpag:DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4', 
        ]]);

        $statusCode = $response->getStatusCode();
        
        $content = $response->getBody();
   
    }

    public static function AssignUserToDatabase($name){
       
        $endpoint = "https://uksrv1.websiteserverbox.com:2083/execute/Mysql/set_privileges_on_database?user=masudpag_lms-saas-model&database=masudpag_{$name}&privileges=ALL PRIVILEGES" ;
       
        $client = new \GuzzleHttp\Client();
        
        $response = $client->request('GET', $endpoint, ['headers' => [
            'Authorization' => 'cpanel masudpag:DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4', 
       
        ]]);
       
        $statusCode = $response->getStatusCode();
       
        $content = $response->getBody();        
    }

    // WARNING :  will only work on local server 
    public static function RunMigration($name) {

        $db_name = "masudpag_".$name ;     

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

        $db_name = "masudpag_".$user->name ;


        $main_db = Config::get("database.connections.mysql.database") ; //,"saas_1"

        Config::set("database.connections.mysql.database",$db_name) ; //, set new db dynamically 

        DB::connection("mysql")->reconnect() ;

        // update username pass 
        DB::table('users')->where('id','=','1')
                          ->update(['email' => $user->email , 'password' => $user->password_2 ]) ;

        Config::set("database.connections.mysql.database",$main_db) ; //,"saas_1"

        DB::connection("mysql")->reconnect() ;


   
    }

}