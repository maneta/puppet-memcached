# Class: memcached::config
#
#
class memcached::config {
	File {
		owner   => 'root',
		group   => 'root',
		mode    => '0644',
		notify  => Class['memcached::service'],
		require => Class['memcached::install'],
	}
}
