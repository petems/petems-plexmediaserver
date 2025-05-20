class plexmediaserver::repo::debian {
  contain apt

  archive { '/tmp/PlexSign.key':
    source          => 'https://downloads.plex.tv/plex-keys/PlexSign.key',
    extract         => true,
    extract_path    => '/usr/share/keyrings/',
    extract_command => 'gpg --dearmor < %s > plexmediaserver.gpg',
    creates         => '/usr/share/keyrings/plexmediaserver.gpg',
  } ~> apt::source { 'plexmediaserver':
    location => 'https://downloads.plex.tv/repo/deb/',
    release  => 'public',
    keyring  => '/usr/share/keyrings/plexmediaserver.gpg',
  }
}
