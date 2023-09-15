mkdir /var/www/html/goyaqoot/public/demo3.goyaqoot.com 
 mv demo3.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d demo3.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data demo3.goyaqoot.com 
