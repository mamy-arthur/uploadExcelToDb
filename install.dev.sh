export APP_DEBUG=1 && composer install && \
php bin/console cache:clear && \
chmod 777 -R public/uploads/excel;