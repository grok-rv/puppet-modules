class hierademo($domain_name = "default", $api_key = "default_api_key") {

    $domainname = hiera_array('domain_name')
    notify { "the hiera domain_name value is : ${domainname}": }
    notify { "the domain name values is: ${domain_name}": }
    notify { "the api key value is: ${api_key}": }

}
