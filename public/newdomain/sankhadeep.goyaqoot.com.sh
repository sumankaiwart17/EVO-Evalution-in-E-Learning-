mkdir /var/www/html/goyaqoot/public/sankhadeep.goyaqoot.com 
 mv sankhadeep.goyaqoot.com.conf /etc/nginx/conf.d 
sudo systemctl restart nginx 
sudo certbot --nginx -d sankhadeep.goyaqoot.com 
sudo systemctl restart nginx 
 cd /var/www/html/goyaqoot/public/
 sudo chown -R www-data:www-data sankhadeep.goyaqoot.com 
