cask "zenmate-vpn" do
  version "5.1.0.21"
  sha256 "aba2b4714517e55c852d21e217690de14e1b9b623e50a1e9516398f49978c85d"

  url "https://download.zenmate.com/mac/#{version.major}/zm_#{version}.dmg"
  appcast "https://download.zenmate.com/mac/zenmate.xml"
  name "ZenMate VPN"
  homepage "https://zenmate.com/products/vpn-for-osx/"

  depends_on macos: ">= :sierra"

  app "ZenMate VPN.app"
end
