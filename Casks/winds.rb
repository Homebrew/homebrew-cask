cask 'winds' do
  version '2.1.84'
  sha256 '5c06e3059a2f72db1351102d8c6d7eb8ff5ccba9694c3fe485138f2803ad9494'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
