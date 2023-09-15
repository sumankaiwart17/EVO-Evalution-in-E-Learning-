<?php

namespace App\Listeners;

use App\Events\NewCustomerRegisterEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Auth\Events\Verified;
use App\Helpers\WHM ;
use App\Helpers\Template ;
use Illuminate\Support\Facades\Artisan;

class SetupNewCustomerDBListener
{

    public function __construct()
    {
        //
    }


    public function handle(Verified $event)
    {
        // // locally 
        // Log::debug("setting up databse");
        // // // dump($event->user->name) ;
        // $db_name = "saas_customer_" .$event->user->name ;
        // // // // create db 
        // DB::statement("create database " . $db_name .";");
        // // //
        try {

            $name = $event->user->name ;
            
            WHM::CreateDatabase( $name ) ;
            
            WHM::AssignUserToDatabase( $name ) ;


            WHM::RunMigration( $name ) ;

            // change sass_customers default user_name password with main dbs 
            WHM::updateCustomerCredential( $event->user ) ;


            Template::UploadTemplateFiles( $name ) ;

            
        }catch(\Exception $e) {
            
            Log::debug($e) ;
        
        }
   
    }
}
