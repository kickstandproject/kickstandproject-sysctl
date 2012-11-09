# == Define: sysctl::function::configfile
#
# === Parameters
#
# === Variables
#
# === Examples
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
define sysctl::function::configfile(
  $content,
) {
  $base = ${sysctl::params::configdir}/${name}"

  file { $base:
    ensure  => file,
    content => $content,
    notify  => Exec["sysctl -p ${base}"],
    require => File[$sysctl::params::configdir],
  }

  exec { "sysctl -p ${base}":
    refreshonly => true,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
