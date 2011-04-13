# Class: memcached::config::redhat
#
#
class memcached::config::redhat inherits memcached::config {
	file { '/etc/sysconfig/memcached':
		ensure  => present,
		content => template('memcached/memcached.erb.redhat')
	}
}
