cask 'zenmate-vpn' do
  version '5.0.0'
  sha256 'd438a68d570603fcef47100ba01bad253b821bb68dde89f5366bd1de9aed1a63'

  # macos-update.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://macos-update.s3.amazonaws.com/ZenMate_OSX_VPN.dmg'
  appcast 'https://macos-update.s3.amazonaws.com/zenmate.xml'
  name 'ZenMate VPN'
  homepage 'https://zenmate.com/products/vpn-for-osx/'

  depends_on macos: '>= :sierra'

  app 'ZenMate VPN.app'
end
