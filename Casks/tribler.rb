cask 'tribler' do
  version '6.5.2'
  sha256 '16b89648e63f944beba94b4520b37bb1c83398cbd1e0739e371061626c46601c'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          checkpoint: 'f599e26616bc3226a163bb89ee956a46ffc91ed08c7928200df122fca1fb4f09'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
