mkdir /var/www/html/goyaqoot/public/rameshtech.goyaqoot.com 
 mv rameshtech.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d rameshtech.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data rameshtech.goyaqoot.com 
