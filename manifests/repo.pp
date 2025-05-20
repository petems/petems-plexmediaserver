# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include plexmediaserver::repo
class plexmediaserver::repo {
  case $facts['os']['family'] {
    'Debian': {
      case $facts['os']['operatingsystem'] {
        'Ubuntu': {
          require plexmediaserver::repo::ubuntu
        }
        'Debian': {
          require plexmediaserver::repo::debian
        }
        default: {
          # code
        }
      }
    }
    default: {
      # code
    }
  }
}
