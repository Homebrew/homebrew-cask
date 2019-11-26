cask 'tidepool-uploader' do
  version '2.23.0'
  sha256 '633e3285ad3f9081d84f410b334cdccf1354689e9ed1bc32272adfb24c1f7e50'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
