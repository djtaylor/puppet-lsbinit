# Public method for creating an init.d script with Python LSBInit
define lsbinit(
  $ensure             = present,
  $id                 = $title,
  $service_name       = undef,
  $service_desc_short = undef,
  $service_desc_long  = undef,
  $service_pid        = undef,
  $service_lock       = undef,
  $service_cmd        = undef,
  $service_log        = undef
) {
  
  # Install module
  class { 'lsbinit::install': }
  
  # Deploy init.d script
  class { 'lsbinit::deploy': 
    id      => $id,
    require => Class['lsbinit::install']
  }
}