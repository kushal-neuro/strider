class strider::clone inherits strider {
  
  file { $install_dir :
    ensure  => directory,
    group   => $group,
    owner   => $owner,
    mode    => '0755',
  }
  
  package { $git_package_name:
    ensure => $git_package_ensure,
  }
  
  vcsrepo { "${install_dir}/${repo}":
    ensure   => latest,
    provider => $git_package_name,
    require  => [ Package["${git_package_name}"] ],
    source   => "https://github.com/Strider-CD/${repo}.git",
	  
  }  	

}
