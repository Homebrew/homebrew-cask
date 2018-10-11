cask 'tribler' do
  version '7.1.0'
  sha256 'd4551ddf95023e827f93d5408ca0fc959afe9c69c68dc15673cdd16934773b51'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
