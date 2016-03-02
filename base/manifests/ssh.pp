class base::ssh {
 
  #  case $osfamily{
   #     'RedHat': { $ssh_name = 'sshd'}
    #    'Debian': { $ssh_name = 'ssh' }
     #   'default': { fail('os not supported by puppet')}
    #}
    # the same above case statement can be executeed as below selector statement
    #$ssh_name = $osfamily ? {
    #    'RedHat' => 'sshd',
    #    'Debian' => 'ssh',
    #    'default' => 'value',
    #}
       
    package { 'openssh-package':
             name   => 'openssh-server',
             ensure => present,
             #before => File['/etc/ssh/sshd_config'],
       
        }
    file { '/etc/ssh/sshd_config':
            ensure  => file,
            owner   => 'root',
            group   => 'root',
            require => Package['openssh-package'],
            source  => 'puppet:///modules/base/sshd_config',
            notify  => Service['ssh-server']
        }

    service { 'ssh-server':
             name      => $base::params::ssh_name,
             #name      => $ssh_name,
             ensure    => running,
             enable    => true,
             #alias     => ssh-server-alias,
            # subscribe => File['/etc/ssh/sshd_config'],
        }
}
