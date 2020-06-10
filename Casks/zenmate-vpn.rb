cask 'zenmate-vpn' do
  version '5.0.1.14'
  sha256 'a2eca4e6eeb7d0a3057bbd16bfdcfc3bed5d1125b02673e43589ab3e5a734db2'

  url "https://download.zenmate.com/mac/#{version.major}/zm_#{version}.dmg"
  appcast 'https://download.zenmate.com/mac/zenmate.xml'
  name 'ZenMate VPN'
  homepage 'https://zenmate.com/products/vpn-for-osx/'

  depends_on macos: '>= :sierra'

  app 'ZenMate VPN.app'
end
