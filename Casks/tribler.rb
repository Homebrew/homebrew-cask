cask 'tribler' do
  version '7.2.1'
  sha256 '084ad702cb95f53dc8bb24e42f82dbade3b8b2f3e0c3e1d790944f2579058beb'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
