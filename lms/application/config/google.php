<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
|  Google API Configuration
| -------------------------------------------------------------------
| 
| To get API details you have to create a Google Project
| at Google API Console (https://console.developers.google.com)
| 
|  client_id         string   Your Google API Client ID.
|  client_secret     string   Your Google API Client secret.
|  redirect_uri      string   URL to redirect back to after login.
|  application_name  string   Your Google application name.
|  api_key           string   Developer key.
|  scopes            string   Specify scopes
*/
$config['google']['client_id']        = get_settings('google_client_id');
$config['google']['client_secret']    = get_settings('google_client_secret');
$config['google']['redirect_uri']     = get_settings('google_redirect_uri');
$config['google']['application_name'] = 'Login to Academylms';
$config['google']['api_key']          = '726665203346-8uspg9ooim41gemf888j70k8a3tguedn.apps.googleusercontent.com';
$config['google']['scopes']           = array();