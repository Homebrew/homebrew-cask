cask 'winds' do
  version '2.1.73'
  sha256 'cf2e65a880429a262718bc08830984f5b21d98dfe458ce9f56fe5085a9acd8a5'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
