mkdir /var/www/html/goyaqoot/public/.goyaqoot.com 
 mv .goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d .goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data .goyaqoot.com 
