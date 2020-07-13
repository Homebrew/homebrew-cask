cask 'tidepool-uploader' do
  version '2.32.0'
  sha256 '3a0e946d5ff2a231c31dafcfa96df89c9a078dee68cf64c21237e6fe955cb1df'

  # github.com/tidepool-org/chrome-uploader/ was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
