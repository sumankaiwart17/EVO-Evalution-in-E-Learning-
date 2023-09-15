mkdir /var/www/html/goyaqoot/public/mohangoyaqoot.com 
 mv mohangoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d mohangoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data mohangoyaqoot.com 
