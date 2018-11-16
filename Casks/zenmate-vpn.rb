cask 'zenmate-vpn' do
  version '1.5.6'
  sha256 'f09a858bebdb6174a6449f2a5218e7f62ab47bb193c8b2783d27005c9c2667f7'

  # macos-update.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://macos-update.s3.amazonaws.com/ZenMate_OSX_VPN.dmg'
  appcast 'https://macos-update.s3.amazonaws.com/zenmate.xml'
  name 'ZenMate VPN'
  homepage 'https://zenmate.com/products/vpn-for-osx/'

  app 'ZenMate.app'
end
