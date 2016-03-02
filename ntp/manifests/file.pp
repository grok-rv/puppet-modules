class ntp::file ($template=$ntp::params::template, $servers=$ntp::params::default_servers) inherits ntp {
        
        #$template = $ntp::params::template
        #$servers  = $ntp::params::default_servers      
        notify {"the new template varaible is now ${template}":}           
        file { '/etc/ntp.conf':
                ensure => present,
                require => Package['ntp'],
               # content => template("ntp/${template}.erb"),
    
        }

}
