# Automation of custom HTTP header
exec { 'command':
command => 'apt-get -y update;
apt-get -y install nginx;
sudo sed -i "/listen 80default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
service nginx restart'
provider => shell,
}
