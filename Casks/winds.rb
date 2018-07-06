cask 'winds' do
  version '2.1.44'
  sha256 'e0ea243ac97b672ac732e8be3f0ac617ad094156cea21cd1c2e03e17394b6c23'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-#{version.major}.0-releases/releases/Winds-#{version}.dmg"
  appcast "https://s3.amazonaws.com/winds-#{version.major}.0-releases/latest.html"
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
