class localusers {
	user { 'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid        => 'wheel',
		managehome =>  true,
		
		}
	user { 'jeff':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/jeff',
		managehome => true,
		groups     => ['finance','wheel'],
	}
}
