class strider::db inherits strider {
  
  class {'::mongodb::globals':
    manage_package_repo => true,
  }->
  class {'::mongodb::client': } ->
  class {'::mongodb::server': }
  
  mongodb_database { $database_name:
    ensure   => present,
    require  => Class['mongodb::server'],
  }
  
}
