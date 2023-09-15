<?php

namespace App\Helpers;

class Template
{
    public static function UploadTemplateFiles($name)
    {
        // ftp 
        $config =    config( config('helpers.vendor') ) ;

        // return $config ;

        $host = $config['ftp_ip'];

        $user = $config['ftp_user'];

        $pass = $config['ftp_pass'];

        $ftp = new \FtpClient\FtpClient();

        $ftp->connect($host);

        $ftp->login($user, $pass);

        $src_path = __DIR__  . $config['src_path'];

        $dest_path = $config['dest_path'] . $name;

        $ftp->mkdir($dest_path);

        $ftp->putAll($src_path, $dest_path);
    }

    // public static function UploadTemplateFiles($name){
    //     // ftp 
    //     $host = "185.221.216.5" ;

    //     $user = "lms@custom-development.xyz" ;

    //     $pass = "A@ademo" ; 

    //     $ftp = new \FtpClient\FtpClient();

    //     $ftp->connect($host) ;

    //     $ftp->login($user,$pass) ;

    //     $src_path = __DIR__ . "/dir_template" ;

    //     $dest_path = "/public_html/almsmaincode/uploads/$name" ;

    //     $ftp->mkdir($dest_path) ;

    //     $ftp->putAll($src_path,$dest_path) ;


    // }


}
