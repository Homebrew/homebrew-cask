cask 'tribler' do
  version '7.0.2'
  sha256 '72dd70c5b3d761141ae1a2f8745ab839b85aed4b9e4c66d65041a5334ffca741'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
