cask "veepn" do
  version "2.0.1"
  sha256 "6aa503a97f9520d6047159299cf4d97e56fcce68ca85deaf1ad9e14c48869a7c"

  url "https://download.veepn.com/mac/VeePN_v#{version}.dmg"
  appcast "https://download.veepn.com/mac/appcast.xml"
  name "VeePN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://veepn.com/vpn-apps/vpn-for-mac/"

  app "VeePN.app"

  uninstall launchctl: "com.veepn.macos.helper"
end
