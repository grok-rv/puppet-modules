class practice {
    
    host { 'webserver01':
                name          => 'webserver01.mylabserver.com',
                ip            => '10.1.1.1',
                host_aliases  => ['web01', 'webhead01', 'webserver1'],
                comment       => '',
    }
    host { 'webserver05':
                name    => 'webserver05.mylabserver.com',
                ip      => '10.2.2.2',
                comment => '',
        }

}
