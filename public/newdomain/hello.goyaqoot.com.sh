mkdir /var/www/html/goyaqoot/public/hello.goyaqoot.com 
 mv hello.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d hello.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data hello.goyaqoot.com 
