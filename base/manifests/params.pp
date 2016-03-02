class base::params {
    $author = "Ramu Reddy"
    case $::osfamily {
        'RedHat': {$ssh_name = 'sshd'}
        'Debain': {$ssh_name = 'ssh'}
        'default': {fail('os not support by puppet module SSH')}
 }

}
