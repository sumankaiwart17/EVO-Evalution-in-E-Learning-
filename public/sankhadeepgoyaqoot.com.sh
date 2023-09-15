mkdir /var/www/html/goyaqoot/public/sankhadeepgoyaqoot.com 
 mv sankhadeepgoyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d sankhadeepgoyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data sankhadeepgoyaqoot.com 
