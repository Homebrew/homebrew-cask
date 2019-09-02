cask 'tidepool-uploader' do
  version '2.19.0'
  sha256 '242f9d0cc7e5eecea1e54aca83e14e91e0518a9df4d46f75348346a4a63bae02'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
