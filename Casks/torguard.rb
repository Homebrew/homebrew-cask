cask 'torguard' do
  version '0.3.53'
  sha256 'dea26a748d3ed25e389690539e79f15d6815c89d2dd7b20a80265ded45822847'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '0df2c241fd91173c70abe2fb8900c39b75e1fe19e91df5d4eba6c59e1c32f48b'
  name 'TorGuard'
  homepage 'https://torguard.net/'
  license :unknown

  app 'TorGuard.app'
end
