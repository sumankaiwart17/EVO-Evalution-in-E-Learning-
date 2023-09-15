mkdir /var/www/html/goyaqoot/public/hellogoyaqoot.com 
 mv hellogoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d hellogoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data hellogoyaqoot.com 
