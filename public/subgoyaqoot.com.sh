mkdir /var/www/html/goyaqoot/public/subgoyaqoot.com 
 mv subgoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d subgoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data subgoyaqoot.com 
