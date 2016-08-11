cask 'torguard' do
  version '0.3.50'
  sha256 '79bc2ffb6bf04412429e3dff17c1eee82e35f11845298e06e9b90e5bf305e320'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '990152a87c456dac5141d16f607d21128c52079affb49aaecddcce516e42cf30'
  name 'TorGuard'
  homepage 'https://torguard.net/'
  license :unknown

  app 'TorGuard.app'
end
