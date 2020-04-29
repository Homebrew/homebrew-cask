cask 'tidepool-uploader' do
  version '2.29.0'
  sha256 '94aad9872b453684092db74ae308c5b6d1ebd7e061b4d65a2b6841bc10328941'

  # github.com/tidepool-org/chrome-uploader/ was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
