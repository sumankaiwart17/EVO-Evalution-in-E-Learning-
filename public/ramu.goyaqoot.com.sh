mkdir /var/www/html/goyaqoot/public/ramu.goyaqoot.com 
 mv ramu.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d ramu.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data ramu.goyaqoot.com 
