class base::variables {
	$localvar = "LOCAL VAR"
	$topscope = "NEW -TOP- scope value"
	
	$nodescope = "new -node- scope variable"
	
	notify { "${::topscope} is your top scope variable": }
	notify { "${nodescope} is your nodescope variable": }
	notify { "${localvar} is your nodescope variable": }
	notify { "${::operatingsystem} is your operating system": }

}
