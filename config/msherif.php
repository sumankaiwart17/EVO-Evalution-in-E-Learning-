<?php
    // lms 
    // DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4
    // https://uksrv1.websiteserverbox.com:2083
    // masudpag

return [

    'ftp_ip'      => '198.251.89.144' ,
    'ftp_user'    => 'demo43@saas-lms.xyz',
    'ftp_pass'    => 'secret!@#$' ,
    'src_path'    => "/dir_template" ,
    'dest_path'   => '/_wildcard_.msherif.xyz/uploads/' ,

    'db_prefix'                => 'saaslms_' ,
    'db_create_endpoint'       => "https://saas-lms.xyz:2083/execute/Mysql/create_database?name=saaslms_",
    'assign_db_user_endpoint'  => "https://saas-lms.xyz:2083/execute/Mysql/set_privileges_on_database?user=saaslms_msherif&database=saaslms_", 
    'domain_add_endpoint'      => 'https://s11.asurahosting.com:2087/json-api/cpanel?cpanel_jsonapi_user=customde&cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=AddonDomain&cpanel_jsonapi_func=addaddondomain&dir=_wildcard_.msherif.xyz&newdomain=' ,
    'domain_remove_endpoint'   => 'https://s11.asurahosting.com:2087/json-api/cpanel?cpanel_jsonapi_user=customde&cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=AddonDomain&cpanel_jsonapi_func=deladdondomain&domain=' ,
    'authorization_header'     => 'cpanel saaslms:VE8QVFKDAF7ULQGK2D3ILCMMP6MG8R13' ,
    'whm_authorization_header' => 'whm customde:H324DB1YP8AI6BK5IM78XZSDL2XSTRXQ' ,
     
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