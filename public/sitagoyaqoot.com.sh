mkdir /var/www/html/goyaqoot/public/sitagoyaqoot.com 
 mv sitagoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d sitagoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data sitagoyaqoot.com 
