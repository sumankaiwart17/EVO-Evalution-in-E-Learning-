mkdir /var/www/html/goyaqoot/public/ramesh12.goyaqoot.com 
 mv ramesh12.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d ramesh12.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data ramesh12.goyaqoot.com 
