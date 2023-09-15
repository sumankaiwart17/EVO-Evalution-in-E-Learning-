mkdir /var/www/html/goyaqoot/public/ramesh.goyaqoot.com 
 mv ramesh.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d ramesh.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data ramesh.goyaqoot.com 
