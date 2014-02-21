sudo puppet apply -e 'group { "osdc":     ensure => present }'
sudo puppet apply -e 'user  { "osdcuser": ensure => present, comment => "OSDC Demo user", groups => "osdc", home => "/home/osdcuser" }'


