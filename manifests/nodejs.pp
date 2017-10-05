class strider::nodejs inherits strider {
  
  class { 'nodejs':
	repo_url_suffix => $repo_url_suffix,
  }
  
  package { 'node-gyp':
    ensure   => 'present',
    provider => 'npm',
  }
  
#class { '::nodejs':
#	  manage_package_repo       => false,
#	  nodejs_dev_package_ensure => 'present',
#	  npm_package_ensure        => 'present',
#	}
 
}
