mkdir /var/www/html/goyaqoot/public/ram.goyaqoot.com 
 mv ram.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d ram.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data ram.goyaqoot.com 
