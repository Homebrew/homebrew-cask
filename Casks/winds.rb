cask 'winds' do
  version '2.1.37'
  sha256 '486fb118de1f4b2703b914cfffda7fa8c5ecce8ee262e3e3dcbe4a558b24d97c'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
