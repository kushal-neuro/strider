class strider::config inherits strider {
    
  exec { 'npm install':
	cwd     => "${install_dir}/${repo}",	
	path    => ['/usr/bin', '/usr/sbin','/usr/local/bin','/usr/local/sbin'],
	logoutput   => on_failure,	
	timeout     => 1800,
  }
  
  file { "${install_dir}/${repo}/lib/libconfig.js":
    content => template('strider/libconfig.js.erb'),
  }
  # add strider user
  exec { "node bin/strider addUser -l ${strider_user_email} -p ${strider_user_pass} -a ${strider_admin} -f ${strider_force_flag}":
	cwd     => "${install_dir}/${repo}",	
	path    => ['/usr/bin', '/usr/sbin','/usr/local/bin','/usr/local/sbin'],
	logoutput   => on_failure,	
  }
  
  exec { "node bin/strider":
	cwd     => "${install_dir}/${repo}",	
	path    => ['/usr/bin', '/usr/sbin','/usr/local/bin','/usr/local/sbin'],
	logoutput   => on_failure,	
  }
  
}
