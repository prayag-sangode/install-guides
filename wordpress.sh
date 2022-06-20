
sudo yum -y install php-gd php-soap php-intl php-mysqlnd php-pdo php-pecl-zip php-fpm php-opcache php-curl php-zip php-xmlrpc wget
sudo curl https://wordpress.org/latest.tar.gz -o /var/www/html
sudo tar zxvf /var/www/html/latest.tar.gz -C /var/www/html/
sudo chown -R apache:apache /var/www/html/wordpress
sudo ls -ld /var/www/html/wordpress
