class practice::file {
    file { 'motd1':
            path    => '/etc/motd',
            content => 'welcome to my server',
    }
        package { 'motd2':
                name => 'httpd',
        }

    file { 'motd2':
            path    => '/etc/motd',
            content => 'welcome to my server 2!',
        }

}
