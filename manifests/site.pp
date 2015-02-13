$topscope = "This is from the ~ site.pp~ file"

#node default {
#
#	"/tmp/IT-FUCKING-WORKS.txt": content => "It worked!";
#		}
#}

node "docker.nvanadium.com" {
#	class { 'ntp': package => 'ntp', }
#	include ntp::service
	include hierademo
	include roles::webserver
}
	

node /puppet\d{1}|.*.nvanadium.com$/ {
	include roles::webserver
}
