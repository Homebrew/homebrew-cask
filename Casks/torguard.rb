cask 'torguard' do
  version '0.3.55'
  sha256 'ff38d516eda250d9c46adeeadedd542c54d0036c4c9bfaf0b2655585311b178c'

  # torguard.biz was verified as official when first introduced to the cask
  url "https://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg"
  appcast 'https://updates.torguard.biz/Software/MacOSX/checksums.sha256',
          checkpoint: '4dd3ec96038024d3636eb111933bbf3ec4fad3e9ffaf645a6f1d21c8f0f6f09e'
  name 'TorGuard'
  homepage 'https://torguard.net/'

  app 'TorGuard.app'
end
