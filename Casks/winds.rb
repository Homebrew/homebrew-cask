cask 'winds' do
  version '2.1.0'
  sha256 '8d25e427d258183be058aaada8baacec6e97ae73862eb485394596db9464aa6b'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast 'https://github.com/GetStream/Winds/releases.atom'
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
