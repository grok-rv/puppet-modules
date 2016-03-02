class practice::mount {

    file {'/content':
            ensure => directory,
        }

    mount { '/content':
                device  => '/dev/xvdj',
                fstype  => 'ext2',
                options => 'defaults',
                ensure  => 'mounted',
                require => File['/content'],
           }

}
