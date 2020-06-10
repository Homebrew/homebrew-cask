cask 'tidepool-uploader' do
  version '2.31.0'
  sha256 '535a9e087a5447061e12eb9913a98f507870e785a740eb52ba00f817331c0283'

  # github.com/tidepool-org/chrome-uploader/ was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
