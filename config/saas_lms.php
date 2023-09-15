<?php
    // lms 
    // DPQXXH84ODADYZWFVRVX85OWOZ0UIZJ4
    // https://uksrv1.websiteserverbox.com:2083
    // masudpag

return [

    'ftp_ip'      => '162.214.55.205' ,
    'ftp_user'    => 'info@elearningegypt.com',
    'ftp_pass'    => 'secret!@#$' ,
    'src_path'    => "/dir_template" ,
    'dest_path'   => '/public_html/lms/uploads/' ,

    'db_prefix'                => 'elearnin_' ,
    'db_create_endpoint'       => "https://elearningegypt.com:2083/execute/Mysql/create_database?name=elearnin_",
    'assign_db_user_endpoint'  => "https://elearningegypt.com:2083/execute/Mysql/set_privileges_on_database?user=elearnin_sas&database=elearnin_", 
    'domain_add_endpoint'      => 'https://s11.asurahosting.com:2087/json-api/cpanel?cpanel_jsonapi_user=customde&cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=AddonDomain&cpanel_jsonapi_func=addaddondomain&dir=public_html/lms&newdomain=' ,
    'domain_remove_endpoint'   => 'https://s11.asurahosting.com:2087/json-api/cpanel?cpanel_jsonapi_user=customde&cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=AddonDomain&cpanel_jsonapi_func=deladdondomain&domain=' ,
    'authorization_header'     => 'cpanel elearningegypt:905DP6TCNJ4VDBH8N64OD6TYVZ5LR4Z2' ,
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