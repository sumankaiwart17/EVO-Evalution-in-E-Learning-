mkdir /var/www/html/goyaqoot/public/demo2.goyaqoot.com 
 mv demo2.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d demo2.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data demo2.goyaqoot.com 
