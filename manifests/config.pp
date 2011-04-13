# Class: memcached::config
#
#
class memcached::config {
	File {
		owner   => root,
		group   => root,
		mode    => 644,
		notify  => Class['memcached::service'],
		require => Class['memcached::install']
	}
}
