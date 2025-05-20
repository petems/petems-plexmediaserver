# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include plexmediaserver
class plexmediaserver {
  class { 'plexmediaserver::repo': }
  -> class { 'plexmediaserver::config': }
  ~> class { 'plexmediaserver::service': }
  -> Class['plexmediaserver']
}
