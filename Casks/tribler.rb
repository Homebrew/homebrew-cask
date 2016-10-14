cask 'tribler' do
  version '6.5.2'
  sha256 '16b89648e63f944beba94b4520b37bb1c83398cbd1e0739e371061626c46601c'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          checkpoint: 'b56dba965e57c2cd11ecf021983be4dd465285c44871d2bfc396036c33dfe6d8'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
