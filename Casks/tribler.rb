cask 'tribler' do
  version '7.5.1'
  sha256 '3b4e5cb364309ffd99d0502bdb574e8d33ea70620f3abd918dd3e3f6ce705adb'

  # github.com/Tribler/tribler/ was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
