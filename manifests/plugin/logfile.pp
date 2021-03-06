# https://collectd.org/wiki/index.php/Plugin:LogFile
class collectd::plugin::logfile (
  $ensure        = present,
  $log_level     = 'info',
  $log_file      = '/var/log/collectd.log',
  $log_timestamp = true
) {
  collectd::plugin { 'logfile':
    ensure  => $ensure,
    content => template('collectd/plugin/logfile.conf.erb'),
  }
}
