cask 'winds' do
  version '3.1.11'
  sha256 'f99d4c0f1d85697078ab20cc88b11a556d0ecaba51966bf9c213ad194ef474b3'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-2.0-releases/releases/Winds-#{version}.dmg"
  appcast 'https://github.com/GetStream/Winds/releases.atom'
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
