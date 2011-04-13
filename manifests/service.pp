# Class: memcached::service
#
#
class memcached::service {
	service { 'memcached':
		ensure     => running,
		enable     => true,
		hasrestart => true,
		hasstatus  => true,
		require    => Class['memcached::config']
	}
}
