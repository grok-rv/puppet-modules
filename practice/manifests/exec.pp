class practice::exec {

    exec {'/etc/hosts':

            name    => 'webserver01',        
            ip      => '10.0.2.1',
            comment => 'mywebserver'
    

    }


}
