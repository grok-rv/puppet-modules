class ntp($package = $package) inherits ntp::params{
#class ntp ($package = $ntp::params::package_name) inherits ntp::params {

    package { 'ntp':
        name   => $package,
        ensure => present,
    }
    notify {"the variable package is eaqual to ${package}": }
    class { 'ntp::file' : template => 'hello' }
    #include ntp::file
    include ntp::service
}
