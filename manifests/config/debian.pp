# Class: memcached::config::debian
#
#
class memcached::config::debian inherits memcached::config {
	file { '/etc/default/memcached':
		ensure  => present,
		content => template('memcached/memcached.erb.debian')
	}
	
	file { '/etc/memcached.conf':
		ensure  => present,
		content => template('memcached/memcached.conf.erb')
	}
}
