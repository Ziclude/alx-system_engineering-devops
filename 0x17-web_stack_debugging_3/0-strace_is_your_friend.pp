# fixes Apache error 500 by fixing it

exec { 'fix apache':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path	  => '/usr/local/bin/:/bin/'
}
