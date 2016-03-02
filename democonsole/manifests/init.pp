class democonsole ($param1 = "param 1 default") {
    notify { "the value of our console ui variable is ${console_auth}": }
    notify { "the value of our param1 parameter is ${param1}": }
}
