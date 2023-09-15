<?php
    // lms 
    // DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4
    // https://uksrv1.websiteserverbox.com:2083
    // masudpag

return [

    'ftp_ip'      => '185.120.7.147' ,
    'ftp_user'    => 'customde',
    'ftp_pass'    => 'secret!@#$' ,
    'src_path'    => "/dir_template" ,
    'dest_path'   => '/_wildcard_.custom-development.xyz/uploads/' ,

    'db_prefix'                => 'customde_' ,
    'db_create_endpoint'       => "https://server54.mainpacket.com:2083/execute/Mysql/create_database?name=customde_",
    'assign_db_user_endpoint'  => "https://server54.mainpacket.com:2083/execute/Mysql/set_privileges_on_database?user=customde_lms-saas-model&database=customde_", 
    'domain_add_endpoint'      => 'https://server54.mainpacket.com:2087/json-api/cpanel?cpanel_jsonapi_user=customde&cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=AddonDomain&cpanel_jsonapi_func=addaddondomain&dir=_wildcard_.custom-development.xyz&newdomain=' ,
    'domain_remove_endpoint'   => 'https://server54.mainpacket.com:2087/json-api/cpanel?cpanel_jsonapi_user=customde&cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=AddonDomain&cpanel_jsonapi_func=deladdondomain&domain=' ,
    'authorization_header'     => 'cpanel customde:3C7OQHSCT0E85IV38SKHKJGHU6GN4NVW' ,
    'whm_authorization_header' => 'whm customde:453Z4MM737Y0WE9KNRWZS9SC6TM7LS3U' ,
     
    // 'ftp_ip'      => '185.221.216.5' ,
    // 'ftp_user'    => 'lms@custom-development.xyz',
    // 'ftp_pass'    => 'A@ademo' ,
    // 'src_path'    => "/dir_template" ,
    // 'dest_path'   => '/public_html/almsmaincode/uploads/' ,

    // 'db_prefix'               => 'masudpag_' ,
    // 'db_create_endpoint'      => "https://uksrv1.websiteserverbox.com:2083/execute/Mysql/create_database?name=masudpag_",
    // 'assign_db_user_endpoint' => "https://uksrv1.websiteserverbox.com:2083/execute/Mysql/set_privileges_on_database?user=masudpag_lms-saas-model&database=masudpag_", 
    // 'authorization_header'    => 'cpanel masudpag:DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4' ,

] ;

// ftp [ ip , user , pass] 