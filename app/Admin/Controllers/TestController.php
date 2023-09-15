<?php

namespace App\Http\Controllers ;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
class TestController extends Controller {

        public function __construct()
        {
            // $this->middleware('auth');
        }
// curl -H "Authorization: cpanel arifisti:2WDEXX1O0J9MT7SWC72JAUW26T2SAEHH" 
// "https://arif-istiak.xyz:2083/execute/Mysql/set_privileges_on_database?user=arifisti_test&database=arifisti_testdb&privileges=ALL PRIVILEGES" 
        public function index(){
            $endpoint = "https://arif-istiak.xyz:2083/execute/Mysql/create_database?name=arifisti_testdb";
            $client = new \GuzzleHttp\Client();
            $id = 5;
            $value = "ABC";
            
            $response = $client->request('GET', $endpoint, ['headers' => [
                'Authorization' => 'cpanel arifisti:2WDEXX1O0J9MT7SWC72JAUW26T2SAEHH', 
            ]]);
            
            // url will be: http://my.domain.com/test.php?key1=5&key2=ABC;
            
            $statusCode = $response->getStatusCode();
            $content = $response->getBody();
        }

        public function index2(){
            
            $endpoint = "https://arif-istiak.xyz:2083/execute/Mysql/set_privileges_on_database?user=arifisti_test&database=arifisti_testdb&privileges=ALL PRIVILEGES" ;
            $client = new \GuzzleHttp\Client();
            $id = 5;
            $value = "ABC";
            
            $response = $client->request('GET', $endpoint, ['headers' => [
                'Authorization' => 'cpanel arifisti:2WDEXX1O0J9MT7SWC72JAUW26T2SAEHH', 
            ]]);
            
            // url will be: http://my.domain.com/test.php?key1=5&key2=ABC;
            
            $statusCode = $response->getStatusCode();
            $content = $response->getBody();
        }


}