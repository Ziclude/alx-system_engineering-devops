# fixes Apache error 500 by fixing it

exec { 'fix_apache':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => "sed -i 's/.phpp/.php/g' /var/www/html/wp-settings.php",
  provider => 'shell'}
