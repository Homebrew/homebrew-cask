cask 'tribler' do
  version '7.3.1'
  sha256 '73fb80b1a1855bfed680be9d8415b91fa6a3e6dab4f37d1b298410e68a55cee9'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
