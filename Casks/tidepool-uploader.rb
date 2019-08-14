cask 'tidepool-uploader' do
  version '2.18.0'
  sha256 'e1259f16790c1a8e099ccb445feb3c85f9486eb2679e5b7a4636ea1da1bd59c0'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
