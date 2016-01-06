# Install Python PIP and LSBInit module
class lsbinit::install {
  include python
  
  # Python requirements
  python {
    version => 'system',
    pip     => 'present'
  }
  
  # LSBInit module
  python::pip { 'lsbinit' :
    pkgname => 'lsbinit',
    ensure  => present
  }
}