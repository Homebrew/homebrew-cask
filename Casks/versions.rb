class Versions < Cask
  url 'http://versionsapp.com/redirect/versionslatest'
  homepage 'http://versionsapp.com/'
  version 'latest'
  no_checksum
  link :app, 'Versions.app'
end
