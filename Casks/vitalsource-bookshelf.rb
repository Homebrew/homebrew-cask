cask 'vitalsource-bookshelf' do
  version '8.2.1.313'
  sha256 'f1f430cd242c20f6b7e5899ab3a09b63f5631b9e843f5b33bd0c3c3c675394dc'

  # rink.hockeyapp.net/api/2/apps/ was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ed52bc178e094f39a32f4aaa99ad71c2/app_versions/194?format=zip&avtoken=e335f2d288c8033e895eb9241733cce1281e8c51&download_origin=hockeyapp'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ed52bc178e094f39a32f4aaa99ad71c2'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :yosemite'

  app 'VitalSource Bookshelf.app'
end
