cask 'winds' do
  version '2.1.174'
  sha256 '53a316dc6a229b290eadc088376925d88f59777f73c8d153f74b282c8a41d906'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
