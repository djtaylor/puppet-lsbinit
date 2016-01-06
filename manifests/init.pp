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
  
  # Install module and deploy init.d script
  Class['lsbinit::install'] -> Class['lsbinit::deploy']
  
}