cask 'tribler' do
  version '7.1.2'
  sha256 'eb0d12302b29dc5a3dedcb74222dc38ea5c226badb0f08ef0976b35fc7d5f795'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
