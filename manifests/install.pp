# Install Python PIP and LSBInit module
class lsbinit::install {
  
  # Python requirements
  class { '::python':
    version => 'system',
    pip     => 'present'
  }
  
  # LSBInit module
  python::pip { 'lsbinit' :
    pkgname => 'lsbinit',
    ensure  => present
  }
}