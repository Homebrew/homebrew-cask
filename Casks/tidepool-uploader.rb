cask 'tidepool-uploader' do
  version '2.26.0'
  sha256 '7e0d82deb0ae5cdbd65cdc5f83c00c95c4ae6121aaaca3d5f5b84af93b42c719'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
