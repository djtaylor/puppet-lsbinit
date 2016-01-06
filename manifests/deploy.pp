# Deploy the init.d script
class lsbinit::deploy(
  $service_name       = undef,
  $service_desc_short = undef,
  $service_desc_long  = undef,
  $service_pid        = undef,
  $service_lock       = undef,
  $service_cmd        = undef,
  $service_log        = undef
) {  
  
  # Init script
  $init_script = "/etc/init.d/${service_name}"
  
  # Deploy the init script
  file { $init_script: 
    ensure  => file,
    mode    => '0755',
    content => epp('service.epp', {
      service_name       => $service_name,
      service_desc_short => $service_desc_short,
      service_desc_long  => $service_desc_long,
      service_pid        => $service_pid,
      service_lock       => $service_lock,
      service_cmd        => $service_cmd,
      service_log        => $service_log
    })
  }
}