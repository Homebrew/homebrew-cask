cask 'tidepool-uploader' do
  version '2.20.0'
  sha256 '37fd4fa915af3e0f6ba30cbab355a22b2aa4597c9e71bfe12b42936b3542994e'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
