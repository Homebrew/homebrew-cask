cask 'vitalsource-bookshelf' do
  version '8.1.0.123'
  sha256 '84d8b5267e1958e6616c71d38e9cc8827ecb631b5dcd6a9ea6cea26c22366b1d'

  # rink.hockeyapp.net/api/2/apps/ was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ed52bc178e094f39a32f4aaa99ad71c2/app_versions/131?format=zip&avtoken=1c7f6e35a15e65024402ca279014534329cbbc31&download_origin=hockeyapp'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ed52bc178e094f39a32f4aaa99ad71c2'
  name 'VitalSource Bookshelf'
  homepage 'https://www.vitalsource.com/bookshelf-features'

  depends_on macos: '>= :yosemite'

  app 'VitalSource Bookshelf.app'
end
