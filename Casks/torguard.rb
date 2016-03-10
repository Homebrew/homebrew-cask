cask 'torguard' do
  version '0.3.42'
  sha256 '5f0372eb758e3ee763cd80531379ee9db23340557093a7c3e4d4c927fb84ee7d'

  url "http://updates.torguard.biz/Software/MacOSX/TorGuard-v#{version}.dmg" # torguard.biz was verified as official when first introduced to the cask
  appcast 'http://updates.torguard.biz/Software/MacOSX/checksums.sha256', checkpoint: 'c9bff80592556fcac3378551cd64dfca09f5db0275ba04c91faf3f2a66d1ee1d'
  name 'TorGuard'
  homepage 'https://torguard.net'
  license :unknown

  app 'TorGuard.app'
end
