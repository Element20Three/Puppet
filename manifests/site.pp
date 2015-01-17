$topscope = "This is from the ~ site.pp~ file"

#node default {
#
#	"/tmp/IT-FUCKING-WORKS.txt": content => "It worked!";
#		}
#}

node /puppet\d{1}|.*.nvanadium.com$/ {
	$nodescope = "defined within our node"
	include localusers
	include localusers::groups::wheel
	include localusers::groups::finance
	include base
	include base::params
	include base::ssh
	include base::variables
	include ntp
#	notify { 'Rejoice! Puppetmaster is here!': }	

}
