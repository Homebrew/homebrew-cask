cask 'tribler' do
  version '7.2.0'
  sha256 '6f65237a55c48313107675e9a570a3e73522a6d3a6adcf4bce8fbaad743c78ab'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
