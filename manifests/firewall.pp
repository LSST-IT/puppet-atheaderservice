# Configure firewall for AT HeaderService
#
# @summary Configure firewall for AT HeaderService
#
# @example
#   include atheaderservice::firewall
class atheaderservice::firewall (
  $web_ports,
  $web_subnets,
) {

  $web_subnets.each | $location, $source_cidr |
  {
    firewall { "510 allow HederService web access from ${location}":
      proto  => tcp,
      dport  => $web_ports,
      source => $source_cidr,
      action => accept,
    }
  }

}
