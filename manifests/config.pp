class strider::config inherits strider {
    
  exec { 'npm install':
	cwd     => "${install_dir}/${repo}",	
	path    => ['/usr/bin', '/usr/sbin','/usr/local/bin','/usr/local/sbin'],
	logoutput   => on_failure,	
	timeout     => 1800,
  }
  
}
