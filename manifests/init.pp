# Class: strider
# ===========================
#
# Full description of class strider here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'strider':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class strider (  
  $repo_url_suffix       = $strider::params::repo_url_suffix,   
  $database_name       = $strider::params::database_name,   
  $owner       = $strider::params::owner,   
  $group       = $strider::params::group,   
  $install_dir       = $strider::params::install_dir,   
  $repo       = $strider::params::repo,   
  $git_package_name   = $strider::params::git_package_name,   
  $git_package_ensure = $strider::params::git_package_ensure,   
  
) inherits strider::params {
 
  #contain strider::nodejs
  #contain strider::db
  #contain strider::clone
  contain strider::config

}
