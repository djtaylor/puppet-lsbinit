# Install Python PIP and LSBInit module
class lsbinit::install {
  
  # Python requirements
  exec { 'install_pip': 
    command => '/usr/bin/apt-get install python-pip -y',
    onlyif  => '/usr/bin/test ! -f /usr/bin/pip'
  }
  
  # LSBInit module
  exec { 'install_lsbinit': 
    command => '/usr/bin/pip install lsbinit',
    onlyif  => '/usr/bin/test -z "$(pip show lsbinit)"'
  }
  
  # Resource ordering
  Exec['install_pip'] -> Exec['install_lsbinit']
}