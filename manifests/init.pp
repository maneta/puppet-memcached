#vim: set expandtab tabstop=2 shiftwidth=2 softtabstop=2:
##############################################################
# @filename : init.pp
# @created : Sat, 03 Jul 2010 13:44:29 +1000
# @last changed: Sun 19 Sep 2010 10:49:03 EST
# @author : Mick Pollard <aussielunix@gmail.com>
##############################################################
#
# Class: memcached
#
# This class manages a memcached server
#
# Parameters:
#   $port
#   $cachesize
#
# Actions:
#   Ensures the memcached package is installed and running.
#
# Requires:
#   - Package["memcached"]
#
class memcached {
	package { memcached:
		ensure => latest 
	}

	file { "/etc/sysconfig/memcached":
		mode => "644",require => Package["memcached"],
		content => template("memcached/memcached"),
		notify  => Service['memcached'],
	}

	service { "memcached":
		enable => true,
    ensure => running,
    hasrestart => true,
    hasstatus => true,
    require => Package["memcached"],
  }
}

