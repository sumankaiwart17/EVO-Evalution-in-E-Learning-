mkdir /var/www/html/goyaqoot/public/suman.goyaqoot.com 
 mv suman.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d suman.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data suman.goyaqoot.com 
