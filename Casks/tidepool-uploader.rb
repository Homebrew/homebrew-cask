cask 'tidepool-uploader' do
  version '2.25.0'
  sha256 '4e35fb04c8200609d9a60a56e675dd9b2f5e7a1e4c615d40f12878a05e95383f'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
