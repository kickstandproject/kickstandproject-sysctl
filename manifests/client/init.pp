# == Class: sysctl::client::init
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
class sysctl::client::init {
  include sysctl::client::install
  include sysctl::client::config

  File {
    group => $sysctl::params::group,
    mode  => $sysctl::params::mode,
    owner => $sysctl::params::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
