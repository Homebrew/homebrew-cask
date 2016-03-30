cask 'torguard' do
  version '0.3.44'
  sha256 'c3bf8d7e18f5f02ebb3182a59b5378ee47e981a641627bca0146f8a182b4e343'

  # torguard.biz was verified as official when first introduced to the cask
  url "http://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'http://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: 'e7be5c13c0cca980b0ae1164f5e8a5ec932b261b822a63e840b20343a0b2b222'
  name 'TorGuard'
  homepage 'https://torguard.net'
  license :unknown

  app 'TorGuard.app'
end
