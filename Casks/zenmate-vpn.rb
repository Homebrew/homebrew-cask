cask 'zenmate-vpn' do
  version :latest
  sha256 :no_check

  # macos-update.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://macos-update.s3.amazonaws.com/ZenMate_OSX_VPN.dmg'
  name 'ZenMate VPN'
  homepage 'https://zenmate.com/products/vpn-for-osx/'

  app 'ZenMate.app'
end
