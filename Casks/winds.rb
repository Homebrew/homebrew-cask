cask 'winds' do
  version '2.1.90'
  sha256 'ff4877c575bdd82e4003c58f6c01f924c54b0d74b735c7439619be8538a6cd43'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
