class localusers {
	user { 'admin':
		ensure 	   => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid        => 'wheel',
		managehome => true,
                password     => '$6$3Nnx7.u3$DGrIZ3.vGUPOtlxkrDu1KTBok1uQz72zueMjq7pIBtYULxFsz5D2KvN4dMSTNimq4n267xvw1DM1xtJblexcW/',
	 }
	user { 'jeff':
		ensure => present,
		shell  => '/bin/bash',
		home   => '/home/jeff',
		groups => ['wheel', 'finance'],
		managehome => true,
}
	user { 'nick':
		ensure 	   => present,
		shell  	   => '/bin/bash',
		home   	   => '/home/nick',
		groups 	   => ['wheel', 'finance'],
		managehome => true,}
}
