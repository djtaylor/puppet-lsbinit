# Deploy the init.d script
class lsbinit::deploy(
  $id = undef
) {
  
  # Service attributes
  $lsbinit = Lsbinit[$id]
  
  # Init script
  $init_script = "/etc/init.d/${service_name}"
  
  # Deploy the init script
  file { $init_script: 
    ensure  => file,
    mode    => '0755',
    content => epp('service.epp', {
      service_name       => getparam($lsbinit, 'service_name'),
      service_desc_short => getparam($lsbinit, 'service_desc_short'),
      service_desc_long  => getparam($lsbinit, 'service_desc_long'),
      service_pid        => getparam($lsbinit, 'service_pid'),
      service_lock       => getparam($lsbinit, 'service_lock'),
      service_cmd        => getparam($lsbinit, 'service_cmd'),
      service_log        => getparam($lsbinit, 'service_log')
    })
  }
}