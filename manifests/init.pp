class memcached {
	require memcached::params
	
	include memcached::install, "memcached::config::${memcached::params::os_suffix}", memcached::service
}
