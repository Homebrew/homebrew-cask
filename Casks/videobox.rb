cask 'videobox' do
  version '4.2.3'
  sha256 'c4cb71213dc3819a5e5b85fb824172ddafecf2e281157efe234e5d2288a51808'

  # tastyapps.net was verified as official when first introduced to the cask
  url "http://www.tastyapps.net/downloads/videobox_#{version}.dmg"
  name 'Videobox'
  homepage 'https://www.tastyapps.com/videobox/'

  app 'Videobox.app'
end
