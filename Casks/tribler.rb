cask 'tribler' do
  version '7.3.0'
  sha256 '97e7d22d9276ffdcb8f41e9a80395015b7594be2dddba76a589e81bfb4ca9fce'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
