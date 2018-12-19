cask 'winds' do
  version '3.1.4'
  sha256 'ebb116a2a3b7396eff1edfce7d69da31ea6f6d66efc04a98f6c260319eda2ba8'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-2.0-releases/releases/Winds-#{version}.dmg"
  appcast 'https://github.com/GetStream/Winds/releases.atom'
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'
end
