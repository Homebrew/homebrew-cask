cask 'tribler' do
  version '7.1.3'
  sha256 '49d0cbfc96e28f71fe413097ac834c8fbe581c46a89d6b677176bb7ab63b355d'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
