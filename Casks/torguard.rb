cask 'torguard' do
  version '0.3.54'
  sha256 '40af4c1ff05e1981c3bbc52efc5ae87dfa561770cc70c729d482dc8a1db60d0b'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '5eeb07d71d1faec9dce4f2cdcc5e8d3790c7c26554f16ab5400f44967b7d1ab6'
  name 'TorGuard'
  homepage 'https://torguard.net/'

  app 'TorGuard.app'
end
