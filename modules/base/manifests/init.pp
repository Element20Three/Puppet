class base {
	$dnsutil = $osfamily ? {
		'RedHat' => 'bind-utils',
		'Debian' => 'dnsutils',
	}
	$vim = $osfamily ? {
		'RedHat' => 'vim-enhanced',
		'Debian' => 'vim',
	}
	$systemupdate = $osfamily ? {
		'RedHat' => '/usr/bin/yum update -y',
		'Debian' => '/usr/bin/apt-get upgrade -y',

	}	
	 
	
	package { ['tree',$vim,'telnet',$dnsutil]:
		ensure => present,
	}
	schedule { 'system-daily': 
		period => daily,
		range  => '00:00 - 23:30',
	}
	exec { $systemupdate:	
		schedule => 'system-daily',
		}
}

