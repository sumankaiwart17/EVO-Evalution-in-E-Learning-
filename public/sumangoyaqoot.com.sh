mkdir /var/www/html/goyaqoot/public/sumangoyaqoot.com 
 mv sumangoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d sumangoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data sumangoyaqoot.com 
