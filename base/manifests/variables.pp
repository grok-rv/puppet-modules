class base::variables {
   
    $localvar = "local variable"
    $top_scope = "new top scope value"
    $nodescope = "new node scope variable"
    
    notify { "${localvar} is your local var variable":}
    notify { "${::top_scope} is your top scope variable":}
    notify { "${nodescope} is your nodescope variable":} 
    notify { "${::operatingsystem} is your operating system":
    
    }
}
