execute "composer install" do
  command "php composer.phar install && touch /var/log/.php_composer_installed"
  creates "/var/log/.php_composer_installed"
  action :run
end
