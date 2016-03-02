class base::if {
    if $::hostname =~ /^srv-hadoop-gmail-com(\d+)/ {
        notice "you have arrived at server $0"
    }
}
