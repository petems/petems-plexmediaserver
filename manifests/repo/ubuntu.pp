class plexmediaserver::repo::ubuntu {
  contain apt

  apt::source { 'plexmediaserver':
    location => 'https://downloads.plex.tv/repo/deb/',
    repos    => 'public main',
  }
}
