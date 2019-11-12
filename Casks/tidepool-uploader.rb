cask 'tidepool-uploader' do
  version '2.22.2'
  sha256 '68ae56940376d0fb2e64e0bb5dde7a9fb913114e6b9d2e06d554bd0b10650969'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
