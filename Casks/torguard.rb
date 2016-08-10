cask 'torguard' do
  version '0.3.48'
  sha256 'eb141c3c55b0f109196b8a449de5f23bbe03ffd345ebc6770b0e9fd7b31eeac8'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '1bd7449dd8fae62cb0c1dc4d1c18bd34dbe798dc7a4af5b23aa3b836a6f47770'
  name 'TorGuard'
  homepage 'https://torguard.net/'
  license :unknown

  app 'TorGuard.app'
end
