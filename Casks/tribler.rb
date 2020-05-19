cask 'tribler' do
  version '7.4.4'
  sha256 '79fec1f261135239f01fd0554892eb29862f69009c260fca99b2fbcfe5b58909'

  # github.com/Tribler/tribler/ was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
