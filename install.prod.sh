composer install && \
php bin/console --env=dev cache:clear && \
php bin/console --env=dev -n doctrine:migrations:migrate && \
php bin/console --env=dev -n doctrine:fixtures:load --append; \
export APP_DEBUG=0 && composer dump-env $APP_ENV && \
composer install --no-dev --optimize-autoloader && \
php bin/console cache:clear;