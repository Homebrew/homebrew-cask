cask 'tidepool-uploader' do
  version '2.30.1'
  sha256 '6fb4dbadf0a42b3956a7d5adec90e35690eaa6437e1c157125b51ce6c5728b98'

  # github.com/tidepool-org/chrome-uploader/ was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
