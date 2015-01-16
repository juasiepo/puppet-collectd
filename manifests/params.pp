# Class: collectd::params
#
class collectd::params (
  $pkgname        = $::operatingsystem ? {
    /(?i:centos|redhat|fedora|OracleLinux)/ => "collectd.${::architecture}",
    default                     => 'collectd',
  },
  $config_file    = $::operatingsystem ? {
    /(?i:centos|redhat|fedora|OracleLinux)/ => '/etc/collectd.conf',
    default                     => '/etc/collectd/collectd.conf',
  },
  $config_template_name = $::operatingsystem ? {
    /(?i:centos|redhat|fedora|OracleLinux)/ => 'collectd/collectd.conf.CentOS',
    /(?i:Debian|Ubuntu)/        => 'collectd/collectd.conf.Debian',
    default                     => 'collectd/collectd.conf.CentOS',
  },
  $config_dir     = '/etc/collectd.d',
  $purge          = true,
  $service_name   = 'collectd',
  $service_ensure = 'running',
  $service_enable = true,
) {
}

