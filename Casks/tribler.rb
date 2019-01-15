cask 'tribler' do
  version '7.1.5'
  sha256 '81f4cd57cd23736e9705da022adcf4582f84ec6e6b594a58a7543be310502c01'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/V#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
