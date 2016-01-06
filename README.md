# Puppet LSBInit
Puppet module for installing services with LSBInit Python module: https://github.com/djtaylor/python-lsbinit

#### Generating Init Script

The following example code will work in a Puppet manifest:

```ruby
lsbinit { 'my_service': 
  service_name       => 'my_service',
  service_cmd        => "/usr/local/bin/my_service <options>",
  service_desc_short => 'A short service description.',
  service_desc_long  => 'A slightly longer, more verbose service description.',
  service_pid        => '/var/run/my_service.pid',
  service_lock       => '/var/lock/my_service',
  service_log        => '/var/log/my_service.log'
}
```
