cask 'winds' do
  version '2.1.88'
  sha256 '68d5680bd2191f4c74a7cc4163bf13d9b1386f8711e2a1909c8a058b71639f12'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
