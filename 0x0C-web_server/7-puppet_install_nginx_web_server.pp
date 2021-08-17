# time to practice
package {'nginx':
  ensure => 'present',
}->
exec {'Holberton':
  command => '/bin/echo "Holberton School" > /var/www/html/index.html',
  returns => [0,2]
}->
exec {'sed -i "/listen 80 default_server;/a rewrite ^/redirect_me https://youtu.be/IBH4g_ua5es permanent;" /etc/nginx/sites-available/default':
  path => '/usr/bin:/usr/sbin:/bin',
}->
exec {'run':
  command => '/usr/sbin/service nginx restart',
}
