cask 'tidepool-uploader' do
  version '2.23.1'
  sha256 '54b8bdb44e2debd826ba15bd81cd471ceb1ae6bc656816fc2742189bd30370c7'

  # github.com/tidepool-org/chrome-uploader was verified as official when first introduced to the cask
  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/"
  appcast 'https://github.com/tidepool-org/chrome-uploader/releases.atom'
  name 'Tidepool Uploader'
  homepage 'https://tidepool.org/'

  app 'Tidepool Uploader.app'
end
