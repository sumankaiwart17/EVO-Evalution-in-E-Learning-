mkdir /var/www/html/goyaqoot/public/rameshgoyaqoot.com 
 mv rameshgoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d rameshgoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data rameshgoyaqoot.com 
